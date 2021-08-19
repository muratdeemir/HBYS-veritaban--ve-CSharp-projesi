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
    public partial class DoktorListesi : Form
    {

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-U9BETL7\\SQLEXPRESS; Initial Catalog=HastaneVeriTabani; User Id=sa; password=123456;");

        public DoktorListesi()
        {
            InitializeComponent();
            DatagridYenile();
        }

        protected void DatagridYenile()
        {
            baglanti.Open();
            DataTable tbl = new DataTable();
            SqlDataAdapter adptr = new SqlDataAdapter("Select DoktorAdSoyad,PoliklinikAdi,DoktorCinsiyet,DoktorYas from Doktor ", baglanti);
            adptr.Fill(tbl);
            baglanti.Close();
            dataGridView2.DataSource = tbl;
        }

        private void DoktorListesi_Load(object sender, EventArgs e)
        {
            Cb_DoktorCinsiyet.Items.Add("Erkek");
            Cb_DoktorCinsiyet.Items.Add("Kız");

            baglanti.Open();
            DataTable tbl2 = new DataTable();
            SqlDataAdapter adptr2 = new SqlDataAdapter("Select PoliklinikAdi from Poliklinik ", baglanti);
            adptr2.Fill(tbl2);
            for (int i = 0; i < 18; i++)
            {
                Cb_DoktorPoliklinik.Items.Add(tbl2.Rows[i][0].ToString());
            }
            baglanti.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Txt_DoktorAdSoyad.Text == "")
            {
                MessageBox.Show("Doktor Ad Soyadını Giriniz!");
            }
            else if (Cb_DoktorPoliklinik.Text == "")
            {
                MessageBox.Show("Polikliniği Giriniz!");
            }
            else if (Cb_DoktorCinsiyet.Text == "")
            {
                MessageBox.Show("Doktor Cinsiyetini Giriniz!");
            }
            else if (Txt_DoktorYas.Text == "")
            {
                MessageBox.Show("Doktor Yaşını Giriniz!");
            }
            else
            {
                baglanti.Open();
                SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Doktor where DoktorAdSoyad='" + Txt_DoktorAdSoyad.Text + "'", baglanti);
                DataTable tbl = new DataTable();
                sda.Fill(tbl);
                if (tbl.Rows[0][0].ToString() == "0")
                {
                    SqlCommand kmt1 = new SqlCommand("Insert into  Doktor VALUES  ('" + Txt_DoktorAdSoyad.Text + "','" + Cb_DoktorPoliklinik.Text + "','" + Cb_DoktorCinsiyet.Text + "','" + Txt_DoktorYas.Text + "')", baglanti);
                    kmt1.ExecuteNonQuery();
                    MessageBox.Show("Kayıt Başarılı!");
                    baglanti.Close();
                    DatagridYenile();
                    Txt_DoktorAdSoyad.Text = "";
                    Cb_DoktorPoliklinik.Text = "";
                    Cb_DoktorCinsiyet.Text = "";
                    Txt_DoktorYas.Text = "";
                }
                else
                {
                    MessageBox.Show("Bu İsimde Kayıtlı Bir Doktor Var. Yeni Kayıt Yapılamaz!");
                    baglanti.Close();
                }
                
            }
        }

        private void Btn_DoktorSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand kmt = new SqlCommand("DELETE  Doktor where DoktorAdSoyad='" + dataGridView2.CurrentRow.Cells["DoktorAdSoyad"].Value.ToString() + "'", baglanti);
            kmt.ExecuteNonQuery();
            baglanti.Close();
            DatagridYenile();
        }

        private void Btn_DoktorGüncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand kmt1 = new SqlCommand("update  Doktor set DoktorAdSoyad='" + Txt_DoktorAdSoyad.Text + "' , PoliklinikAdi='" + Cb_DoktorPoliklinik.Text + "' , DoktorCinsiyet='" + Cb_DoktorCinsiyet.Text + "' , DoktorYas='" + Txt_DoktorYas.Text + "' where DoktorAdSoyad='" + dataGridView2.CurrentRow.Cells["DoktorAdSoyad"].Value.ToString() + "'", baglanti);
            kmt1.ExecuteNonQuery();
            MessageBox.Show("Güncelleme Başarılı!");
            baglanti.Close();
            DatagridYenile();
            Txt_DoktorAdSoyad.Text = "";
            Cb_DoktorPoliklinik.Text = "";
            Cb_DoktorCinsiyet.Text = "";
            Txt_DoktorYas.Text = "";
        }

        private void dataGridView2_CurrentCellChanged(object sender, EventArgs e)
        {
            try
            {
                Txt_DoktorAdSoyad.Text = dataGridView2.Rows[dataGridView2.CurrentRow.Index].Cells["DoktorAdSoyad"].Value.ToString();
                Cb_DoktorPoliklinik.Text = dataGridView2.Rows[dataGridView2.CurrentRow.Index].Cells["PoliklinikAdi"].Value.ToString();
                Cb_DoktorCinsiyet.Text = dataGridView2.Rows[dataGridView2.CurrentRow.Index].Cells["DoktorCinsiyet"].Value.ToString();
                Txt_DoktorYas.Text = dataGridView2.Rows[dataGridView2.CurrentRow.Index].Cells["DoktorYas"].Value.ToString();
            }
            catch
            {

            }

        }
    }
}