<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Windows-8-like Animations with CSS3 and jQuery</title>

  <link rel="stylesheet" href="/Eden/res/css/sidebar/demo-styles.css" />
  <link href="/Eden/res/css/indexScreen/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
  <script src="/Eden/res/js/sidebar/modernizr-1.5.min.js"></script>
<style type="text/css"> 
<!-- 
body { overflow:hidden } 
--> 
</style> 
</head>
<body scroll="no">
    <div class="column col-sm-3" id="sidebar" align="center">

    <ul style="width: 80%; margin-top: 100px;" >
     	<!-- about -->
        <a href="about.do">
        <li class="tile tile-big tile-1 slideTextUp">
          <div><p>About</p></div>
          <div><p>What we do?</p></div>
        </li></a>
        <!-- 맵 (국가별, 분포별) -->
		<a href="map.do">
		<li class="tile tile-small tile-7 rotate3d rotate3dX" >
          <div class="faces">
            <div class="front" style="text-align: center; vertical-align: middle;"><i class="fa fa-globe fa-5x" style="padding: 10%; margin-top: 5%"></i></div>
            <div class="back"><p>Endangered Animals List</p></div>
          </div>
        </li></a>
        <a href="map2.do">
		 <li class="tile tile-small last tile-8 rotate3d rotate3dY" >
          <div class="faces"  style="padding: 10%;">
            <div class="front" ><i class="fa fa-crosshairs fa-5x" style="padding: 10%; margin-top: 5%"></i></div>
            <div class="back"><p>Endangered Animals Classificatio</p></div>
          </div>
        </li></a>
        <!-- 비디오 -->
        <a href="video_list.do">
        <li class="tile tile-small tile tile-2 slideTextRight" style="width: 24%; height: 60px; margin: 1px 3px 3px 0px;">
          <div><p>Video</p></div>
          <div><p><i class="fa fa-youtube-play fa-1x"></i></p></div>
        </li></a>
        <!-- 이벤트 -->
        <a href="events_list.do">
        <li class="tile tile-small tile tile-2 slideTextRight" style="width: 24%; height: 60px; margin:1px 2px 3px 1px;">
          <div><p>Event</p></div>
          <div><p><i class="fa fa-calendar fa-1x"></i></p></div>
        </li></a>        
      
        <li class="tile tile-small last tile-3" style="width: 24%; float:right; height: 60px; margin:0px 0px 2px 2px;">
         userPic
        </li>
        <a href="index.do">
        <li class="tile tile-small last tile-2" style="width: 24%; height: 60px; float:right; margin:0px 2px 2px 0px;">
        <div><p>Home</p></div>
        </li></a>
        <!-- 메세지 -->
         <a href="msglist.do">
		 <li class="tile tile-big tile-5" >
          <div><p style="vertical-align: middle;"><i class="fa fa-envelope-o fa-2x" style="margin-right: 8%;"></i>Message</p></div>
        </li></a>
        <!-- 후원 -->
        <a href="side_support.do">
		<li class="tile tile-big tile-6 slideTextLeft" >
          <div><p><i class="fa fa-gift fa-2x" style="margin-right: 8%;"></i>Support</p></div>
          <div><p>Make a Green</p></div>
        </li></a>
        <a href="free_List.do">
        <li class="tile tile-big tile-4 fig-tile" data-page-type="r-page" data-page-name="random-r-page">
          <figure>
            <img src="/Eden/res/img/sidebar/summer.jpg" />
            <figcaption class="tile-caption caption-left"><center>freeboard<i class="fa fa-user fa-4x"></i></center></figcaption>
          </figure>
        </li></a>

		
        <li class="tile tile-big tile-10" style="height: 50px;">
          <div><p>&copy; Projet 2015.</p></div>
        </li>
		</ul>
		</div>
<!--====================================end demo wrapper================================================-->
  <script src="/Eden/res/js/sidebar/jquery-1.8.2.min.js"></script>
  <script src="/Eden/res/js/sidebar/scripts.js"></script>
<br/>
</body>
</html>
