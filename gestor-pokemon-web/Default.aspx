<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="gestor_pokemon_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bienvenido!</h1>
    <p>Llegaste al pokedex web, tu web pokemon...</p>


    <%--        LISTADO CON FOREACH USANDO CARDS--%>
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%--        <% foreach (dominio.Pokemon pokemon in ListaPokemons) {%> 
        
        
            <div class="col">
                <div class="card">
                    <img src="<%: pokemon.UrlImagen%>" class="card-img-top" alt="..." >
                    <div class="card-body">
                        <h5 class="card-title"><%: pokemon.Nombre%></h5>
                        <p class="card-text"><%: pokemon.Descripcion %></p>

                        <a href="./DetallePokemon.aspx?id=<%:pokemon.Id %>" class="btn btn-primary">Ver Detalles</a>
                    </div>
                </div>
            </div>

        <%} %>--%>

        <%--        LISTADO CON REPEATER--%>
        <asp:Repeater ID="repRepetidor" runat="server">
        <%--            Vendria a ser cada elemento, como en el foreach anterior.--%>
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">
                            <%--    Eval("nombre_exacto_de_la_Property")--%>
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%# Eval("Descripcion") %></p>

                            <a href="./DetallePokemon.aspx?id=<%#Eval("Id") %>" class="btn btn-primary">Ver Detalles</a>
                            
                            <asp:Button ID="btnEjemplo" Text="Ejemplo" runat="server" CssClass="btn btn-primary" CommandArgument='<%#Eval("Id") %>' CommandName="pokemonId" OnClick="btnEjemplo_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

<%--        VENTAJA DE USAR REPEATER: 
                Posibilidad de poder mandar un dato especifico al CodeBehind de la MISMA pantalla
                (Con el ForEach podremos mandar, pero seria al codebehind de OTRA pantalla a donde mandamos)
                
                Ej: el btnEjemplo
                    este va a tener: 
                        CommandArgument: valor a pasarle del objeto(Ej ID, aunque podemos pasarle cualquier otro)
                                            (IMPORTANTE: el valor se pasa entre 'comillas_simples')

                        CommandName: un nombre para el anterior argumento, se guardara en una suerte de "variable"
                                        al momento de llegar al CodeBehind
                        
    --%>

    </div>
</asp:Content>
