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
    public partial class KullaniciGirisi : Form
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-U9BETL7\\SQLEXPRESS; Initial Catalog=HastaneVeriTabani; User Id=sa; password=123456;");

        public KullaniciGirisi()
        {
            InitializeComponent();
        }

        private void Btn_Giris_Click(object sender, EventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Kullanici where KullaniciAdi='" + Txt_KullaniciAdi.Text + "' and KullaniciSifre='" + Txt_Sifre.Text + "'",baglanti);
            DataTable tbl = new DataTable();
            sda.Fill(tbl);
            if (tbl.Rows[0][0].ToString() == "1")
            {
                this.Hide();
                HastaKayit hk = new HastaKayit();
                hk.Show();
            }
            else
            {
                MessageBox.Show("Kullanıcı Adı yada Şifre Hatalı!");
                Txt_KullaniciAdi.Text = "";
                Txt_Sifre.Text = "";
            }
        }

        private void Btn_KullaniciEkle_Click(object sender, EventArgs e)
        {
            KullaniciKayit k = new KullaniciKayit();
            k.Show();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void Txt_KullaniciAdi_TextChanged(object sender, EventArgs e)
        {

        }

        private void Txt_Sifre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

