<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="PushNotifications.aspx.cs" Inherits="Favorite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="vendor/jquery/jquery.min.js"></script>
    <script>

        //測試用
        //alert("Hello World!");
        //console.log("Hello World!!!");
        //$(document).ready(function () {
        //    $("#HideP").click(function () {
        //        $("p").hide();
        //    });
        //});

        $(document).ready(function () {
            $("#PostC501PC").click(function () {
                var json = {
                    //標的IID
                    "to": "eZ-dqFBiie8:APA91bHIS_hEyvQ9qixZCLSYIAy_mqWYPu3UyCu8u98_LhGSXGHsgK2P6t4ppgkQ-7CdaBogZA9MooRUT31Wd7r1l4_LURzb_ppe6hYBNBzDRyofVwHfLjoK51VqyvLfrfE-DoW37IB3",

                    //推播內容
                    "notification": {
                        "title": "食品添加物查詢系統呦",                           //主旨
                        "body": "推播測試",                                        //內容
                        "icon": "firebase-logo.png",                               //推播訊息的圖示
                        "click_action": "https://rookiefcm-2c5d0.firebaseapp.com"  //按下推播圖示後，要連向哪個網址
                    }
                };

                json.to = "ewXkxWxP_ig:APA91bEglMx1i8PLByfdyDPLarqBsOOXQXXRod4y3vO5WnhfO0tIiOy_6OAamDOg3fQGedxavOvceyawZKgA6XpVznxRk9ggu6BVZ2I7uuWXKIzJZXXHghwhL3FjNdlVc3BeCHg_LyuX";
                json.notification.title = "幸運草APP";
                json.notification.body = "推播測試";
                json.notification.icon = "clover.jpg";
                json.notification.click_action = "https://tw.yahoo.com";

                //JQuery的Http Post request，底下除了在建新的Firebase專案時須更改Authorization的key以外，其他不用改。
                $.ajax({
                    url: 'https://fcm.googleapis.com/fcm/send',
                    type: "POST",
                    processData: false,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader('Content-Type', 'application/json');
                        xhr.setRequestHeader('Authorization', 'key=AAAAqdPVG7A:APA91bEOk3rg2jh1L0Ch9VqLlzOMWTRmAYS8qY4zj2o31QPzuGlRYpNZUDhHLxuFzXkMMth3ZLZJOMqWXiXRrkVA6kyFXawecmGZ4BIEC74TBMRzWSLglhXMTgXcp-qUdng81NpCaaMJ');
                    },
                    data: JSON.stringify(json),
                    success: function () {
                        console.log("傳送成功");
                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
            });

            $(document).ready(function () {
                $("#PostS7Edge").click(function () {
                    var json = {
                        //標的IID
                        "to": "eZ-dqFBiie8:APA91bHIS_hEyvQ9qixZCLSYIAy_mqWYPu3UyCu8u98_LhGSXGHsgK2P6t4ppgkQ-7CdaBogZA9MooRUT31Wd7r1l4_LURzb_ppe6hYBNBzDRyofVwHfLjoK51VqyvLfrfE-DoW37IB3",

                        //推播內容
                        "notification": {
                            "title": "食品添加物查詢系統呦",                           //主旨
                            "body": "推播測試",                                        //內容
                            "icon": "firebase-logo.png",                               //推播訊息的圖示
                            "click_action": "https://rookiefcm-2c5d0.firebaseapp.com"  //按下推播圖示後，要連向哪個網址
                        }
                    };

                    json.to = "eaGQKyzcLf4:APA91bG13BbT1mqPjFx7f0ZCZH1RNKhMi18VoLWT5DGvH5UwtQRE73KSlpE3Wf2xXmiuEVvzEGB95affuOYah39l4-Ne2zmpUK8cYjosAKgihMFqh1dG13dhFsMT7Iq_OeP95MNb4e-p";
                    json.notification.title = "幸運草APP";
                    json.notification.body = "推播測試";
                    json.notification.icon = "clover.jpg";
                    json.notification.click_action = "https://tw.yahoo.com";

                    //JQuery的Http Post request，底下除了在建新的Firebase專案時須更改Authorization的key以外，其他不用改。
                    $.ajax({
                        url: 'https://fcm.googleapis.com/fcm/send',
                        type: "POST",
                        processData: false,
                        beforeSend: function (xhr) {
                            xhr.setRequestHeader('Content-Type', 'application/json');
                            xhr.setRequestHeader('Authorization', 'key=AAAAqdPVG7A:APA91bEOk3rg2jh1L0Ch9VqLlzOMWTRmAYS8qY4zj2o31QPzuGlRYpNZUDhHLxuFzXkMMth3ZLZJOMqWXiXRrkVA6kyFXawecmGZ4BIEC74TBMRzWSLglhXMTgXcp-qUdng81NpCaaMJ');
                        },
                        data: JSON.stringify(json),
                        success: function () {
                            console.log("傳送成功");
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    });
                });
            });

            $(document).ready(function () {
                $("#Post").click(function () {
                    var json = {
                        //標的IID
                        "to": "ewXkxWxP_ig:APA91bEglMx1i8PLByfdyDPLarqBsOOXQXXRod4y3vO5WnhfO0tIiOy_6OAamDOg3fQGedxavOvceyawZKgA6XpVznxRk9ggu6BVZ2I7uuWXKIzJZXXHghwhL3FjNdlVc3BeCHg_LyuX",

                        //推播內容
                        "notification": {
                            "title": "食品添加物查詢系統呦",                           //主旨
                            "body": "推播測試",                                        //內容
                            "icon": "firebase-logo.png",                               //推播訊息的圖示
                            "click_action": "https://rookiefcm-2c5d0.firebaseapp.com"  //按下推播圖示後，要連向哪個網址
                        }
                    };

                    json.to = "ewXkxWxP_ig:APA91bEglMx1i8PLByfdyDPLarqBsOOXQXXRod4y3vO5WnhfO0tIiOy_6OAamDOg3fQGedxavOvceyawZKgA6XpVznxRk9ggu6BVZ2I7uuWXKIzJZXXHghwhL3FjNdlVc3BeCHg_LyuX";
                    json.notification.title = $("#inputTitle").val();
                    json.notification.body = $("#inputBody").val();
                    json.notification.icon = $("#inputIcon").val();
                    json.notification.click_action = $("#inputClickAction").val();

                    //JQuery的Http Post request，底下除了在建新的Firebase專案時須更改Authorization的key以外，其他不用改。
                    $.ajax({
                        url: 'https://fcm.googleapis.com/fcm/send',
                        type: "POST",
                        processData: false,
                        beforeSend: function (xhr) {
                            xhr.setRequestHeader('Content-Type', 'application/json');
                            xhr.setRequestHeader('Authorization', 'key=AAAAqdPVG7A:APA91bEOk3rg2jh1L0Ch9VqLlzOMWTRmAYS8qY4zj2o31QPzuGlRYpNZUDhHLxuFzXkMMth3ZLZJOMqWXiXRrkVA6kyFXawecmGZ4BIEC74TBMRzWSLglhXMTgXcp-qUdng81NpCaaMJ');
                        },
                        data: JSON.stringify(json),
                        success: function () {
                            console.log("傳送成功");
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    });
                });
            });

            // Retrieve Firebase Messaging object.


            //$(document).ready(function () {
            //    $("#AddIIDGroup").click(function () {
            //        const messaging = firebase.messaging();

            //        // Get Instance ID token. Initially this makes a network call, once retrieved
            //        // subsequent calls to getToken will return from cache.
            //        messaging.getToken()
            //        .then(function(currentToken) {
            //            if (currentToken) {
            //                sendTokenToServer(currentToken);
            //                updateUIForPushEnabled(currentToken);
            //            } else {
            //                // Show permission request.
            //                console.log('No Instance ID token available. Request permission to generate one.');
            //                // Show permission UI.
            //                updateUIForPushPermissionRequired();
            //                setTokenSentToServer(false);
            //            }
            //        })
            //        .catch(function(err) {
            //            console.log('An error occurred while retrieving token. ', err);
            //            showToken('Error retrieving Instance ID token. ', err);
            //            setTokenSentToServer(false);
            //        });
            //    });
            //});
        });

        firebase:sseion::
    </script>

    <style>
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <h3><i class="col-lg-12"></i>&nbsp;推播</h3>
        <hr />
    </div>


    <div class="form-group h4">
        <label for="inputTitle">主旨</label>
        <input class="form-control input-lg" id="inputTitle" type="text" />
    </div>

    <div class="form-group h4">
        <label for="inputBody">內容</label>
        <input class="form-control input-lg" id="inputBody" type="text" />
    </div>

    <div class="form-group h4">
        <label for="inputIcon">圖示</label>
        <input class="form-control input-lg" id="inputIcon" type="text" />
    </div>

    <div class="form-group h4">
        <label for="inputClickAction">轉出頁網址</label>
        <input class="form-control input-lg" id="inputClickAction" type="text" />
    </div>

    <%--    <div class="row">
        <!-- /.col-lg-12 -->
        <label class="h4">主　題：</label><input id="txtTitle" type="text" /><br />
    </div>

    <div class="row">
        <!-- /.col-lg-12 -->
        <label class="h4">內　容：</label><input id="txtBody" type="text" /><br />
    </div>

    <div class="row">
        <!-- /.col-lg-12 -->
        <label class="h4">圖　示：</label><input id="txtIcon" type="text" /><br />
    </div>

    <div class="row">
        <!-- /.col-lg-12 -->
        <label class="h4">轉入頁：</label><input id="txtClickAction" type="text" /><br />
    </div>--%>

    <br />
    <div>
        <input id="Post" type="submit" value="推播" class="btn btn-primary" />
    </div>

    <hr />

    <div>
        <div class="row">
            <!-- /.col-lg-12 -->
            <label class="h4">Instance ID：</label><input id="txtClassifyIID" type="text" /><br />
        </div>

        <input id="AddIIDGroup" type="submit" value="加入IID群組" class="btn btn-info" />


    </div>

    <hr />

    <div>
        <button id="PostC501PC" type="button" class="btn btn-primary">推播至我的C501 PC</button><br />
        <br />
        <button id="PostS7Edge" type="button" class="btn btn-success">推播至我的Samsung S7 edge</button><br />

    </div>

    <!--以下都是測試用-->
    <%--    <button id="console">Console</button><br />
    <button id="alert">Alert</button><br />
    <button id="HideP">HideP</button><br />
    <p>真的</p>
    <br />
    <p>快一點</p>
    <br />
    <p>不要再鬧了</p>
    <br />--%>

    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user)
            } else {
                userLogin = null;
                console.log("User is not logined yet.");
                window.location.replace("~/index.aspx");
            }
        });
    </script>

</asp:Content>

