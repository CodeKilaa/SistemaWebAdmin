using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class Conexion
    {
        // ------ CREDENCIALES (POR DEFECTO)
        // public static string CN = "Data Source=.;Initial Catalog=DBPRUEBAS;Integrated Security=True";
        // ------ CREDENCIALES (LOCALHOST)
        // public static string CN = "Data Source=DESKTOP-G46KIE0\\SQLEXPRESS;Database=DBPRUEBAS;User ID=sa;Password=123456;Trusted_Connection=false;TrustServerCertificate=True;";
        // ------ CREDENCIALES (SERVIDOR - SOMEE.COM)
        // public static string CN = "Data Source=DBSISVENTASADMINCONTROL.mssql.somee.com;Database=DBSISVENTASADMINCONTROL;User ID=razorFix32_SQLLogin_1;Password=7j1kexy7qw;Trusted_Connection=false;TrustServerCertificate=True;";
        // ------ CREDENCIALES (SERVIDOR - SMARTERASP.NET)
        // public static string CN = "Data Source=SQL8010.site4now.net;Database=db_aa96c3_dbsisventasadminco;User ID=db_aa96c3_dbsisventasadminco_admin;Password=wqg5am1b;Trusted_Connection=false;TrustServerCertificate=True;";
        // ------ CREDENCIALES (SERVIDOR - MICROSOFT AZURE)
        public static string CN = "Data Source=servsisventasadmincontrol.database.windows.net;Database=dbsisventasadmincontrol;User ID=userdbsisventasadmin;Password=fXq$85DWM^f4+YZN;Trusted_Connection=false;TrustServerCertificate=True;";
    }
}
