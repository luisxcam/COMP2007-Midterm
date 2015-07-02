<%@ Page Title="COMP2007_Midterm" Language="C#" MasterPageFile="~/MasterPages/Default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2007_Midterm._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Game calculator-->
    <div id="crudPanel" class="panel panel-primary" runat="server">

        <!--Panel Heading-->
        <div class="panel-heading">
            <h1 id="crud-title" class="panel-title text-center">Database Control</h1>
        </div>

        <!--Panel Content-->
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row">
                        <div class="col-md-6">
                            <a href="Courses/Insert.aspx">Courses/Insert.aspx</a>
                        </div>
                        <div class="col-md-6">
                            <a href="Courses/Delete.aspx">Courses/Delete.aspx</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="Courses/Details.aspx">Courses/Details.aspx</a>
                        </div>
                        <div class="col-md-6">
                            <a href="Courses/Edit.aspx">Courses/Edit.aspx</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--.row-->
        </div>
        <!--.panel-body-->
    </div>
</asp:Content>
