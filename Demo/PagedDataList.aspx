<%@ Page Language="C#" AutoEventWireup="true" MetaDescription="This sample demonstrate how to use AspNetPager control to add paging functionality to the DataList control."  CodeFile="PagedDataList.aspx.cs" Inherits="PagedDataList_Default"  MasterPageFile="AspNetPager.master"%>

<asp:Content runat="server" ContentPlaceHolderID="main">
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
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        width="100%"></webdiyer:aspnetpager>
</asp:Content>
