using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Npgsql;
using System.Windows.Forms;

namespace Penjualan_laptop
{
    public class penjualan_laptop
    {
        public string Nama { get; set; } // Tambahkan tanda semicolon (;) setelah deklarasi property

        public string IdentitasTransaksi { get; set; }

        public string Merek { get; set; }

        public int Nomer_telepon { get; set; }

        

        string connectionString = "Host=localhost;Port=5432;Database=postgres;User Id=postgres;Password=starco";
        NpgsqlConnection connection = new NpgsqlConnection();

        public void OpenConnection() // Ubah Connection.Open() menjadi metode OpenConnection()
        {
            try
            {
                connection.ConnectionString = connectionString;
                connection.Open();
                MessageBox.Show("Koneksi berhasil terbuka"); // Tambahkan pesan untuk menampilkan jika koneksi berhasil terbuka
            }
            catch (Exception ex)
            {
                connection.Close();
                MessageBox.Show("Gagal membuka koneksi: " + ex.Message); // Tambahkan pesan untuk menampilkan jika koneksi gagal terbuka
            }
        }
        
    }
}

