<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image gallery</title>

<style>
	*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
    box-sizing: border-box;
}
*:before,
*:after{
	box-sizing: border-box;
}
html,
body{
	min-height: 100%;
}
body{
	background-image: url("bg.jpg");
}
h1{
	display: table;
	margin: 5% auto 0;
	text-transform: uppercase;
	font-family: 'Anaheim', sans-serif;
	font-size: 4em;
	font-weight: 400;
	text-shadow: 0 1px white, 0 2px black;
}
.container{
	margin: 4% auto;
	width: 210px;
	height: 140px;
	position: relative;
	perspective: 1000px;
}
#carousel{
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	animation: rotation 20s infinite linear;
}
#carousel:hover{
	animation-play-state: paused;
}
#carousel figure{
	display: block;
	position: absolute;
	width: 90%;
	height: 50%px;
	left: 100px;
	top: 100px;
	background:red ;
	overflow: hidden;
	border: solid 5px red;
}
#carousel figure:nth-child(1){transform: rotateY(0deg) translateZ(288px);}
#carousel figure:nth-child(2) { transform: rotateY(70deg) translateZ(288px);}
#carousel figure:nth-child(3) { transform: rotateY(140deg) translateZ(288px);}
#carousel figure:nth-child(4) { transform: rotateY(210deg) translateZ(288px);}
#carousel figure:nth-child(5) { transform: rotateY(280deg) translateZ(288px);}


img{
	-webkit-filter: grayscale(1);
	cursor: pointer;
	transition: all .5s ease;
}
img:hover{
	-webkit-filter: grayscale(0);
  transform: scale(1.2,1.2);
}

@keyframes rotation{
	from{
		transform: rotateY(0deg);
	}
	to{
		transform: rotateY(360deg);
	}
}
.desc{
	color:white;
}
    .auto-style1 {
        text-align: center;
    }
</style>
</head>
<body style="background-image:url(images/bg.jpg);">
    <h1 class="auto-style1">Image Gallery</h1>
    <h2>Blood Donation Camp On Independence Day</h2>
    <form id="form1" runat="server">
    <div class="container">
        
    <div id="carousel">
				<figure><img class="" src="http://lorempixel.com/186/116/sports/1" alt=""/><div class="desc" >Event 1 description</div></figure>
				<figure><img src="http://lorempixel.com/186/116/sports/2" alt=""/><div class="desc" >Event 2 description</div></figure>
				<figure><img src="http://lorempixel.com/186/116/sports/6" alt=""/><div class="desc" >Event 3 description</div></figure>
				<figure><img src="http://lorempixel.com/186/116/sports/7" alt=""/><div class="desc" >Event 4 description</div></figure>
				<figure><img src="http://lorempixel.com/186/116/sports/5" alt=""/><div class="desc" >Event 5 description</div></figure>
			</div>
    </div>
    </form>
</body>
</html>
