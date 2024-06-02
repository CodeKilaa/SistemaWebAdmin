using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaVentas
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<Usuario> ObtenerDetalleUsuario()
        {
            if(Configuracion.oUsuario != null)
            {
                int IdUsuario = Configuracion.oUsuario.IdUsuario;
                Usuario oUsuario = new Usuario();
                oUsuario = CD_Usuario.Instancia.ObtenerDetalleUsuario(IdUsuario);

                Configuracion.oUsuario = oUsuario;

                if (oUsuario != null)
                {
                    return new Respuesta<Usuario>() { estado = true, objeto = oUsuario };
                }
                else
                {
                    return new Respuesta<Usuario>() { estado = false, objeto = null };
                }
            }
            else
            {
                return new Respuesta<Usuario>() { estado = false, objeto = null };
            }            
        }

        [WebMethod]
        public static Respuesta<List<Venta>> getSalesSumary(string fechainicio, string fechafin)
        {
              
            List<Venta> listSalesSummary = new List<Venta>();
            listSalesSummary = CD_Venta.Instancia.getSalesSummaryByDate(Convert.ToDateTime(fechainicio), Convert.ToDateTime(fechafin));
            if (listSalesSummary != null)
                return new Respuesta<List<Venta>>() { estado = true, objeto = listSalesSummary };
            else
                return new Respuesta<List<Venta>>() { estado = false, objeto = null };

        }

        
        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<List<Compra>> getShoppingSumaryStock()
        {
            List<Compra> listShoppingSumaryStock = new List<Compra>();
            listShoppingSumaryStock = CD_Compra.Instancia.getShoppingSumaryStockOfSystem();
            if(listShoppingSumaryStock != null)
                return new Respuesta<List<Compra>>() { estado = true, objeto =listShoppingSumaryStock };
            else
                return new Respuesta<List<Compra>>() { estado = false, objeto = null };
        }
        
        /*
        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<List<Usuario>> getCountInSomeTables()
        {
            List<Usuario> listCountInSomeTables= new List<Usuario>();
            listCountInSomeTables = CD_Compra.Instancia.getCountTotalRowsInSomeTables();
            if (listCountInSomeTables != null)
                return new Respuesta<List<Usuario>>() { estado = true, objeto = listCountInSomeTables };
            else
                return new Respuesta<List<Usuario>>() { estado = false, objeto = null };
        }
        */


        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<bool> CerrarSesion()
        {
            Configuracion.oUsuario = null;
            
            return new Respuesta<bool>() { estado = true};
            
        }
    }
}