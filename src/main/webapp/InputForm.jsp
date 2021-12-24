<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
 <style>
   
   body {
  margin:0px;
  height:100vh;
  background: #1283da;
}
.center {
  height:100%;
  display:flex;
  align-items:center;
  justify-content:center;

}
.form-input {
  width:350px;
  padding:20px;
  background:#fff;
  box-shadow: -3px -3px 7px rgba(94, 104, 121, 0.377),
              3px 3px 7px rgba(94, 104, 121, 0.377);
}
.form-input input {
  display:none;

}
.form-input label {
  display:block;
  width:45%;
  height:45px;
  margin-left: 25%;
  line-height:50px;
  text-align:center;
  background:#1172c2;

  color:#fff;
  font-size:15px;
  font-family:"Open Sans",sans-serif;
  text-transform:Uppercase;
  font-weight:600;
  border-radius:5px;
  cursor:pointer;
}

.form-input img {
  width:100%;
  display:none;

  margin-bottom:30px;
}

   
  </style>

<style>
//import font from google
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900);

//import compass
@import "compass";

//colors
$primary-color: #ff512f;
$secondary-color: #333;
$form-bg: #fff;

//contact form
.contact-form {
  margin-top: 30px;
  .input-block {
    background-color: rgba(white, 0.8);
    border: solid 1px $primary-color;
    width: 100%;
    height: 60px;
    padding: 25px;
    position: relative;
    margin-bottom: 20px;
    @include transition(all 0.3s ease-out);
    &.focus {
      background-color: $form-bg;
      border: solid 1px darken($primary-color, 10%);
    }
    &.textarea {
      height: auto;
      .form-control {
        height: auto;
        resize: none;
      }
    }
    label {
      position: absolute;
      left: 25px;
      top: 25px;
      display: block;
      margin: 0;
      font-weight: 300;
      z-index: 1;
      color: $secondary-color;
      font-size: 18px;
      line-height: 10px;
    }
    .form-control {
      background-color: transparent;
      padding: 0;
      border: none;
      @include border-radius(0);
      @include box-shadow(none);
      height: auto;
      position: relative;
      z-index: 2;
      font-size: 18px;
      color: $secondary-color;
    }
    .form-control:focus {
      label {
        top: 0;
      }
    }
  }
  .square-button {
    background-color: rgba(white, 0.8);
    color: darken($primary-color, 10%);
    font-size: 26px;
    text-transform: uppercase;
    font-weight: 700;
    text-align: center;
    @include border-radius(2px);
    @include transition(all 0.3s ease);
    padding: 0 60px;
    height: 60px;
    border: none;
    width: 100%;
    &:hover,
    &:focus {
      background-color: white;
    }
  }
}

//tablet and above devices
@media (min-width: 768px) {
  .contact-wrap {
    width: 60%;
    margin: auto;
  }
}

//////////////////////////
/*----page styles---*/
//////////////////////////
body {
  @include background-image(linear-gradient(to right, $primary-color, #dd2476));
  font-family: "Roboto", sans-serif;
}
.contact-wrap {
  padding: 15px;
}

h1 {
  background-color: white;
  color: lighten($primary-color, 10%);
  padding: 40px;
  margin: 0 0 50px;
  font-size: 30px;
  text-transform: uppercase;
  font-weight: 700;
  text-align: center;
  small {
    font-size: 18px;
    display: block;
    text-transform: none;
    font-weight: 300;
    margin-top: 10px;
    color: lighten($primary-color, 10%);
  }
}

//follow me template
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
  i {
    font-style: normal;
    color: #f50057;
    font-size: 14px;
    position: relative;
    top: 2px;
  }
  a {
    color: #fff;
    text-decoration: none;
    &:hover {
      text-decoration: underline;
    }
  }
}

</style>


<style>
/* background image */
body {
  background-image: url('./images/bg.webp');
  background-repeat: no-repeat;
    background-attachment: fixed;
  background-size: cover;
}


label {
    color: navajowhite;
}
</style>

<!-- Moving backgorund -->
<style type="text/css">


@keyframes move-background {
  from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}
@-webkit-keyframes move-background {
  from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

@-moz-keyframes move-background {    
	from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

    @-webkit-keyframes move-background {
	from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

.background-container{
	position: fixed;
	top: 0;
	left:0;
	bottom: 0;
	right: 0;
}

.stars {
 background: black url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/stars.png) repeat;
 position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	display: block;
  	z-index: 0;
}

.twinkling{
	width:10000px;
	height: 100%;
	background: transparent url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/twinkling.png") repeat;
	background-size: 1000px 1000px;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 2;
    
    -moz-animation:move-background 70s linear infinite;
  -ms-animation:move-background 70s linear infinite;
  -o-animation:move-background 70s linear infinite;
  -webkit-animation:move-background 70s linear infinite;
  animation:move-background 70s linear infinite;
	
}

.clouds{
	width:10000px;
	height: 100%;
	background: transparent url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/clouds_repeat.png") repeat;
	background-size: 1000px 1000px;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 3;

   -moz-animation:move-background 150s linear infinite;
  -ms-animation:move-background 150s linear infinite;
  -o-animation:move-background 150s linear infinite;
  -webkit-animation:move-background 150s linear infinite;
  animation:move-background 150s linear infinite;
}
img{
  height: 70vh;
  width:70vh;
  position: absolute;
  z-index: 3;
  right: 20px;
}


.mainheading {
    background: transparent;
    color: antiquewhite;
    font-family: cursive;
    font-weight: bold;
    font-size: xx-large;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<title>Datascience testcase form</title>


</head>
<body>
<div class="background-container">

<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/moon2.png" alt="">
<div class="stars"></div>
<div class="twinkling"></div>
<div class="clouds"></div>
</div>




<div id="form" class ="col-m-12" >

<section class="contact-wrap">

<div class="col-sm-12">

<h1 class="m-0 mainheading">Analytics test data input</h1>
</div>
  <form action="InsertData" class="contact-form" method="POST">
<div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">SiteId</label><input type="text" id="SiteId" name="SiteId" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">SiteName</label><input type="text" id="SiteName" name="SiteName" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">CameraId</label><input type="text" id="CameraId" name="CameraId" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">CameraName</label><input type="text" id="CameraName" name="CameraName" class="form-control">
      </div>
</div> <div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">AnalyticType</label><input type="text" id="AnalyticType" name="AnalyticType" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">AnalyticName</label><input type="text" id="AnalyticName" name="AnalyticName" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">TestId</label><input type="text" id="TestId" name="TestId" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">Resolution</label><input type="text" id="Resolution" name="Resolution" class="form-control">
      </div>
</div> <div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">Polygon</label><input type="text" id="Polygon" name="Polygon" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">SkipFrames</label><input type="text" id="SkipFrames" name="SkipFrames" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">ConfThreshold</label><input type="text" id="ConfThreshold" name="ConfThreshold" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">NMSThreshold</label><input type="text" id="NMSThreshold" name="NMSThreshold" class="form-control">
      </div>
</div> <div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">MaxAge</label><input type="text" id="MaxAge" name="MaxAge" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">MinHits</label><input type="text" id="MinHits" name="MinHits" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">iOU</label><input type="text" id="iOU" name="iOU" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">ModelUsed</label><input type="text" id="ModelUsed" name="ModelUsed" class="form-control">
      </div>
</div> <div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">TrackingAlgorithmUsed</label><input type="text" id="TrackingAlgorithmUsed" name="TrackingAlgorithmUsed" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">Accuracy</label><input type="text" id="Accuracy" name="Accuracy" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">ComputationTime</label><input type="text" id="ComputationTime" name="ComputationTime" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">ComputationReources</label><input type="text" id="ComputationReources" name="ComputationReources" class="form-control">
      </div>
</div> <div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">TotalFrames</label><input type="text" id="TotalFrames" name="TotalFrames" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">Status</label><input type="text" id="Status" name="Status" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">enteredDate</label><input type="text" id="enteredDate" name="enteredDate" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">enteredId</label><input type="text" id="enteredId" name="enteredId" class="form-control">
      </div>
</div> <div class="col-sm-12">
        <div class="input-block col-sm-3">
        <label for="">ModifiedDate</label><input type="text" id="ModifiedDate" name="ModifiedDate" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">ModifiedId</label><input type="text" id="ModifiedId" name="ModifiedId" class="form-control">
      </div>
        <div class="input-block col-sm-3">
        <label for="">Remarks</label><textarea  id="Remarks" name="Remarks" class="form-control"></textarea>
      </div>


</div>




    <div class="col-sm-12">
    <div class="col-sm-10">
    <button class="btn btn-primary col-sm-2">Send</button></div>
      
    </div>

  </form>
</section>
</div>

<div  class="made-with-love">

</div>

<script type="text/javascript">
  function showPreview(){
	var link = "http://vs62.iviscloud.net:7888/pro-vigil//SnapShot?channel=IVISIND1002C1&t=" + new Date().getTime();
    
    var preview = document.getElementById("file-ip-1-preview");
    preview.removeAttribute("src");
    preview.src = link;

  
}
</script>

</body>
<%

    String result  = (String) request.getAttribute("result");

    if (result != null) {
        out.print("<script>alert('"+result+"');</script>");
    }
%>
</html>