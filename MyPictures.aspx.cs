using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using renk = System.Drawing.Color;

public partial class MyPictures : Page
{

    private readonly SortedDictionary<int, string> images = new SortedDictionary<int, string>();
    private readonly SortedDictionary<int, string> imageTexts = new SortedDictionary<int, string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        // Resimlerin url'leri
        images.Add(0, null);
        images.Add(1, "~/images/antalya.jpg");
        images.Add(2, "~/images/aspendos.jpg");
        images.Add(3, "~/images/bursa.jpg");
        images.Add(4, "~/images/mardin.jpg");
        images.Add(5, "~/images/muttalip.jpg");
        // Resimlerin altına yazılacak açıklamalar
        imageTexts.Add(0, "");
        imageTexts.Add(1, "antalya");
        imageTexts.Add(2, "aspendos");
        imageTexts.Add(3, "bursa");
        imageTexts.Add(4, "mardin");
        imageTexts.Add(5, "muttalip");
    }

    protected void cmbImages_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Seçilen resmin 'value' değerini elde et
        int index = cmbImages.SelectedItem.Value.ToInt();
        // Sözlükten url karşılığını bul ve resmi değiştir
        img.ImageUrl = images[index];
        // Sözlükten karşılığını bul ve resim açıklamasını değiştir
        lblImage.Text = imageTexts[index];
        // İlk seçenek dışında bir eleman seçilmişse,
        // kenarlık ekleme checkbox'ını göster
        pnl1.Visible = cmbImages.SelectedIndex > 0;
    }

    protected void chk1_CheckedChanged(object sender, EventArgs e)
    {
        // Kenarlık ekleme checkbox'ı seçilmişse,
        // kenarlık eklemeyle ilgili kontrolleri göster
        pnl2.Visible = chk1.Checked;
        if (chk1.Checked)
        {
            ApplyBorder();
        }
        else
        {
            ClearBorder();
        }
    }

    private void ClearBorder()
    {
        // Kenarlığı kaldır
        img.BorderWidth = Unit.Pixel(0);
    }

    private void ApplyBorder()
    {
        // Kenarlık rengini ve kalınlığını ayarla
        img.BorderColor = renk.FromName(rbList.SelectedItem.Value);
        img.BorderWidth = Unit.Pixel(cmbWidth.SelectedItem.Value.ToInt());
    }

    protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
    {
        ApplyBorder();
    }

    protected void cmbWidth_SelectedIndexChanged(object sender, EventArgs e)
    {
        ApplyBorder();
    }

}

public static class ExtensionMethods
{

    // Genişletme metodu.
    // String değerleri otomatik olarak int'e dönüştürmek için
    public static int ToInt(this string text)
    {
        int result;
        int.TryParse(text, out result);
        return result;
    }

}