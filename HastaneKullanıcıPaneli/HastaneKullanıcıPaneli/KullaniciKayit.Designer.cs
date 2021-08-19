namespace HastaneKullanıcıPaneli
{
    partial class KullaniciKayit
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
            this.label2 = new System.Windows.Forms.Label();
            this.Txt_Sifre = new System.Windows.Forms.TextBox();
            this.Btn_KullaniciKayit = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.Txt_KullaniciAdi = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.Txt_SifreTekrar = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.Txt_OnayKodu = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 56);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Şifre :";
            // 
            // Txt_Sifre
            // 
            this.Txt_Sifre.Location = new System.Drawing.Point(95, 53);
            this.Txt_Sifre.Name = "Txt_Sifre";
            this.Txt_Sifre.Size = new System.Drawing.Size(100, 20);
            this.Txt_Sifre.TabIndex = 2;
            this.Txt_Sifre.UseSystemPasswordChar = true;
            // 
            // Btn_KullaniciKayit
            // 
            this.Btn_KullaniciKayit.Location = new System.Drawing.Point(68, 170);
            this.Btn_KullaniciKayit.Name = "Btn_KullaniciKayit";
            this.Btn_KullaniciKayit.Size = new System.Drawing.Size(75, 23);
            this.Btn_KullaniciKayit.TabIndex = 5;
            this.Btn_KullaniciKayit.Text = "Kayıt";
            this.Btn_KullaniciKayit.UseVisualStyleBackColor = true;
            this.Btn_KullaniciKayit.Click += new System.EventHandler(this.Btn_KullaniciKayit_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "Kullanıcı Adı :";
            // 
            // Txt_KullaniciAdi
            // 
            this.Txt_KullaniciAdi.Location = new System.Drawing.Point(95, 27);
            this.Txt_KullaniciAdi.Name = "Txt_KullaniciAdi";
            this.Txt_KullaniciAdi.Size = new System.Drawing.Size(100, 20);
            this.Txt_KullaniciAdi.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 82);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "Şifre (Tekrar) :";
            // 
            // Txt_SifreTekrar
            // 
            this.Txt_SifreTekrar.Location = new System.Drawing.Point(95, 79);
            this.Txt_SifreTekrar.Name = "Txt_SifreTekrar";
            this.Txt_SifreTekrar.Size = new System.Drawing.Size(100, 20);
            this.Txt_SifreTekrar.TabIndex = 3;
            this.Txt_SifreTekrar.UseSystemPasswordChar = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 134);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 13);
            this.label5.TabIndex = 18;
            this.label5.Text = "Onay Kodu :";
            // 
            // Txt_OnayKodu
            // 
            this.Txt_OnayKodu.Location = new System.Drawing.Point(95, 131);
            this.Txt_OnayKodu.Name = "Txt_OnayKodu";
            this.Txt_OnayKodu.Size = new System.Drawing.Size(100, 20);
            this.Txt_OnayKodu.TabIndex = 4;
            this.Txt_OnayKodu.UseSystemPasswordChar = true;
            // 
            // KullaniciKayit
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.PaleTurquoise;
            this.ClientSize = new System.Drawing.Size(214, 232);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.Txt_OnayKodu);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.Txt_SifreTekrar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Txt_Sifre);
            this.Controls.Add(this.Btn_KullaniciKayit);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Txt_KullaniciAdi);
            this.Name = "KullaniciKayit";
            this.Text = "Kullanıcı Kayıt";
            this.Load += new System.EventHandler(this.KullaniciKayit_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox Txt_Sifre;
        private System.Windows.Forms.Button Btn_KullaniciKayit;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox Txt_KullaniciAdi;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox Txt_SifreTekrar;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox Txt_OnayKodu;
    }
}