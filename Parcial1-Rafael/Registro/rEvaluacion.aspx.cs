using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_Rafael.Registro
{
    public partial class rEvaluacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Evaluacion eva = new Evaluacion();

            if (!Page.IsPostBack)
            {
                RepositorioBase<Evaluacion> repositorioBase = new RepositorioBase<Evaluacion>();

                fechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
                CategoriaTextBox.DataBind();
                ValorTextBox.DataBind();
                LogradoTextBox.DataBind();

                ViewState["Evaluacion"] = new Evaluacion();
                BindGrid();
            }

        }

        protected void BindGrid()
        {
            if (ViewState["Evaluacion"] != null)
            {
                DetalleGridView.DataSource = ((Evaluacion)ViewState["Evaluacion"]).Detalle;
                DetalleGridView.DataBind();
            }
        }


        public Evaluacion LlenarClase()
        {
           Evaluacion evaluacion = new Evaluacion();

            evaluacion = (Evaluacion)ViewState["Evaluacion"];

            evaluacion.EvaluacionId = Convert.ToInt32(IdTextBox.Text);
            evaluacion.Estudiante = EstudianteTextBox.Text;

            return evaluacion;
        }

        protected void Limpiar()
        {
            IdTextBox.Text = string.Empty;
            EstudianteTextBox.Text = string.Empty;
            CategoriaTextBox.Text = string.Empty;
            ValorTextBox.Text = string.Empty;
            LogradoTextBox.Text = string.Empty;

        }

        public void LlenarCampos(Evaluacion eva)
        {
            Limpiar();

            EstudianteTextBox.Text = eva.Estudiante.ToString();
            fechaTextBox.Text = eva.Fecha.ToString();
            ViewState["Evaluacion"] = new Evaluacion();
            this.BindGrid();
        }
        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Evaluacion> repositorio = new RepositorioBase<Evaluacion>();
            Evaluacion Evaluacion = new Evaluacion();
            Evaluacion = repositorio.Buscar(Convert.ToInt32(IdTextBox.Text));

            if (Evaluacion != null)
                LlenarCampos(Evaluacion);

            else
            {
                Limpiar();
            }
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            Evaluacion Evaluacion = new Evaluacion();
            EvaluacionDetalle ee = new EvaluacionDetalle();

            Evaluacion = (Evaluacion)ViewState["Evaluacion"];
            Evaluacion.AgregarDetalle(CategoriaTextBox.Text,ValorTextBox.Text, LogradoTextBox.Text);

            ViewState["Evaluacion"] = Evaluacion;

            this.BindGrid();
            CategoriaTextBox.Text = "";
            ValorTextBox.Text = "";
            LogradoTextBox.Text = "";
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {

        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {

        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {

        }
    }
}