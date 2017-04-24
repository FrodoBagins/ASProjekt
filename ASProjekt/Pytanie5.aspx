<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pytanie5.aspx.cs" Inherits="ASProjekt.Pytanie5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" CssClass="pytanieLabel" Text="Pytanie 5" />


    <asp:Image ID="pytanieImage2" CssClass="pytanieImage" runat="server" ImageUrl="Marzyciel.jpg" />
    <br />


    <div id="pytanie" class="pytanie">

    <asp:Label ID="pytanie1Label" runat="server" Text="Który z polaków Otrzmał Oscara za film 'Marzyciel'?" />

    <br />


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Krzysztof Penderecki</asp:ListItem>
        <asp:ListItem>Michał Lorenc</asp:ListItem>
        <asp:ListItem>Zbigniew Preisner</asp:ListItem>
        <asp:ListItem>Jan Kaczmarek</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldVAlidator"></asp:RequiredFieldValidator>


    <br />
    <asp:Button ID="pytanie1_button" runat="server" Height="30px" OnClick="Button1_Click" Text="Dalej" Width="128px" />
    </div>

</asp:Content>
