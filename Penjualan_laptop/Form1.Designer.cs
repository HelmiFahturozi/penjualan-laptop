namespace Penjualan_laptop
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            Nama = new Label();
            Harga = new Label();
            Merek = new Label();
            Nomer_telepon = new Label();
            laptopdataGridView = new DataGridView();
            Create = new Button();
            Update = new Button();
            Delete = new Button();
            textBox1 = new TextBox();
            textBox2 = new TextBox();
            textBox3 = new TextBox();
            textBox4 = new TextBox();
            textBox5 = new TextBox();
            IdentitasTransaksi = new Label();
            JumlahBeli = new Label();
            ((System.ComponentModel.ISupportInitialize)laptopdataGridView).BeginInit();
            SuspendLayout();
            // 
            // Nama
            // 
            Nama.AutoSize = true;
            Nama.Location = new Point(126, 51);
            Nama.Name = "Nama";
            Nama.Size = new Size(68, 25);
            Nama.TabIndex = 0;
            Nama.Text = "Nama :";
            // 
            // Harga
            // 
            Harga.AutoSize = true;
            Harga.Location = new Point(126, 103);
            Harga.Name = "Harga";
            Harga.Size = new Size(69, 25);
            Harga.TabIndex = 1;
            Harga.Text = "Harga :";
            // 
            // Merek
            // 
            Merek.AutoSize = true;
            Merek.Location = new Point(124, 163);
            Merek.Name = "Merek";
            Merek.Size = new Size(70, 25);
            Merek.TabIndex = 2;
            Merek.Text = "Merek :";
            Merek.Click += label3_Click;
            // 
            // Nomer_telepon
            // 
            Nomer_telepon.AutoSize = true;
            Nomer_telepon.Location = new Point(53, 213);
            Nomer_telepon.Name = "Nomer_telepon";
            Nomer_telepon.Size = new Size(0, 25);
            Nomer_telepon.TabIndex = 3;
            Nomer_telepon.Click += label4_Click;
            // 
            // laptopdataGridView
            // 
            laptopdataGridView.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            laptopdataGridView.Location = new Point(-8, 394);
            laptopdataGridView.Name = "laptopdataGridView";
            laptopdataGridView.RowHeadersWidth = 62;
            laptopdataGridView.RowTemplate.Height = 33;
            laptopdataGridView.Size = new Size(813, 225);
            laptopdataGridView.TabIndex = 4;
            laptopdataGridView.CellContentClick += laptopdataGridView_CellContentClick;
            // 
            // Create
            // 
            Create.Location = new Point(168, 337);
            Create.Name = "Create";
            Create.Size = new Size(112, 34);
            Create.TabIndex = 5;
            Create.Text = "Create";
            Create.UseVisualStyleBackColor = true;
            Create.Click += Create_Click;
            // 
            // Update
            // 
            Update.Location = new Point(320, 337);
            Update.Name = "Update";
            Update.Size = new Size(112, 34);
            Update.TabIndex = 6;
            Update.Text = "Update";
            Update.UseVisualStyleBackColor = true;
            Update.Click += Update_Click;
            // 
            // Delete
            // 
            Delete.Location = new Point(485, 337);
            Delete.Name = "Delete";
            Delete.Size = new Size(112, 34);
            Delete.TabIndex = 7;
            Delete.Text = "Delete";
            Delete.UseVisualStyleBackColor = true;
            Delete.Click += Delete_Click;
            // 
            // textBox1
            // 
            textBox1.Location = new Point(200, 51);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(316, 31);
            textBox1.TabIndex = 8;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(200, 103);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(316, 31);
            textBox2.TabIndex = 9;
            // 
            // textBox3
            // 
            textBox3.Location = new Point(200, 163);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(316, 31);
            textBox3.TabIndex = 10;
            // 
            // textBox4
            // 
            textBox4.Location = new Point(200, 213);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(316, 31);
            textBox4.TabIndex = 11;
            // 
            // textBox5
            // 
            textBox5.Location = new Point(200, 265);
            textBox5.Name = "textBox5";
            textBox5.Size = new Size(316, 31);
            textBox5.TabIndex = 12;
            // 
            // IdentitasTransaksi
            // 
            IdentitasTransaksi.AutoSize = true;
            IdentitasTransaksi.Location = new Point(30, 216);
            IdentitasTransaksi.Name = "IdentitasTransaksi";
            IdentitasTransaksi.Size = new Size(164, 25);
            IdentitasTransaksi.TabIndex = 13;
            IdentitasTransaksi.Text = "IdentitasTransaksi  :";
            // 
            // JumlahBeli
            // 
            JumlahBeli.AutoSize = true;
            JumlahBeli.Location = new Point(87, 265);
            JumlahBeli.Name = "JumlahBeli";
            JumlahBeli.Size = new Size(103, 25);
            JumlahBeli.TabIndex = 14;
            JumlahBeli.Text = "JumlahBeli :";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 614);
            Controls.Add(JumlahBeli);
            Controls.Add(IdentitasTransaksi);
            Controls.Add(textBox5);
            Controls.Add(textBox4);
            Controls.Add(textBox3);
            Controls.Add(textBox2);
            Controls.Add(textBox1);
            Controls.Add(Delete);
            Controls.Add(Update);
            Controls.Add(Create);
            Controls.Add(laptopdataGridView);
            Controls.Add(Nomer_telepon);
            Controls.Add(Merek);
            Controls.Add(Harga);
            Controls.Add(Nama);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)laptopdataGridView).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label Nama;
        private Label Harga;
        private Label Merek;
        private Label Nomer_telepon;
        private DataGridView laptopdataGridView;
        private Button Create;
        private Button Update;
        private Button Delete;
        private TextBox textBox1;
        private TextBox textBox2;
        private TextBox textBox3;
        private TextBox textBox4;
        private TextBox textBox5;
        private Label IdentitasTransaksi;
        private Label JumlahBeli;
    }
}