<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Podsumowanie1.aspx.cs" Inherits="ASProjekt.Podsumowanie1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Podsumowanie

    <br />

    <asp:Label ID="podsumowanieLabel" runat="server" Text="Wynik: "></asp:Label>


    <div id="ankieta">

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Podaj imię "></asp:Label>
        <asp:TextBox ID="tbImie" runat="server" Style="margin-left: 32px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbImie" ErrorMessage="Podaj imie">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server"
            ControlToValidate="tbImie"
            ErrorMessage="Niepoprawny format."
            ValidationExpression="[a-zA-Z]{2,20}">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Podaj nazwisko "></asp:Label>
        <asp:TextBox ID="tbNazwisko" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbNazwisko" ErrorMessage="Podaj nazwisko">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server"
            ControlToValidate="tbNazwisko"
            ErrorMessage="Niepoprawny format."
            ValidationExpression="[a-zA-Z]{2,30}">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Podaj email "></asp:Label>
        <asp:TextBox ID="tbEmail" runat="server" Width="144px"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server"
            ControlToValidate="tbEmail"
            ErrorMessage="Niepoprawny format."
            ValidationExpression="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,40}">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbEmail" ErrorMessage="Podaj mail">*</asp:RequiredFieldValidator>

        <br />

        <asp:Button ID="Button1" CssClass="podumowanieButton" runat="server" OnClick="Button1_Click" Text="Weź udział w losowaniu nagrody" />

        <br />

        <asp:Label ID="Label2" runat="server" Text="Zgłoszenie potwierdzone" Visible="false"></asp:Label>
    </div>


</asp:Content>
