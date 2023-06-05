using System;
using System.Data;
using System.Security.Cryptography.X509Certificates;
using System.Windows.Forms;
using Npgsql;
namespace Penjualan_laptop
{
    public partial class Form1 : Form
    {
        // string connectionString = "Host=localhost;Port=5432;Database=postgres;User Id=postgres;Password=starco";
        //NpgsqlConnection connection = new NpgsqlConnection();
        //NpgsqlCommand cmd = new NpgsqlCommand(connectionString);
        private NpgsqlConnection connection;
        private NpgsqlCommand Command;
        private NpgsqlDataAdapter adapter;
        private DataTable dataTable;



        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            string connectionString = "Host=localhost;Port=5432;Database=postgres;User Id=postgres;Password=starco";
            connection = new NpgsqlConnection(connectionString);

            LoadData();
        }
        private void LoadData()
        {
            try
            {
                connection.Open();
                string query = "SELECT * FROM laptop.penjualan";
                Command = new NpgsqlCommand(query, connection);
                adapter = new NpgsqlDataAdapter(Command);
                dataTable = new DataTable();
                adapter.Fill(dataTable);

                laptopdataGridView.DataSource = dataTable;
                connection.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show("Terjadi Kesalahan : " + ex.Message);
            }


        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void Update_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();

                int rowIndex = laptopdataGridView.SelectedCells[0].RowIndex;
                string Nama = textBox1.Text;
                int JumlahBeli = int.Parse(textBox5.Text);
                string Merek = textBox3.Text;
                int Harga = int.Parse((string)textBox2.Text);
                string IdentitasTransaksi = textBox3.Text;

                string query = "update laptop.penjualan set Nama=@Nama, JumlahBeli=@JumlahBeli, Stok =@Stok, Merek=@Merek, Harga=@Harga, IdentitasTransaksi=@Identitas where Nama =@OldNama";
                Command = new NpgsqlCommand(query, connection);
                Command.Parameters.AddWithValue("@Nama", Nama);
                Command.Parameters.AddWithValue("@JumlahBeli", JumlahBeli);
                Command.Parameters.AddWithValue("@Stok", JumlahBeli);
                Command.Parameters.AddWithValue("@Merek", Merek);
                Command.Parameters.AddWithValue("@Harga", Harga);
                Command.Parameters.AddWithValue("@IdentitasTransaksi", IdentitasTransaksi);
                Command.Parameters.AddWithValue("@OldNama", laptopdataGridView.Rows[rowIndex].Cells["Nama"].Value.ToString());
                Command.ExecuteNonQuery();

                connection.Close();

                MessageBox.Show("Data berhasil Di perbarui");
                LoadData();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Terjadi Kesalahan " + ex.Message);
            }
        }

        private void laptopdataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = laptopdataGridView.Rows[e.RowIndex];
                textBox1.Text = row.Cells["Nama"].ToString();
                textBox5.Text = row.Cells["JumlahBeli"].Value.ToString();
                textBox3.Text = row.Cells["Merek"].ToString();
                textBox2.Text = row.Cells["Harga"].ToString();
                textBox4.Text = row.Cells["IdentitasTransaksi"].Value.ToString();
            }
        }

        private void Create_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();

                string Nama = textBox1.Text;
                int JumlahBeli = int.Parse(textBox5.Text);
                string Merek = textBox3.Text;
                int Harga = int.Parse(textBox2.Text);
                string IdentitasTransaksi = textBox4.Text;

                string query = "Insert into laptop.penjualan(Nama,JumlahBeli,Stok,Merek,Harga,IdentitasTransaksi) values (@Nama,@JumlahBeli,@Stok,@Merek,@Harga,@IdentitasTransaksi";
                Command = new NpgsqlCommand(query, connection);
                Command.Parameters.AddWithValue("@Nama", Nama);
                Command.Parameters.AddWithValue("@JumlahBeli", JumlahBeli);
                Command.Parameters.AddWithValue("@Stok", JumlahBeli); // awalan stok di update setiap pembelian
                Command.Parameters.AddWithValue("@Merek", Merek);
                Command.Parameters.AddWithValue("@Harga", Harga);
                Command.Parameters.AddWithValue("@IdentitasTransaksi", IdentitasTransaksi);
                Command.ExecuteNonQuery();

                connection.Close();

                MessageBox.Show("Data Berhasil Di Tambahkan");

                LoadData();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Terjadi Kesalahan: " + ex.Message);
            }

        }

   

        private void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                int rowIndex = laptopdataGridView.SelectedCells[0].RowIndex;
                string Nama = laptopdataGridView.Rows[rowIndex].Cells["Nama"].Value.ToString();


                string query = "Delete from laptop.penjualan where Nama=@Nama";
                Command = new NpgsqlCommand(query, connection);
                Command.Parameters.AddWithValue("@Nama", Nama);
                Command.ExecuteNonQuery();
                connection.Close();

                MessageBox.Show("Data Berhasil Di Hapus");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Terjadi Kesalahan: " + ex.Message);
            }
        }

    }
}