<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>5<br />
            </centrer><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59577.96845379985!2d105.72650549530823!3d21.047764412795544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454c4a7c60651%3A0xbec6bd3e12f90b7!2zUGjDuiBEaeG7hW4sIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1476354061783" width="450" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></centrer>
            <%: Title %></h1>
    </hgroup>

    <div class="time-post" style="box-sizing: border-box; margin: 5px 0px; padding: 0px; border: 0px none; font-style: italic; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        17:28 07/10/2008<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MACTHD" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MACTHD" HeaderText="MACTHD" ReadOnly="True" SortExpression="MACTHD" />
                <asp:BoundField DataField="MAHD" HeaderText="MAHD" SortExpression="MAHD" />
                <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
                <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        bảng 2<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [CTHD] WHERE [MACTHD] = @MACTHD" InsertCommand="INSERT INTO [CTHD] ([MACTHD], [MAHD], [MASP], [SOLUONG]) VALUES (@MACTHD, @MAHD, @MASP, @SOLUONG)" SelectCommand="SELECT [MACTHD], [MAHD], [MASP], [SOLUONG] FROM [CTHD]" UpdateCommand="UPDATE [CTHD] SET [MAHD] = @MAHD, [MASP] = @MASP, [SOLUONG] = @SOLUONG WHERE [MACTHD] = @MACTHD">
            <DeleteParameters>
                <asp:Parameter Name="MACTHD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MACTHD" Type="Int32" />
                <asp:Parameter Name="MAHD" Type="Int32" />
                <asp:Parameter Name="MASP" Type="Int32" />
                <asp:Parameter Name="SOLUONG" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MAHD" Type="Int32" />
                <asp:Parameter Name="MASP" Type="Int32" />
                <asp:Parameter Name="SOLUONG" Type="Int32" />
                <asp:Parameter Name="MACTHD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAHD" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MAHD" HeaderText="MAHD" ReadOnly="True" SortExpression="MAHD" />
                <asp:BoundField DataField="SOHD" HeaderText="SOHD" SortExpression="SOHD" />
                <asp:BoundField DataField="MAKH" HeaderText="MAKH" SortExpression="MAKH" />
                <asp:BoundField DataField="NGAYBANHANG" HeaderText="NGAYBANHANG" SortExpression="NGAYBANHANG" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [HOADON] WHERE [MAHD] = @MAHD" InsertCommand="INSERT INTO [HOADON] ([MAHD], [SOHD], [MAKH], [NGAYBANHANG]) VALUES (@MAHD, @SOHD, @MAKH, @NGAYBANHANG)" SelectCommand="SELECT [MAHD], [SOHD], [MAKH], [NGAYBANHANG] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [SOHD] = @SOHD, [MAKH] = @MAKH, [NGAYBANHANG] = @NGAYBANHANG WHERE [MAHD] = @MAHD">
            <DeleteParameters>
                <asp:Parameter Name="MAHD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MAHD" Type="Int32" />
                <asp:Parameter Name="SOHD" Type="String" />
                <asp:Parameter Name="MAKH" Type="Int32" />
                <asp:Parameter Name="NGAYBANHANG" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SOHD" Type="String" />
                <asp:Parameter Name="MAKH" Type="Int32" />
                <asp:Parameter Name="NGAYBANHANG" Type="DateTime" />
                <asp:Parameter Name="MAHD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        bảng 3<br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAKH" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MAKH" HeaderText="MAKH" ReadOnly="True" SortExpression="MAKH" />
                <asp:BoundField DataField="HO_TEN" HeaderText="HO_TEN" SortExpression="HO_TEN" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [KHACHHANG] ([MAKH], [HO_TEN], [EMAIL]) VALUES (@MAKH, @HO_TEN, @EMAIL)" SelectCommand="SELECT [MAKH], [HO_TEN], [EMAIL] FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [HO_TEN] = @HO_TEN, [EMAIL] = @EMAIL WHERE [MAKH] = @MAKH">
            <DeleteParameters>
                <asp:Parameter Name="MAKH" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MAKH" Type="Int32" />
                <asp:Parameter Name="HO_TEN" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HO_TEN" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="MAKH" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        bảng 4:<br />
        <asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MALSP" DataSourceID="SqlDataSource4" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MALSP" HeaderText="MALSP" ReadOnly="True" SortExpression="MALSP" />
                <asp:BoundField DataField="TELSP" HeaderText="TELSP" SortExpression="TELSP" />
                <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [LOAISP] WHERE [MALSP] = @MALSP" InsertCommand="INSERT INTO [LOAISP] ([MALSP], [TELSP], [MASP]) VALUES (@MALSP, @TELSP, @MASP)" SelectCommand="SELECT [MALSP], [TELSP], [MASP] FROM [LOAISP]" UpdateCommand="UPDATE [LOAISP] SET [TELSP] = @TELSP, [MASP] = @MASP WHERE [MALSP] = @MALSP">
            <DeleteParameters>
                <asp:Parameter Name="MALSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MALSP" Type="Int32" />
                <asp:Parameter Name="TELSP" Type="String" />
                <asp:Parameter Name="MASP" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TELSP" Type="String" />
                <asp:Parameter Name="MASP" Type="Int32" />
                <asp:Parameter Name="MALSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        bảng 5:<br />
        <asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MASP" DataSourceID="SqlDataSource5" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                <asp:BoundField DataField="MALSP" HeaderText="MALSP" SortExpression="MALSP" />
                <asp:BoundField DataField="DVT" HeaderText="DVT" SortExpression="DVT" />
                <asp:BoundField DataField="TENSP" HeaderText="TENSP" SortExpression="TENSP" />
                <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
                <asp:BoundField DataField="MOTA" HeaderText="MOTA" SortExpression="MOTA" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MASP] = @MASP" InsertCommand="INSERT INTO [SANPHAM] ([MASP], [MALSP], [DVT], [TENSP], [GIA], [MOTA]) VALUES (@MASP, @MALSP, @DVT, @TENSP, @GIA, @MOTA)" SelectCommand="SELECT [MASP], [MALSP], [DVT], [TENSP], [GIA], [MOTA] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [MALSP] = @MALSP, [DVT] = @DVT, [TENSP] = @TENSP, [GIA] = @GIA, [MOTA] = @MOTA WHERE [MASP] = @MASP">
            <DeleteParameters>
                <asp:Parameter Name="MASP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MASP" Type="Int32" />
                <asp:Parameter Name="MALSP" Type="Int32" />
                <asp:Parameter Name="DVT" Type="String" />
                <asp:Parameter Name="TENSP" Type="String" />
                <asp:Parameter Name="GIA" Type="Decimal" />
                <asp:Parameter Name="MOTA" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MALSP" Type="Int32" />
                <asp:Parameter Name="DVT" Type="String" />
                <asp:Parameter Name="TENSP" Type="String" />
                <asp:Parameter Name="GIA" Type="Decimal" />
                <asp:Parameter Name="MOTA" Type="String" />
                <asp:Parameter Name="MASP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </asp:Content>