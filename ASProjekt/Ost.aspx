<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Ost.aspx.cs" Inherits="ASProjekt.Ost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ASProjekt.AlbumDetails" DeleteMethod="album_delete" InsertMethod="album_insert" SelectMethod="album_select_all" TypeName="ASProjekt.AlbumDB" UpdateMethod="album_update" OnUpdated="ObjectDataSource1_Updated">
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Compositor" Type="String" />
                <asp:Parameter Name="Distributor" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" ShowFooter="true" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="Id">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Compositor" HeaderText="Compositor" SortExpression="Compositor" />
                <asp:BoundField DataField="Distributor" HeaderText="Distributor" SortExpression="Distributor" />
            </Columns>
        </asp:GridView>

        <asp:ObjectDataSource ID="albums" runat="server" TypeName="ASProjekt.AlbumDB" SelectMethod="album_select_all"></asp:ObjectDataSource>

        <asp:DropDownList ID="AlbumDropDownList" runat="server" AutoPostBack="true" DataSourceID="albums" DataTextField="Title" DataValueField="Id"></asp:DropDownList>



        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DataObjectTypeName="ASProjekt.TrackDetails" OnUpdated="ObjectDataSource2_Updated" DeleteMethod="track_delete" InsertMethod="track_insert" SelectMethod="track_select_by_album" TypeName="ASProjekt.TrackDB" UpdateMethod="track_update">
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Length" Type="String" />
                <asp:Parameter Name="AlbumId" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="AlbumDropDownList" Name="AlbumId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" DataKeyNames="Id">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" SortExpression="AlbumId" />
            </Columns>
        </asp:GridView>

        <div id="gridview">

            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DataObjectTypeName="ASProjekt.AlbumDetails" OnUpdated="ObjectDataSource4_Updated" InsertMethod="album_insert" OnInserted="ObjectDataSource4_Inserted" SelectMethod="album_by_id" OnSelected="ObjectDataSource1_Selected" TypeName="ASProjekt.AlbumDB" UpdateMethod="album_update">
                <SelectParameters>
                    <asp:ControlParameter DefaultValue="1" Name="Id" ControlID="GridView1" PropertyName="SelectedValue" />
                </SelectParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Year" Type="Int32" />
                    <asp:Parameter Name="Compositor" Type="String" />
                    <asp:Parameter Name="Distributor" Type="String" />
                </InsertParameters>
            </asp:ObjectDataSource>

            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="ObjectDataSource4" Height="50px" Width="125px" AutoGenerateRows="False">
                <Fields>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    <asp:TemplateField HeaderText="Id" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text="auto id"></asp:Label>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Compositor" HeaderText="Compositor" SortExpression="Compositor" />
                    <asp:BoundField DataField="Distributor" HeaderText="Distributor" SortExpression="Distributor" />
                </Fields>
            </asp:DetailsView>



            <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DataObjectTypeName="ASProjekt.TrackDetails" DeleteMethod="track_delete" InsertMethod="track_insert" SelectMethod="track_by_id" TypeName="ASProjekt.TrackDB" UpdateMethod="track_update" OnInserted="ObjectDataSource5_Inserted" OnUpdated="ObjectDataSource5_Updated">
                <SelectParameters>
                    <asp:ControlParameter DefaultValue="9" Name="Id" ControlID="GridView2" PropertyName="SelectedValue" />
                </SelectParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Length" Type="String" />
                    <asp:Parameter Name="AlbumId" Type="Int32" />
                </InsertParameters>
            </asp:ObjectDataSource>




            <asp:DetailsView ID="DetailsView2" runat="server" DataSourceID="ObjectDataSource5" Height="50px" Width="125px" AutoGenerateRows="False">
                <Fields>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    <asp:TemplateField HeaderText="Id" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text="auto id"></asp:Label>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                    <asp:BoundField DataField="AlbumId" HeaderText="AlbumId" SortExpression="AlbumId" />
                </Fields>
            </asp:DetailsView>

        </div>
        <div id="detailsview">
            <div id="details">
            </div>

        </div>
    </div>
</asp:Content>
