using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Task

namespace MySqlProject.Data
{
    public class ApplicationDbContext :DbContext
    {

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
                string mycon = "server =127.0.0.1; port=3306; user=root; password =LoveGod2021* ; persistsecurityinfo = True; database =bdermaplus; SslMode = none";
                MySqlConnection con = new MySqlConnection(mycon);
                MySqlCommand cmd = null;
                try
                {
                    cmd = new MySqlCommand("Select * from customer", con);
                    con.Open();
                    dt.Load(cmd.ExecuteReader());
                    con.Close();

                }
                catch (Exception ex)
                {
                    con.Close();
                }      
        }

    }
}
