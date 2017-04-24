<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pytanie1.aspx.cs" Inherits="ASProjekt.Pytanie1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" CssClass="pytanieLabel" Text="Pytanie 1" />


    <asp:Image ID="pytanieImage2" CssClass="pytanieImage" runat="server" ImageUrl="Hateful8.jpeg" />
    <br />


    <div id="pytanie" class="pytanie">

    <asp:Label ID="pytanie1Label" runat="server" Text="Kto napisał muzykę do tego filmu" />

    <br />


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Ennio Morricone</asp:ListItem>
        <asp:ListItem>Hans Zimmer</asp:ListItem>
        <asp:ListItem>Alexandre Desplat</asp:ListItem>
        <asp:ListItem>John Williams</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldVAlidator"></asp:RequiredFieldValidator>


    <br />
    <asp:Button ID="pytanie1_button" runat="server" Height="30px" OnClick="Button1_Click" Text="Dalej" Width="128px" />
    </div>

</asp:Content>
