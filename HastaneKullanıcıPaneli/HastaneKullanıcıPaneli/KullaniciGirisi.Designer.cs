namespace HastaneKullanıcıPaneli
{
    partial class KullaniciGirisi
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
            this.Txt_KullaniciAdi = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Btn_Giris = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.Txt_Sifre = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.Btn_KullaniciEkle = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Txt_KullaniciAdi
            // 
            this.Txt_KullaniciAdi.Location = new System.Drawing.Point(134, 128);
            this.Txt_KullaniciAdi.Name = "Txt_KullaniciAdi";
            this.Txt_KullaniciAdi.Size = new System.Drawing.Size(100, 20);
            this.Txt_KullaniciAdi.TabIndex = 1;
            this.Txt_KullaniciAdi.Text = "admin";
            this.Txt_KullaniciAdi.TextChanged += new System.EventHandler(this.Txt_KullaniciAdi_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(58, 131);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Kullanıcı Adı :";
            // 
            // Btn_Giris
            // 
            this.Btn_Giris.Location = new System.Drawing.Point(61, 207);
            this.Btn_Giris.Name = "Btn_Giris";
            this.Btn_Giris.Size = new System.Drawing.Size(75, 23);
            this.Btn_Giris.TabIndex = 3;
            this.Btn_Giris.Text = "Giriş";
            this.Btn_Giris.UseVisualStyleBackColor = true;
            this.Btn_Giris.Click += new System.EventHandler(this.Btn_Giris_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(58, 167);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Şifre :";
            // 
            // Txt_Sifre
            // 
            this.Txt_Sifre.Location = new System.Drawing.Point(134, 164);
            this.Txt_Sifre.Name = "Txt_Sifre";
            this.Txt_Sifre.Size = new System.Drawing.Size(100, 20);
            this.Txt_Sifre.TabIndex = 2;
            this.Txt_Sifre.Text = "123456";
            this.Txt_Sifre.UseSystemPasswordChar = true;
            this.Txt_Sifre.TextChanged += new System.EventHandler(this.Txt_Sifre_TextChanged);
            // 
            // label3
            // 
            this.label3.Cursor = System.Windows.Forms.Cursors.Default;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F);
            this.label3.Location = new System.Drawing.Point(-1, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(285, 81);
            this.label3.TabIndex = 5;
            this.label3.Text = "Samsun Devlet Hastanesi ";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // Btn_KullaniciEkle
            // 
            this.Btn_KullaniciEkle.Location = new System.Drawing.Point(153, 207);
            this.Btn_KullaniciEkle.Name = "Btn_KullaniciEkle";
            this.Btn_KullaniciEkle.Size = new System.Drawing.Size(81, 23);
            this.Btn_KullaniciEkle.TabIndex = 4;
            this.Btn_KullaniciEkle.Text = "Yeni Kullanıcı";
            this.Btn_KullaniciEkle.UseVisualStyleBackColor = true;
            this.Btn_KullaniciEkle.Click += new System.EventHandler(this.Btn_KullaniciEkle_Click);
            // 
            // KullaniciGirisi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleTurquoise;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.Btn_KullaniciEkle);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Txt_Sifre);
            this.Controls.Add(this.Btn_Giris);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Txt_KullaniciAdi);
            this.Name = "KullaniciGirisi";
            this.Text = "Kullanıcı Girişi";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox Txt_KullaniciAdi;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button Btn_Giris;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox Txt_Sifre;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button Btn_KullaniciEkle;
    }
}

