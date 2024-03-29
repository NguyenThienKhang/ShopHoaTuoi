<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="ShopHoaTuoi.TraCuu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="form-inline mb-2 text-center ">
        Giá bán từ:<asp:TextBox ID="txtGiaBanTu" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqfGiaBanTu" runat="server" ErrorMessage="(*)" ControlToValidate="txtGiaBanTu"></asp:RequiredFieldValidator>
        đến:<asp:TextBox ID="txtDen" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqfGiaDen" runat="server" ErrorMessage="(*)" ControlToValidate="txtDen"></asp:RequiredFieldValidator>
        <asp:CompareValidator CssClass="text-danger" ID="cpvDen" runat="server" ErrorMessage="Giá trị lớn phải lớn hơn" ControlToCompare="txtGiaBanTu" ControlToValidate="txtDen" Operator="GreaterThanEqual" Type="Double"></asp:CompareValidator>
        <asp:Button ID="btnSearch" runat="server" Text="SEARCH" /> <br />
       
    </div>
        <div class="row">
        <asp:Repeater runat="server" DataSourceID="dsHoaTheoGia">
            <ItemTemplate>
                <div class="col-md-3">
                    <div class="text-center">
                        <a href="#">
                            <img src="Hinh_San_Pham/<%#Eval("Hinh") %>"style="width:80%" />
                        </a>
                        <br />
                        <h5><%# Eval("TenHoa") %></h5>
                        <span> Giá bán:<span class="text-danger"> <%# Eval("Gia","{0:#,##0} VND") %></span> </span><br />
                        <asp:Button ID="btnAddCart" class="btn btn-primary" runat="server" Text="Add to Cart" />
                    </div>
                  </div>
            </ItemTemplate>
        </asp:Repeater>
</div>
    <asp:SqlDataSource ID="dsHoaTheoGia" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE (([Gia] &gt;= @Gia) AND ([Gia] &lt;= @Gia2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtGiaBanTu" DefaultValue="0" Name="Gia" PropertyName="Text" Type="Double" />
            <asp:ControlParameter ControlID="txtDen" DefaultValue="9999999999" Name="Gia2" PropertyName="Text" Type="Double" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
