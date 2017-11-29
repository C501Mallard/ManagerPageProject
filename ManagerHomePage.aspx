<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ManagerHomePage.aspx.cs" Inherits="ManagerHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #glyimage {
            font-size: 50px;
        }

        .hang {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">首頁</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <%--<form id="form1" runat="server">
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i id="glyimage" class="glyphicon glyphicon-book"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="hang"></div>
                           
                            </div>
                        </div>
                    </div>
                    <a href="Default.aspx">
                        <div class="panel-footer">
                            <span class="pull-left" href="SearchFA.aspx">查詢</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i id="glyimage" class="glyphicon glyphicon-knight"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="hang"></div>
                            </div>
                        </div>
                    </div>
                    <a href="Default.aspx">
                        <div class="panel-footer">
                            <span class="pull-left" href="PlayGame.aspx">遊戲</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-yellow">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i id="glyimage" class="glyphicon glyphicon-star-empty"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="hang"></div>
                              
                            </div>
                        </div>
                    </div>
                    <a href="Default.aspx">
                        <div class="panel-footer">
                            <span class="pull-left">我的最愛</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i id="glyimage" class="glyphicon glyphicon-comment"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="hang">13</div>
                                
                            </div>
                        </div>
                    </div>
                    <a href="Default.aspx">
                        <div class="panel-footer">
                            <span class="pull-left" href="PlayGame.aspx">推播</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>

                        </div>
                    </a>
                </div>
            </div>
        </div>
    </form>--%>




</asp:Content>

