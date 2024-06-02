// ------------- CONFIGURAR DATEPICKER
$.datepicker.regional['es'] = {
  closeText: 'Cerrar',
  prevText: '< Ant',
  nextText: 'Sig >',
  currentText: 'Hoy',
  monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
  monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
  dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
  dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
  dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
  weekHeader: 'Sm',
  dateFormat: 'dd/mm/yy',
  firstDay: 1,
  isRTL: false,
  showMonthAfterYear: false,
  yearSuffix: ''
};
$.datepicker.setDefaults($.datepicker.regional['es']);
$(document).ready(function () {
  $("#txtSalesSummaryFechaInicio").datepicker();
  $("#txtSalesSummaryFechaFin").datepicker();
  $("#txtSalesSummaryFechaInicio").val(ObtenerFecha());
  $("#txtSalesSummaryFechaFin").val(ObtenerFecha());
  let dateInitSalesSummary = $("#txtSalesSummaryFechaInicio").val();
  let dateEndSalesSummary = $("#txtSalesSummaryFechaFin").val();
  let requestOutOfOnload = {
    dateInit: dateInitSalesSummary,
    dateEnd: dateEndSalesSummary,
  }
  filterGraphicsBySales(requestOutOfOnload);
  filterGraphicsShoppingSummaryStock();
  // showCountTotalInSomeTables();
});
/*
// ---------- OBTENER EL CONTEO DE REGISTROS EN DIFERENTES TABLAS
function showCountTotalInSomeTables() {
  AjaxGet("../Inicio.aspx/getCountInSomeTables",
    function (res) {
      $("#countTotal_usuarios").LoadingOverlay("hide");
      $("#countTotal_productos").LoadingOverlay("hide");
      $("#countTotal_categorias").LoadingOverlay("hide");
      $("#countTotal_proveedores").LoadingOverlay("hide");
      if (res.estado) {
        console.log(res.objeto);
      }
    },
    function () {
      $("#countTotal_usuarios").LoadingOverlay("hide");
      $("#countTotal_productos").LoadingOverlay("hide");
      $("#countTotal_categorias").LoadingOverlay("hide");
      $("#countTotal_proveedores").LoadingOverlay("hide");
    },
    function () {
      $("#countTotal_usuarios").LoadingOverlay("show");
      $("#countTotal_productos").LoadingOverlay("show");
      $("#countTotal_categorias").LoadingOverlay("show");
      $("#countTotal_proveedores").LoadingOverlay("show");
    }
  );
}
*/
// OBTENER Y FILTRAR POR LOS VALORES DE FECHA INICIO Y FECHA FIN
$(document).on("click", "#btnBuscarSalesInfo", function () {
  let dateInitSalesSummary = $("#txtSalesSummaryFechaInicio").val();
  let dateEndSalesSummary = $("#txtSalesSummaryFechaFin").val();
  let requestOutOfOnload = {
    dateInit: dateInitSalesSummary,
    dateEnd: dateEndSalesSummary,
  }
  filterGraphicsBySales(requestOutOfOnload);
});
// ---------- GRÁFICO ESTADÍSTICO DE RESUMEN DE VENTAS + FILTRADO POR FECHAS
let myChartSalesSummary;
function filterGraphicsBySales(requestOutOfOnload = {}) {
  var sendFilterSales = {
    fechainicio: requestOutOfOnload.dateInit,
    fechafin: requestOutOfOnload.dateEnd,
  };

  AjaxPost("../Inicio.aspx/getSalesSumary", JSON.stringify(sendFilterSales),
    function (res) {
      //$(".card-body").LoadingOverlay("hide");
      //$(".card-body").LoadingOverlay("show");
      $("#chart-line_sales").LoadingOverlay("hide");
      if (res.estado) {
        // Objeto para almacenar los datos
        let dataObjt = {};
        // Recorrer cada objeto en el array personas
        $.each(res.objeto, function (index, r1) {
          // Recorrer cada atributo en el objeto persona
          $.each(r1, function (key, value) {
            if (key === "oCliente") {
              // Extraer Nombres de cliente
              if (!dataObjt['Nombre']) {
                dataObjt['Nombre'] = [];
              }
              dataObjt['Nombre'].push(value.Nombre);
            } else {
              // Si el atributo aún no existe en el objeto data, inicializarlo como un array vacío
              if (!dataObjt[key]) {
                dataObjt[key] = [];
              }
              // Agregar el valor del atributo al array correspondiente en data
              dataObjt[key].push(value);
            }
          });
        });


        // --------- GRÁFICO TIPO: DE BARRAS
        const ctx = document.getElementById('chart-line_sales').getContext('2d');
        if (myChartSalesSummary) {
          myChartSalesSummary.destroy();
        }
        myChartSalesSummary = new Chart(ctx, {
          type: 'line',
          data: {
            labels: dataObjt.Nombre,
            datasets: [{
              label: 'Monto Total',
              data: dataObjt.TotalCosto,
              backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
            }]
          },
          options: {
            scales: {
              y: {
                stacked: true,
                grid: {
                  display: true,
                  //color: "rgba(255,99,132,0.2)"
                }
              },
              x: {
                grid: {
                  display: false
                }
              }
            },
            responsive: true,
            maintainAspectRatio: false,
            aspectRatio: 2,
            resizeDelay: 0
          }
        });
 


      }
    },
    function () {
      $("#chart-line_sales").LoadingOverlay("hide");
    },
    function () {
      $("#chart-line_sales").LoadingOverlay("show");
    });

}

// ---------- GRÁFICO ESTADÍSTICO DE USUARIOS
let myChartShoppingSummaryStock;
function filterGraphicsShoppingSummaryStock() {
  AjaxGet("../Inicio.aspx/getShoppingSumaryStock", 
    function (res) {
      //$(".card-body").LoadingOverlay("hide");
      //$(".card-body").LoadingOverlay("show");
      $("#chart-line_shoppingsummarystock").LoadingOverlay("hide");
      if (res.estado) {
        // Objeto para almacenar los datos
        let dataObjt = {};
        // Recorrer cada objeto en el array personas
        $.each(res.objeto, function (index, r1) {
          // Recorrer cada atributo en el objeto persona
          $.each(r1, function (key, value) {
            if (key === "oProveedor") {
              // Extraer Correo de Proveedor
              if (!dataObjt['Correo']) {
                dataObjt['Correo'] = [];
              }
              dataObjt['Correo'].push(value.Correo);
            } else {
              // Si el atributo aún no existe en el objeto data, inicializarlo como un array vacío
              if (!dataObjt[key]) {
                dataObjt[key] = [];
              }
              // Agregar el valor del atributo al array correspondiente en data
              dataObjt[key].push(value);
            }
          });
        });


        // --------- GRÁFICO TIPO: DE BARRAS
        const ctx = document.getElementById('chart-line_shoppingsummarystock').getContext('2d');
        if (myChartShoppingSummaryStock) {
          myChartShoppingSummaryStock.destroy();
        }
        myChartShoppingSummaryStock = new Chart(ctx, {
          type: 'doughnut',
          data: {
            labels: dataObjt.Correo,
            datasets: [{
              label: 'My First Dataset',
              data: dataObjt.TotalCosto,
              backgroundColor: [
                'rgba(255, 99, 132)',
                'rgba(54, 162, 235)',
                'rgba(255, 206, 86)',
                'rgba(75, 192, 192)',
                'rgba(153, 102, 255)',
                'rgba(255, 159, 64)'
              ],
              hoverOffset: 4
            }]
          },
          options: {
            scales: {
              y: {
                beginAtZero: true
              }
            },
            responsive: true,
            maintainAspectRatio: false,
            aspectRatio: 1,
            resizeDelay: 0
          }
        });



      }
    },
    function () {
      $("#chart-line_shoppingsummarystock").LoadingOverlay("hide");
    },
    function () {
      $("#chart-line_shoppingsummarystock").LoadingOverlay("show");
    });

}
