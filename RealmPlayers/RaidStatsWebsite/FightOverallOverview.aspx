﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RaidDamageMasterFrame.Master" AutoEventWireup="true" CodeBehind="FightOverallOverview.aspx.cs" Inherits="VF.RaidDamageWebsite.FightOverallOverview" %>

<%@OutputCache Duration="600" VaryByParam="*" %>

<%@ Register Src="RealmControl.ascx" TagPrefix="uc1" TagName="RealmControl" %>
<%@ Register Src="ClassControl.ascx" TagPrefix="uc1" TagName="ClassControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <script src="assets/js/jquery-1.10.2.min.js"></script>
    <script src='assets/js/charts/raphael-min.js'></script>
    <script src='assets/js/charts/popup.js'></script>
    <script src='assets/js/charts/chart.js?version=15'></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <ul class="breadcrumb">
        <%= m_BreadCrumbHTML %>
    </ul><!--/.breadcrumb -->
    <header class="page-header">  
        <div class="row">
          <div class="span8">
              <%= m_InfoTextHTML %>
          </div>
          <div class="span4" style="min-width:200px;">
              <div style="margin: 0px 0px 0px 10px; float:right; ">
                    <uc1:RealmControl runat="server" ID="RealmControl" />
                </div>
              <div style="margin: 0px 0px 0px 0px; float:right; ">
                    <uc1:ClassControl runat="server" ID="ClassControl" />
                </div>
          </div>
        </div>
    </header>
    <div class="row">
        <div class="span12">
            <div class="fame">
                <%= m_GraphSection %>
            </div>
        </div>
    </div>
</asp:Content>
