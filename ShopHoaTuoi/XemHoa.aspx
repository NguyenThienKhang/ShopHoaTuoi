<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="ShopHoaTuoi.XemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>ĐAY LA PAGE XEM HOA</h1>
    <div class="form-inline">
        Chọn danh mục loại:<asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" DataSourceID="dsLoai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList>

       
        <asp:SqlDataSource ID="dsLoai" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>


        <asp:SqlDataSource ID="dsHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <div class="row">
            <asp:Repeater runat="server" DataSourceID="dsHoa">
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
     
</asp:Content>
