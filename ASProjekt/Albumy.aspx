<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Albumy.aspx.cs" Inherits="ASProjekt.Albumy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    W tym miejscu będą pojawiać się informacje o popularnych <br />
    ścieżkach dźwiękowych
        <br />
        <br />
        Przejdź do albumów
        <br />
        <asp:HyperLink 
            id="hyperlink2" 
                  NavigateUrl="Ost.aspx"
                  Text="Płyty"
                  runat="server" />
        <br />


</asp:Content>
