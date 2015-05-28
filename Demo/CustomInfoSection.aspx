<%@ Page Language="C#" MasterPageFile="AspNetPager.master" AutoEventWireup="true" MetaDescription="This sample demonstrate how to display customized paging information along with AspNetPager control." CodeFile="CustomInfoSection.aspx.cs" Inherits="CustomInfoSection_Default"%>
<asp:Content ID="Content1" ContentPlaceHolderID="main" Runat="Server">
   <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2" Width="100%">
        <ItemStyle Width="50%"/>
<ItemTemplate>
Order ID��<%#DataBinder.Eval(Container.DataItem,"orderid")%>&nbsp;&nbsp;&nbsp;&nbsp;
Order Date��<font color="red"><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></font><br>
Company Name��<%#DataBinder.Eval(Container.DataItem,"companyname")%><br>
Employee Name��<%#DataBinder.Eval(Container.DataItem,"employeename")%><br>
<hr>
</ItemTemplate>
        </asp:DataList>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" CustomInfoHTML="Page:%CurrentPageIndex% of %PageCount%,%PageSize% records/page" PageIndexBoxStyle="width:19px"></webdiyer:aspnetpager>
</asp:Content>

