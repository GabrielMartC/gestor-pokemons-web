using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gestor_pokemon_web
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Pokemon> ListaPokemons { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio pokemonNegocio = new PokemonNegocio();
            ListaPokemons = pokemonNegocio.listarConSP();


            if (!IsPostBack) 
            {
                repRepetidor.DataSource = ListaPokemons;
                repRepetidor.DataBind();
            }
            

        }



        /*
            EL BOTON (btnEjemplo) mando a ejecutar este evento, y este tiene un argumento:
             el object sender es el elemento que "envia" el evento

            Como sabemos que el "sender" es un Button, hacemos casteo explicito PARA poder usar el CommandArgument que 
            fue configurado.
            
            Con "valor" podremos recuperar, por ejemplo, un pokemon especifico para determinada accion.
            Por ejemplo si traemos su ID, esta no sera visible en la url, todo el tranpase de datos se hara desde el back.
         */
        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}