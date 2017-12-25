<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ST_Heapmap.aspx.cs" Inherits="Maps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h2>&nbsp;熱點分布</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <article>
        <p>尋找您的位置: <span id="status">checking...</span></p>
    </article>
    <!--Heapmap的圖會貼在這下面-->


    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sdsHeatmap" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT [LFA_ID], [LFA_Lat], [LFA_Long] FROM [LookupFA] ORDER BY [LFA_ID]"></asp:SqlDataSource>
            <asp:GridView ID="gvHeatmap" runat="server" AutoGenerateColumns="False" DataKeyNames="LFA_ID" DataSourceID="sdsHeatmap" CssClass="hidden">
                <Columns>
                    <asp:BoundField DataField="LFA_ID" HeaderText="LFA_ID" ReadOnly="True" SortExpression="LFA_ID" />
                    <asp:BoundField DataField="LFA_Lat" HeaderText="LFA_Lat" SortExpression="LFA_Lat" />
                    <asp:BoundField DataField="LFA_Long" HeaderText="LFA_Long" SortExpression="LFA_Long" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
<%--    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user);
            } else {
                userLogin = null;
                console.log("User is not logined yet.");
                window.location.replace("index.aspx");
            }
        });
    </script>--%>

    <%--注意這裡要放上Google Api Key，我這裡放了Browser key，Lin12的MallardPushPush專案--%>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBh7zYWVOSxIjyglIP5jxt-0eOBsSo_jDU&libraries=visualization"></script>
    <script>
        //《待辦》要從資料庫撈出所有搜尋紀錄的經緯位座標
        var heatmapData = [];
        //var gvHM = document.getElementById("__VIEWSTATE");
        var i = 1;

        $('table > tbody > tr').each(function () {
                var lat = $.trim($(this).find("td:eq(1)").text()); //1是抓取第二欄的文字
                var long = $.trim($(this).find("td:eq(2)").text()); //2是抓取第二欄的文字
                console.log(i + ": " + lat + " , " + long);
                if(i != 1)
                    heatmapData.push(new google.maps.LatLng(lat, long));
                i++;
        });

        /* 填入座標點 (以下測試用) */
        //var heatmapData = [
        //    new google.maps.LatLng(22.59, 120.39),
        //    new google.maps.LatLng(22.60, 120.40),
        //    new google.maps.LatLng(22.59, 120.34),
        //    new google.maps.LatLng(22.58, 120.33),
        //    new google.maps.LatLng(22.50, 120.42),
        //    new google.maps.LatLng(22.57, 120.41),
        //    new google.maps.LatLng(22.56, 120.39),
        //    new google.maps.LatLng(22.61, 120.37),
        //    new google.maps.LatLng(22.59, 120.50),
        //    new google.maps.LatLng(22.49, 120.48),
        //    new google.maps.LatLng(22.50, 120.51),
        //    new google.maps.LatLng(22.57, 120.42),
        //    new google.maps.LatLng(22.56, 120.43),
        //    new google.maps.LatLng(22.61, 120.54),
        //    new google.maps.LatLng(22.55, 120.44),
        //    new google.maps.LatLng(25.21, 121.50),
        //    new google.maps.LatLng(25.19, 121.58),
        //    new google.maps.LatLng(25.10, 121.51),
        //    new google.maps.LatLng(25.21, 121.52),
        //    new google.maps.LatLng(25.16, 121.53),
        //    new google.maps.LatLng(25.11, 121.54),
        //    new google.maps.LatLng(25.15, 121.54)
        //];

        function success(position) {
            var s = document.querySelector('#status');

            if (s.className == 'success') {
                // not sure why we're hitting this twice in FF, I think it's to do with a cached result coming back
                return;
            }

            s.innerHTML = "完成定位! 你的概略位置為: " + position.coords.latitude + ", " + position.coords.longitude + ", 誤差半徑: " + position.coords.accuracy + " 公尺。";
            s.className = 'success';

            var mapcanvas = document.createElement('div');
            mapcanvas.id = 'mapcanvas';
            mapcanvas.style.height = '48em';
            mapcanvas.style.width = '80em';

            document.querySelector('article').appendChild(mapcanvas);

            console.log(position.coords.latitude + " , " + position.coords.longitude + " , Accurcy:" + position.coords.accuracy);

            var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

            var myOptions = {
                zoom: 8,
                //center: latlng,  //這個是您的位置
                center: { lat: 23.60, lng: 121.00 },
                mapTypeControl: false,
                navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL },
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("mapcanvas"), myOptions);

            var marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: "您的位置! (誤差半徑 " + position.coords.accuracy + " 公尺)" //若Google帳號未附於手機，特別不準。
            });


            //附加Heatmap到Google Map去
            var heatmap = new google.maps.visualization.HeatmapLayer({
                data: heatmapData
            });
            heatmap.setMap(map);
        }

        function error(msg) {
            var s = document.querySelector('#status');
            s.innerHTML = typeof msg == 'string' ? msg : "failed";
            s.className = 'fail';

            // console.log(arguments);
        }

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(success, error);
        } else {
            error('您的瀏覽器未支援定位功能');
        }

    </script>
</asp:Content>

