namespace HastaneKullanıcıPaneli
{
    partial class DoktorListesi
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Txt_DoktorAdSoyad = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.Label2 = new System.Windows.Forms.Label();
            this.Cb_DoktorPoliklinik = new System.Windows.Forms.ComboBox();
            this.Txt_DoktorYas = new System.Windows.Forms.TextBox();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.Cb_DoktorCinsiyet = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Btn_DoktorGüncelle = new System.Windows.Forms.Button();
            this.Btn_DoktorSil = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // Txt_DoktorAdSoyad
            // 
            this.Txt_DoktorAdSoyad.BackColor = System.Drawing.SystemColors.Window;
            this.Txt_DoktorAdSoyad.Location = new System.Drawing.Point(120, 6);
            this.Txt_DoktorAdSoyad.Name = "Txt_DoktorAdSoyad";
            this.Txt_DoktorAdSoyad.Size = new System.Drawing.Size(148, 20);
            this.Txt_DoktorAdSoyad.TabIndex = 1;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 101);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(33, 13);
            this.label5.TabIndex = 507;
            this.label5.Text = "Yaşı :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 39);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 13);
            this.label3.TabIndex = 505;
            this.label3.Text = "Poliklinik Adı :";
            // 
            // Label2
            // 
            this.Label2.AutoSize = true;
            this.Label2.Location = new System.Drawing.Point(12, 9);
            this.Label2.Name = "Label2";
            this.Label2.Size = new System.Drawing.Size(98, 13);
            this.Label2.TabIndex = 504;
            this.Label2.Text = "Doktor Adı Soyadı :";
            // 
            // Cb_DoktorPoliklinik
            // 
            this.Cb_DoktorPoliklinik.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.Cb_DoktorPoliklinik.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.Cb_DoktorPoliklinik.FormattingEnabled = true;
            this.Cb_DoktorPoliklinik.Location = new System.Drawing.Point(120, 36);
            this.Cb_DoktorPoliklinik.Name = "Cb_DoktorPoliklinik";
            this.Cb_DoktorPoliklinik.Size = new System.Drawing.Size(148, 21);
            this.Cb_DoktorPoliklinik.TabIndex = 2;
            // 
            // Txt_DoktorYas
            // 
            this.Txt_DoktorYas.Location = new System.Drawing.Point(120, 98);
            this.Txt_DoktorYas.Name = "Txt_DoktorYas";
            this.Txt_DoktorYas.Size = new System.Drawing.Size(148, 20);
            this.Txt_DoktorYas.TabIndex = 3;
            // 
            // dataGridView2
            // 
            this.dataGridView2.BackgroundColor = System.Drawing.SystemColors.ActiveCaption;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Location = new System.Drawing.Point(296, 6);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(471, 343);
            this.dataGridView2.TabIndex = 8;
            this.dataGridView2.CurrentCellChanged += new System.EventHandler(this.dataGridView2_CurrentCellChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(15, 137);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "Doktor Ekle";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Cb_DoktorCinsiyet
            // 
            this.Cb_DoktorCinsiyet.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.Cb_DoktorCinsiyet.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.Cb_DoktorCinsiyet.FormattingEnabled = true;
            this.Cb_DoktorCinsiyet.Location = new System.Drawing.Point(120, 67);
            this.Cb_DoktorCinsiyet.Name = "Cb_DoktorCinsiyet";
            this.Cb_DoktorCinsiyet.Size = new System.Drawing.Size(148, 21);
            this.Cb_DoktorCinsiyet.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(51, 13);
            this.label1.TabIndex = 513;
            this.label1.Text = "Cinsiyeti :";
            // 
            // Btn_DoktorGüncelle
            // 
            this.Btn_DoktorGüncelle.Location = new System.Drawing.Point(110, 137);
            this.Btn_DoktorGüncelle.Name = "Btn_DoktorGüncelle";
            this.Btn_DoktorGüncelle.Size = new System.Drawing.Size(75, 23);
            this.Btn_DoktorGüncelle.TabIndex = 6;
            this.Btn_DoktorGüncelle.Text = "Güncelle";
            this.Btn_DoktorGüncelle.UseVisualStyleBackColor = true;
            this.Btn_DoktorGüncelle.Click += new System.EventHandler(this.Btn_DoktorGüncelle_Click);
            // 
            // Btn_DoktorSil
            // 
            this.Btn_DoktorSil.Location = new System.Drawing.Point(205, 137);
            this.Btn_DoktorSil.Name = "Btn_DoktorSil";
            this.Btn_DoktorSil.Size = new System.Drawing.Size(75, 23);
            this.Btn_DoktorSil.TabIndex = 7;
            this.Btn_DoktorSil.Text = "Sil";
            this.Btn_DoktorSil.UseVisualStyleBackColor = true;
            this.Btn_DoktorSil.Click += new System.EventHandler(this.Btn_DoktorSil_Click);
            // 
            // DoktorListesi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleTurquoise;
            this.ClientSize = new System.Drawing.Size(779, 361);
            this.Controls.Add(this.Btn_DoktorSil);
            this.Controls.Add(this.Btn_DoktorGüncelle);
            this.Controls.Add(this.Cb_DoktorCinsiyet);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.Txt_DoktorYas);
            this.Controls.Add(this.Cb_DoktorPoliklinik);
            this.Controls.Add(this.Txt_DoktorAdSoyad);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.Label2);
            this.Name = "DoktorListesi";
            this.Text = "Doktor Listesi";
            this.Load += new System.EventHandler(this.DoktorListesi_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox Txt_DoktorAdSoyad;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label Label2;
        private System.Windows.Forms.ComboBox Cb_DoktorPoliklinik;
        private System.Windows.Forms.TextBox Txt_DoktorYas;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ComboBox Cb_DoktorCinsiyet;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button Btn_DoktorGüncelle;
        private System.Windows.Forms.Button Btn_DoktorSil;
    }
}