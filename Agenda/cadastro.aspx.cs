using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtNome_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCad_Click(object sender, EventArgs e)
        {
            //pegando string de conexão
            System.Configuration.Configuration rootWeb = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings conString;
            conString = rootWeb.ConnectionStrings.ConnectionStrings["ConnectionString"];

            string textMess = "";

            if (txtNome.Text == "" || txtTel.Text == "" || txtEnd.Text == "")
            {
                textMess = "Uma ou mais das informações está(ão) faltando.";
            }
            else
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = conString.ToString();
                SqlCommand com = new SqlCommand();
                com.Connection = connection;
                com.CommandText = "Insert into Contato (nome, telefone, endereco) values (@nome, @tel, @end)";
                com.Parameters.AddWithValue("nome", txtNome.Text);
                com.Parameters.AddWithValue("tel", txtTel.Text);
                com.Parameters.AddWithValue("end", txtEnd.Text);
                connection.Open();
                com.ExecuteNonQuery();
                connection.Close();

                textMess = "Contato Inserido com Sucesso!";
            }

            lblMess.Enabled = true;
            lblMess.Visible = true;
            lblMess.Text = textMess;
        }
    }
}