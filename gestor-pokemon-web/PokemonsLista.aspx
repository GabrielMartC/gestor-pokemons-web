<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="gestor_pokemon_web.PokemonsLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .cambiarTamanio{
            width:150px; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Lista de Pokemons</h2>

<%--    dataGrivView no reconoce todos los atributos de Pokemon, es preferible agregarlos uno por uno--%>
    <asp:GridView ID="dgvPokemon1" runat="server" CssClass="table" AutoGenerateColumns="false">
        <Columns> 
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" /> 
            
            <asp:BoundField HeaderText="Numero" DataField="Numero" /> 
            
            <asp:BoundField HeaderText="Descripción" DataField="Descripcion" /> 

            <asp:ImageField HeaderText="Imagen" DataImageUrlField="UrlImagen" ControlStyle-CssClass="cambiarTamanio"/>

            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" /> 

            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" /> 
        </Columns>


    </asp:GridView>
</asp:Content>
