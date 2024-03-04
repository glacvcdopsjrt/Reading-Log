<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div style="background-color:cadetblue; color:white; font-size:xx-large" align="center">
    <strong>READING LOG</strong>
    <div style="font-size:medium">
        A web form application built using ASP.NET with Visual Basic
    </div>
</div>
<br />
<div style="padding:15px">

    <table class="nav-justified">

        <tr>
    <td>
        <asp:Label ID ="LogIdLabel" runat="server" Text="Log #" Font-Bold="true" Font-Size="Medium"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="LogIdTextBox" runat="server" Font-Size="Medium" Width="100px"></asp:TextBox>
   
    </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID ="ReaderIdLabel" runat="server" Text="Reader ID" Font-Bold="true" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ReaderIdTextBox" runat="server" Font-Size="Medium" Width="100px"></asp:TextBox>
           
            </td>
        </tr>
        <tr>
            <td style="height: 24px">
                <asp:Label ID="DateLabel" runat="server" Text="Date" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="DateTextBox" runat="server" Font-Size="Medium" Width="50px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="DateTextBox_CalendarExtender" runat="server" BehaviorID="DateTextBox_CalendarExtender" TargetControlID="DateTextBox">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TitleLabel" runat="server" Text="Title" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleTextBox" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 24px">
                <asp:Label ID="AuthorLabel" runat="server" Text="Author" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="AuthorTextBox" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="TimeLabel" runat="server" Text="Time" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="TimeDropDownList" runat="server">
                    <asp:ListItem Selected="True" Value="0">0 min</asp:ListItem>
                    <asp:ListItem Value="15">15 min</asp:ListItem>
                    <asp:ListItem Value="30">30 min</asp:ListItem>
                    <asp:ListItem Value="45">45 min</asp:ListItem>
                    <asp:ListItem Value="60">60 min</asp:ListItem>
                    <asp:ListItem Value="75">1 hr 15 min</asp:ListItem>
                    <asp:ListItem Value="90">1 hr 30 min</asp:ListItem>
                    <asp:ListItem Value="105">1 hr 45 min</asp:ListItem>
                    <asp:ListItem Value="120">2 hrs</asp:ListItem>
                    <asp:ListItem Value="135">2 hrs 15 min</asp:ListItem>
                    <asp:ListItem Value="150">2 hrs 30 min</asp:ListItem>
                    <asp:ListItem Value="165">2 hrs 45 min</asp:ListItem>
                    <asp:ListItem Value="180">3 hrs</asp:ListItem>
           
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PagesLabel" runat="server" Text="Pages" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PagesTextBox" runat="server" Font-Size="Medium" Width="50px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CommentsLabel" runat="server" Text="Comments" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CommentsTextBox" runat="server" Font-Size="Medium" Height="100px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td> </td>
            <td> </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" Font-Size="Medium" BackColor="CadetBlue" Font-Bold="True" ForeColor="White" Height="33px" Width="100px" />
            &nbsp;<asp:Button ID="UpdateButton" runat="server" Text="Update" Font-Size="Medium" BackColor="CadetBlue" Font-Bold="True" ForeColor="White" Height="33px" Width="100px" />
            &nbsp;<asp:Button ID="DeleteButton" runat="server" Text="Delete" Font-Size="Medium" BackColor="CadetBlue" Font-Bold="True" ForeColor="White" Height="33px" Width="100px" />
            </td>
        </tr>
    </table>
    <div align="center">
        <hr />
        <asp:GridView ID="ReadingLogGridView" runat="server" ForeColor="Black" Width="80%">
            <HeaderStyle BackColor="CadetBlue" />
        </asp:GridView>
    </div>
</div>


</asp:Content>
