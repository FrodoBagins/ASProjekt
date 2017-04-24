<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pytanie2.aspx.cs" Inherits="ASProjekt.Pytanie2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" CssClass="pytanieLabel" Text="Pytanie 2" />


    <asp:Image ID="pytanieImage2" CssClass="pytanieImage" runat="server" ImageUrl="LaLaLand.jpeg" />
    <br />


    <div id="pytanie" class="pytanie">

    <asp:Label ID="pytanie1Label" runat="server" Text="Jaki tytuł nosił utwór z filmu La La Land, który został nagrodzony oskarem w kategorii 'Najlepsz piosenka' " />

    <br />


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Another Day of Sun</asp:ListItem>
        <asp:ListItem>City of Stars</asp:ListItem>
        <asp:ListItem>A Lovely Night</asp:ListItem>
        <asp:ListItem>Start a Fire</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldVAlidator"></asp:RequiredFieldValidator>


    <br />
    <asp:Button ID="pytanie1_button" runat="server" Height="30px" OnClick="Button1_Click" Text="Dalej" Width="128px" />
    </div>

</asp:Content>
