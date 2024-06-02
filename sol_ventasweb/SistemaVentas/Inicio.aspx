<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaster.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SistemaVentas.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
		<div class="c_DashCont__section">
      <!-- BOTÓNES DE ACCESO RÁPIDO -->
			<section class="c_DashCont__section__c">
				<div class="row">
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <a href="frmUsuario.aspx" class="text-decoration-none" target="_self">
              <div class="card bg-info text-white">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-4 text-end pt-2">
                      <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                        <i class="fa fa-user fa-2x text-lg opacity-10" aria-hidden="true"></i>
                      </div>
                    </div>
                    <div class="col-8">
                      <div class="numbers">
                        <h5 class="font-weight-bolder">USUARIOS</h5>
                        <p class="mb-0">
                          <span id="countTotal_usuarios">40 usuarios</span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </a>            
          </div>
          <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <a href="frmProducto.aspx" class="text-decoration-none" target="_self">
              <div class="card bg-danger text-white">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-4 text-end pt-2">
                      <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                        <i class="fa fa-box fa-2x text-lg opacity-10" aria-hidden="true"></i>
                      </div>
                    </div>
                    <div class="col-8">
                      <div class="numbers">
                        <h5 class="font-weight-bolder">PRODUCTOS</h5>
                        <p class="mb-0">
                          <span id="countTotal_productos">40 productos</span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <a href="frmCategoria.aspx" class="text-decoration-none" target="_self">
              <div class="card bg-warning text-white">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-4 text-end pt-2">
                      <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                        <i class="fa fa-table fa-2x text-lg opacity-10" aria-hidden="true"></i>
                      </div>
                    </div>
                    <div class="col-8">
                      <div class="numbers">
                        <h5 class="font-weight-bolder">CATEGORÍAS</h5>
                        <p class="mb-0">
                          <span id="countTotal_categorias">40 categorías</span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </a>
          </div>
          <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <a href="frmProveedor.aspx" class="text-decoration-none" target="_self">
              <div class="card bg-success text-white">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-4 text-end pt-2">
                      <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                        <i class="fa fa-users fa-2x text-lg opacity-10" aria-hidden="true"></i>
                      </div>
                    </div>
                    <div class="col-8">
                      <div class="numbers">
                        <h5 class="font-weight-bolder">PROVEEDORES</h5>
                        <p class="mb-0">
                          <span id="countTotal_proveedores">40 proveedores</span>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </a>
          </div>
				</div>
			</section>
		</div>
		<div class="c_DashCont__section">
      <!-- GRÁFICOS ESTADÍSTICOS -->
      <section class="c_DashCont__section__c">
        <div class="row mt-4">
          <div class="col-lg-7 mb-lg-0 mb-4">
            <div class="card z-index-2 h-100">
              <div class="card-header pb-0 pt-3 bg-transparent">
                <h6 class="text-capitalize">Resumen de Ventas</h6>
              </div>
              <div class="card-body px-3 pt-1 pb-3">
                <div class="row align-items-end mb-1">
                  <div class="col-sm-5">
                    <div class="form-group mb-0">
                      <label for="txtSalesSummaryFechaInicio" class="col-form-label col-form-label-sm">Fecha Inicio:</label>
                      <input type="text" class="form-control form-control-sm model" id="txtSalesSummaryFechaInicio" name="SalesSummaryFechaInicio" autocomplete="off">
                    </div>
                  </div>
                  <div class="col-sm-5">
                    <div class="form-group mb-0">
                      <label for="txtSalesSummaryFechaFin" class="col-form-label col-form-label-sm">Fecha Fin:</label>
                      <input type="text" class="form-control form-control-sm model" id="txtSalesSummaryFechaFin" name="SalesSummaryFechaFin" autocomplete="off">
                    </div>
                  </div>
                  
                  <div class="col-sm-2">
                    <div class="form-group mb-0">
                      <label for="btnBuscarSalesInfo" class="col-form-label col-form-label-sm invisible"></label>
                      <button id="btnBuscarSalesInfo" type="button" class="btn btn-sm btn-primary btn-block">Filtrar</button>
                    </div>
                  </div>
                  
                </div>
                <div class="chart">
                  <canvas id="chart-line_sales" class="chart-canvas" height="269" width="580" style="display: block; box-sizing: border-box; height: 300px; width: 644.5px;"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5">
            <div class="card z-index-2 h-100">
              <div class="card-header pb-0 pt-3 bg-transparent">
                <h6 class="text-capitalize">Resumen de Compras</h6>
              </div>
              <div class="card-body p-3">
                <div class="chart">
                  <canvas id="chart-line_shoppingsummarystock" class="chart-canvas" height="269" width="580" style="display: block; box-sizing: border-box; height: 300px; width: 644.5px;"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
		</div>
  </div>
  <script type="text/javascript" src="Controlador/Inicio/Inicio.js"></script>
</asp:Content>
