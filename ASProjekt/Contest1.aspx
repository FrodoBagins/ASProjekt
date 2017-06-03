<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contest1.aspx.cs" Inherits="ASProjekt.Contest1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Konkurs Oscarowy

    <br />

    <br />

    Po odpowiedzi możesz wypełnić formularz zgłoszeniowy <br />
    Pośród zarejestrowanych osób jedna zostanie wylosowana <br />
    Do odebrania głownej nagordy <br />

                <div id="contest_link_1">

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pytanie1.aspx">Przejdź do pytań</asp:HyperLink>

                </div>


</asp:Content>
