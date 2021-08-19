using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace HastaneKullanıcıPaneli
{
    public partial class KullaniciKayit : Form
    {

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-U9BETL7\\SQLEXPRESS; Initial Catalog=HastaneVeriTabani; User Id=sa; password=123456;");

        public KullaniciKayit()
        {
            InitializeComponent();
        }

        private void KullaniciKayit_Load(object sender, EventArgs e)
        {

        }

        private void Btn_KullaniciKayit_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Kullanici where KullaniciAdi='" + Txt_KullaniciAdi.Text + "'", baglanti);
            DataTable tbl = new DataTable();
            sda.Fill(tbl);
            if (Txt_Sifre.Text == Txt_SifreTekrar.Text && Txt_OnayKodu.Text == "onayla" && tbl.Rows[0][0].ToString() != "1" && Txt_KullaniciAdi.Text != "" && Txt_Sifre.Text != "")
            {
                SqlCommand kmt = new SqlCommand("Insert into Kullanici VALUES  ('" + Txt_KullaniciAdi.Text + "','" + Txt_Sifre.Text + "')", baglanti);
                kmt.ExecuteNonQuery();
                MessageBox.Show("Kayıt Başarılı!");
                this.Hide();
            }
            else if (tbl.Rows[0][0].ToString() == "1")
            {
                MessageBox.Show("Bu Kullanıcı İsmi Sistemde Kayıtlı!");
                Txt_KullaniciAdi.Text = "";
            }
            else if (Txt_Sifre.Text != Txt_SifreTekrar.Text)
            {
                MessageBox.Show("Şifreler Aynı Olmalı!");
                Txt_Sifre.Text = "";
                Txt_SifreTekrar.Text = "";
            }
            else if (Txt_OnayKodu.Text != "onayla")
            {
                MessageBox.Show("Onay Kodu Yanlış!");
                Txt_OnayKodu.Text = "";
            }
            else if (Txt_KullaniciAdi.Text == "")
            {
                MessageBox.Show("Lütfen Kullanıcı Adı Giriniz!");
            }
            else if (Txt_Sifre.Text == "" && Txt_SifreTekrar.Text == "")
            {
                MessageBox.Show("Lütfen Şifre Giriniz!");
            }
            baglanti.Close();
        }
    }
}
