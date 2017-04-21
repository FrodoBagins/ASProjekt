<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Mashup.aspx.cs" Inherits="ASProjekt.Mashup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            <div id="gridview">

                <asp:GridView ID="MashupGridView" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" CssClass="DvdGrid">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Category" HeaderText="Category" />
                        <asp:ButtonField Text="View Details" CommandName="SingleClick" />
                    </Columns>
                </asp:GridView>
            </div>
            <div id="detailsview">
                <div id="details">
                    Details

                <asp:Label ID="label" runat="server"></asp:Label>
                </div>

                <div id="dvddetailsview">
                    <asp:DetailsView ID="DvdDetailsView" CellPadding="5" runat="server" GridLines="None" AutoGenerateRows="false" CssClass="DvdDetails">
                        <Fields>
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Category" HeaderText="Category" />
                            <asp:BoundField DataField="Year" HeaderText="Price" />
                        </Fields>

                    </asp:DetailsView>
                </div>
            </div>
        </div>
</asp:Content>
