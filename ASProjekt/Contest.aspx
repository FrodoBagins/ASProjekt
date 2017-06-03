<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contest.aspx.cs" Inherits="ASProjekt.Contest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Na tej stronie będą pojwaiać się informacje o aktualnie trwających konkursach

        <br />
        <br />
        Przejdź do konkursu oscarowego
        <br />
        <asp:HyperLink 
            id="hyperlink2" 
                  NavigateUrl="Contest1.aspx"
                  Text="Konkurs #1"
                  runat="server" />
        <br />

</asp:Content>
