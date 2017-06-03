<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="ASProjekt.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    W wiadomościach będą pojawiać się nowości filmowe oraz muzyczne.
     <br />
        <br />
        Przejdź do nowości filmowych
        <br />
        <asp:HyperLink 
            id="hyperlink1" 
                  NavigateUrl="NewMovies.aspx"
                  Text="Trailery nowych filmów"
                  runat="server" />
        <br />
        <br />
        Przejdź do nowości muzycznych
        <br />
        <asp:HyperLink 
            id="hyperlink2" 
                  NavigateUrl="NewSongs.aspx"
                  Text="Nowe utwory"
                  runat="server" />
        <br />

</asp:Content>
