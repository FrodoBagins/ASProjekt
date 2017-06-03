<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewSongs.aspx.cs" Inherits="ASProjekt.NewSongs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label
        CssClass="newsLabel"
        ID="Label1"
        runat="server" />

    <br />


    <asp:MultiView ID="MultiView1" runat="server">


        <asp:View ID="View1" runat="server">

            <iframe class="video" src="https://www.youtube.com/embed/rIUKNkq6hcM"></iframe>

            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button1"
                runat="server"
                Text="Następny utwór"
                OnClick="NextImage" />
        </asp:View>


        <asp:View ID="View2" runat="server">


            <iframe class="video" src="https://www.youtube.com/embed/IdzQZR-akSU"></iframe>
            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button2"
                runat="server"
                Text="Następny utwór"
                OnClick="NextImage" />
            <asp:Button
                CssClass="newsButton"
                ID="Button8"
                runat="server"
                Text="Poprzedni utwór"
                OnClick="PreviousImage" />



        </asp:View>




        <asp:View ID="View3" runat="server">


            <iframe class="video" src="https://www.youtube.com/embed/OQsq2Eez2fc?list=PLxI2Q0ouLP6dl5ZzzquvI0kuVg6FZlN7D"></iframe>

            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button3"
                runat="server"
                Text="Następny utwór"
                OnClick="NextImage" />
            <asp:Button
                CssClass="newsButton"
                ID="Button7"
                runat="server"
                Text="Poprzedni utwór"
                OnClick="PreviousImage" />


        </asp:View>


        <asp:View ID="View4" runat="server">

            <iframe class="video" src="https://www.youtube.com/embed/axySrE0Kg6k"></iframe>

            <br />
            <asp:Button
                CssClass="newsButton"
                ID="Button4"
                runat="server"
                Text="Następny utwór"
                OnClick="NextImage" />

            <asp:Button
                CssClass="newsButton"
                ID="Button6"
                runat="server"
                Text="Poprzedni utwór"
                OnClick="PreviousImage" />

        </asp:View>



        <asp:View ID="View5" runat="server">

            <iframe class="video" src="https://www.youtube.com/embed/pgQrnuXS_iQ"></iframe>

            <asp:Button
                CssClass="newsButton"
                ID="Button5"
                runat="server"
                Text="Poprzedni utwór"
                OnClick="PreviousImage" />

        </asp:View>
    </asp:MultiView>






</asp:Content>
