﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFrame.Master" AutoEventWireup="true" CodeBehind="RareItemsList.aspx.cs" Inherits="RealmPlayersServer.RareItemsList" %>

<%@ Register Src="~/RealmControl.ascx" TagPrefix="uc1" TagName="RealmControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <ul class="breadcrumb">
        <%= m_BreadCrumbHTML %>
    </ul><!--/.breadcrumb -->

    <div class="row">
        <div class="span9">
            <%= m_ItemUsageInfoHTML %>
        </div>
        <div class="span3">
            <uc1:RealmControl runat="server" ID="RealmControl" />
        </div>
    </div>
    
    <table id="characters-table" class="table">
        <thead>
            <%= m_TableHeadHTML %>
        </thead>
        <tbody>
            <%= m_TableBodyHTML %>
        </tbody>
    </table>

    <div class="pagination text-center">
        <ul>
            <li class="disabled"><a href="#">First</a></li>
            <li class="disabled"><a href="#">Prev</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">...</a></li>
            <li><a href="#">Next</a></li>
            <li><a href="#">Last</a></li>
        </ul>
    </div> <!-- /pagination -->
</asp:Content>
