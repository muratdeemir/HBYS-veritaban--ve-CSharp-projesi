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
    public partial class HastaKayit : Form
    {

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-U9BETL7\\SQLEXPRESS; Initial Catalog=HastaneVeriTabani; User Id=sa; password=123456;");

        public HastaKayit()
        {
            InitializeComponent();
            DatagridYenile();
        }

        public void DoktorYenile()
        {
            Cb_DoktorAra.Items.Clear();
            baglanti.Open();
            DataTable tbl3 = new DataTable();
            SqlDataAdapter adptr3 = new SqlDataAdapter("Select DoktorAdSoyad from Doktor ", baglanti);
            adptr3.Fill(tbl3);
            int toplam1 = tbl3.Rows.Count;
            for (int i = 0; i < toplam1; i++)
            {
                Cb_DoktorAra.Items.Add(tbl3.Rows[i][0].ToString());
            }

            baglanti.Close();
        }

        protected void DatagridYenile()
        {
            baglanti.Open();
            
            DataTable tbl = new DataTable();
            SqlDataAdapter adptr = new SqlDataAdapter("Select Hastaid,HastaTc,HastaAd,HastaSoyad,HastaDogumTarihi,HastaYas,BabaAdi,AnaAdi,HastaCepTel,HastaAdres,HastaCinsiyet,Meslek,SigortaTuru,PoliklinikAdi,DoktorAdSoyad from Hasta ", baglanti);
            adptr.Fill(tbl);
            baglanti.Close();
            dataGridView1.DataSource = tbl;
        }

        private void Btn_Kaydet_Click(object sender, EventArgs e)
        {
            if (Txt_Tc.Text == "")
            {
                MessageBox.Show("Tc Kimlik No Giriniz!");
            }
            else if (Txt_Ad.Text == "")
            {
                MessageBox.Show("Ad Giriniz!");
            }
            else if (Txt_Soyad.Text == "")
            {
                MessageBox.Show("Soyad Giriniz!");
            }
            else
            {
                baglanti.Open();
                SqlCommand kmt = new SqlCommand("Insert into  Hasta VALUES  ('" + Txt_Tc.Text + "','" + Txt_Ad.Text + "','" + Txt_Soyad.Text + "','" + dateTimePicker1.Text + "','" + Txt_Yas.Text + "','" + Txt_BabaAdi.Text + "','" + Txt_AnaAdi.Text + "','" + Txt_CepTel.Text + "','" + Txt_Adresi.Text + "','" + Cb_Cinsiyet.Text + "','" + Txt_Meslek.Text + "','" + Cb_Sigorta.Text + "','" + Cb_Poliklinik.Text + "','" + Cb_Doktor.Text + "')", baglanti);
                kmt.ExecuteNonQuery();
                MessageBox.Show("Kayıt Başarılı!");
                baglanti.Close();
                DatagridYenile();
                Txt_Ad.Text = "";
                Txt_Adresi.Text = "";
                Txt_AnaAdi.Text = "";
                Txt_BabaAdi.Text = "";
                Txt_CepTel.Text = "0";
                Txt_Meslek.Text = "";
                Txt_Soyad.Text = "";
                Txt_Tc.Text = "";
                Txt_Yas.Text = "";
                Cb_Cinsiyet.Text = "";
                Cb_Poliklinik.Text = "Belirtilmedi";
                Cb_Doktor.Text = "Belirtilmedi";
                Cb_Sigorta.Text = "Belirtilmedi";
            }

            DoktorYenile();

        }

        private void HastaKayit_Load(object sender, EventArgs e)
        {
            Cb_Cinsiyet.Items.Add("Erkek");
            Cb_Cinsiyet.Items.Add("Kız");
            baglanti.Open();

            DataTable tbl = new DataTable();
            SqlDataAdapter adptr = new SqlDataAdapter("Select SigortaTuru from Sigorta ", baglanti);
            adptr.Fill(tbl);
            for (int i = 0; i < 6; i++)
            {
                Cb_Sigorta.Items.Add(tbl.Rows[i][0].ToString());
            }

            DataTable tbl1 = new DataTable();
            SqlDataAdapter adptr1 = new SqlDataAdapter("Select PoliklinikAdi from Poliklinik ", baglanti);
            adptr1.Fill(tbl1);
            for (int i = 0; i < 18; i++)
            {
                Cb_Poliklinik.Items.Add(tbl1.Rows[i][0].ToString());
            }

            DataTable tbl2 = new DataTable();
            SqlDataAdapter adptr2 = new SqlDataAdapter("Select PoliklinikAdi from Poliklinik ", baglanti);
            adptr2.Fill(tbl2);
            for (int i = 0; i < 18; i++)
            {
                Cb_PoliklinikAra.Items.Add(tbl2.Rows[i][0].ToString());
            }

            DataTable tbl3 = new DataTable();
            SqlDataAdapter adptr3 = new SqlDataAdapter("Select DoktorAdSoyad from Doktor ", baglanti);
            adptr3.Fill(tbl3);
            int toplam1 = tbl3.Rows.Count;
            for (int i = 0; i < toplam1; i++)
            {
                Cb_DoktorAra.Items.Add(tbl3.Rows[i][0].ToString());
            }

            baglanti.Close();
        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
        }

        private void Cb_Doktor_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void Cb_Poliklinik_SelectedIndexChanged(object sender, EventArgs e)
        {
            Cb_Doktor.Items.Clear();
            baglanti.Open();
            string secim = Cb_Poliklinik.SelectedItem.ToString();

            DataTable tbl4 = new DataTable();
            SqlDataAdapter adptr4 = new SqlDataAdapter("Select DoktorAdSoyad from Doktor where PoliklinikAdi='" + secim + "'", baglanti);
            adptr4.Fill(tbl4);
            int toplam = tbl4.Rows.Count;
            for (int i = 0; i < toplam; i++)
            {
                Cb_Doktor.Items.Add(tbl4.Rows[i][0].ToString());
            }

            baglanti.Close();
        }

        private void Btn_Ara_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Hasta where HastaTc='" + Txt_TcAra.Text + "'", baglanti);
            DataTable tbl5 = new DataTable();
            sda.Fill(tbl5);
            baglanti.Close();
            dataGridView1.DataSource = tbl5;
            if (Txt_TcAra.Text == "")
            {
                DatagridYenile();
            }
        }

        private void Btn_Temizle_Click(object sender, EventArgs e)
        {
            Txt_Ad.Text = "";
            Txt_Adresi.Text = "";
            Txt_AnaAdi.Text = "";
            Txt_BabaAdi.Text = "";
            Txt_CepTel.Text = "0";
            Txt_Meslek.Text = "";
            Txt_Soyad.Text = "";
            Txt_Tc.Text = "";
            Txt_Yas.Text = "";
            Cb_Cinsiyet.Text = "";
            Cb_Doktor.Text = "Belirtilmedi";
            Cb_Poliklinik.Text = "Belirtilmedi";
            Cb_Sigorta.Text = "Belirtilmedi";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
             
        }

        private void Btn_DoktorListesi_Click(object sender, EventArgs e)
        {
            DoktorListesi d = new DoktorListesi();
            d.Show();
        }

        private void Cb_DoktorAra_SelectedIndexChanged(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Hasta where DoktorAdSoyad LIKE '" + Cb_DoktorAra.Text + "%'", baglanti);
            DataTable tbl5 = new DataTable();
            sda.Fill(tbl5);
            baglanti.Close();
            dataGridView1.DataSource = tbl5;
        }

        private void dataGridView1_CurrentCellChanged(object sender, EventArgs e)
        {
            try
            {
                Txt_Tc.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaTc"].Value.ToString();
                Txt_Ad.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaAd"].Value.ToString();
                Txt_Soyad.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaSoyad"].Value.ToString();
                dateTimePicker1.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaDogumTarihi"].Value.ToString();
                Txt_Yas.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaYas"].Value.ToString();
                Txt_BabaAdi.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["BabaAdi"].Value.ToString();
                Txt_AnaAdi.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["AnaAdi"].Value.ToString();
                Txt_CepTel.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaCepTel"].Value.ToString();
                Txt_Adresi.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaAdres"].Value.ToString();
                Cb_Cinsiyet.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["HastaCinsiyet"].Value.ToString();
                Txt_Meslek.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["Meslek"].Value.ToString();
                Cb_Sigorta.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["SigortaTuru"].Value.ToString();
                Cb_Poliklinik.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["PoliklinikAdi"].Value.ToString();
                Cb_Doktor.Text = dataGridView1.Rows[dataGridView1.CurrentRow.Index].Cells["DoktorAdSoyad"].Value.ToString();
            }
            catch
            {

            }
        }

        private void hastaSay_Click(object sender, EventArgs e)
        {
            String sayi2 = "3";
            int sayi;
            baglanti.Open();
            String hastasay = "SELECT COUNT(Hastaid) FROM Hasta ";
            SqlCommand komut = new SqlCommand(hastasay, baglanti);
            komut.Parameters.AddWithValue("@Hastaid", sayi2);
            SqlDataReader reader = komut.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read() == true)
                {
                    sayi = Convert.ToInt32(reader[0]);
                    MessageBox.Show("Hasta Sayısı: " + sayi);

                }

            }
            else
            {
                MessageBox.Show("0");
            }

            baglanti.Close();
        }

        private void hastaSirala_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            DataTable tbl = new DataTable();
            SqlDataAdapter adptr = new SqlDataAdapter("SELECT * FROM Hasta ORDER BY HastaYas DESC ", baglanti);
            adptr.Fill(tbl);
            baglanti.Close();
            dataGridView1.DataSource = tbl;
        }

        private void randevuGoster_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            DataTable tbl = new DataTable();
            SqlDataAdapter adptr = new SqlDataAdapter("SELECT h.HastaAd,h.HastaSoyad,d.DoktorAdSoyad,p.PoliklinikAdi FROM Hasta h INNER JOIN Poliklinik p ON h.PoliklinikAdi = p.PoliklinikAdi INNER JOIN Doktor d ON h.DoktorAdSoyad = d.DoktorAdSoyad", baglanti);
            adptr.Fill(tbl);
            baglanti.Close();
            dataGridView1.DataSource = tbl;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = 0;
            DatagridYenile();
        }

        private void Txt_TcAra_TextChanged(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Hasta where HastaTc LIKE '" + Txt_TcAra.Text + "%'", baglanti);
            DataTable tbl5 = new DataTable();
            sda.Fill(tbl5);
            baglanti.Close();
            dataGridView1.DataSource = tbl5;
        }

        private void Cb_PoliklinikAra_SelectedIndexChanged(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Hasta where PoliklinikAdi LIKE '" + Cb_PoliklinikAra.Text + "%'", baglanti);
            DataTable tbl5 = new DataTable();
            sda.Fill(tbl5);
            baglanti.Close();
            dataGridView1.DataSource = tbl5;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            baglanti.Open();
            DataTable tbl = new DataTable();
            SqlDataAdapter adptr = new SqlDataAdapter("SELECT * FROM Hasta ORDER BY HastaAd", baglanti);
            adptr.Fill(tbl);
            baglanti.Close();
            dataGridView1.DataSource = tbl;
        }

        private void HastaKayit_FormClosing(object sender, FormClosingEventArgs e)
        {

        }
    }
}
