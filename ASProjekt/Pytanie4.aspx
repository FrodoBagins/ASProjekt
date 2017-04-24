<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pytanie4.aspx.cs" Inherits="ASProjekt.Pytanie4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" CssClass="pytanieLabel" Text="Pytanie 4" />


    <asp:Image ID="pytanieImage2" CssClass="pytanieImage" runat="server" ImageUrl="Century.png" />
    <br />


    <div id="pytanie" class="pytanie">

    <asp:Label ID="pytanie1Label" runat="server" Text="Kto jest zdobywcą największej liczby oscarów za muzykę? Jest również autorem muzyki która towarzyszy logo które widzimy powyżej." />

    <br />


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>John Williams</asp:ListItem>
        <asp:ListItem>Alfred Newman</asp:ListItem>
        <asp:ListItem>Johnny Green</asp:ListItem>
        <asp:ListItem>Maurice Jarre</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldVAlidator"></asp:RequiredFieldValidator>


    <br />
    <asp:Button ID="pytanie1_button" runat="server" Height="30px" OnClick="Button1_Click" Text="Dalej" Width="128px" />
    </div>

</asp:Content>
