<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="Style.css">


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<style>
html, body {
	height: auto;
	width: auto;
	scroll-behavior: smooth;
	font-family: Arial, Helvetica, sans-serif;
}

.main {
	width: 100%;
	flex-wrap: wrap;
}

#top {
	width: 100%;
	height: 60vh;
	background-image:
		url(https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
	background-size: cover;
	background-position: center;
	border-radius: 18px;
}

#overlay {
	width: 100%;
	min-height: inherit;
	background-color: rgba(240, 248, 255, 0);
}

#highlight {
	justify-content: center;
	width: 100%;
	bottom: 20%;
	text-align: center;
	font-size: 3vw;
	color: #f0c808;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bolder;
	background: transparent;
}

#down {
	width: 100%;
	position: absolute;
	justify-content: center;
	font-size: 2vw;
	color: white;
}

#bottom {
	width: 100%;
	min-height: 30vh;
	background-color: white;
	display: flex;
	justify-content: space-between;
	position: relative;
	margin-bottom: 4vh;
}

#heading {
	height: auto;
	font-size: 3.5vh;
	font-weight: bolder;
	padding: 15px 15px 15px;
}

#b1 {
	background-size: cover;
	width: 52vh;
	min-height: inherit;
	background-image:
		url(https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_850,h_504/rng/md/carousel/production/63439465f0824c81088e0d8f00c24dd0);
	display: flex;
	background-position: center;
	display: block;
	border-radius: 18px;
}

#b2 {
	width: 52vh;
	min-height: inherit;
	background-image:
		url(https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_850,h_504/rng/md/carousel/production/e8439e0212cc7190db341ff36498cb4d);;
	background-position: center;
	display: flex;
	border-radius: 18px;
	background-size: cover;
}

#b3 {
	width: 52vh;
	min-height: inherit;
	background-image:
		url(https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_850,h_504/rng/md/carousel/production/ccb04d7d920acde7e1443bf2032c68cb);
	background-position: center;
	display: flex;
	border-radius: 18px;
	background-size: cover;
}

#b4 {
	width: 52vh;
	min-height: inherit;
	background-image:
		url(https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_850,h_504/rng/md/carousel/production/78cfc68c6c9ee6f96a1840cca07ffaed);
	background-position: center;
	display: flex;
	border-radius: 18px;
	background-size: cover;
}

.b {
	box-shadow: 2px 2px 4px lightslategray;
	cursor: pointer;
	transition-duration: 0.4s;
}

.b:hover {
	transform: scale(1.1);
	z-index: 2;
}

header {
	height: 8vh;
	box-shadow: 0 5px 5px -3px rgba(0, 0, 0, 0.2);
	font-size: 3vh;
	text-decoration: none;
}

.hblock {
	display: flex;
	height: inherit;
}

.hblock1 {
	width: 55%;
	display: flex;
	justify-content: flex-start;
	background-position: center;
	align-content: center;
}

.hblock .hblock1 input {
	height: 30px;
	width: 30vw;
	border-radius: 15px;
	align-self: center;
}

.hblock .hblock1 #s {
	height: 20px;
	width: 20px;
	align-self: center;
	display: inline-block;
	margin-left: 3px;
}

.hblock2 {
	width: 40%;
	display: flex;
	justify-content: space-between;
	background-position: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 20px;
	list-style-type: none;
	font-weight: bold;
	align-self: center;
}

.hblock2 a {
	text-decoration: none;
	color: rgba(0, 0, 0, 0.738);
}

.hblock .hblock2 .hitem :hover {
	color: darkorange;
}

@media ( max-width :500px) {
	#top #overlay #highlight {
		flex-direction: column;
		align-items: flex-start;
		display: block;
		margin-top: 20px;
	}
	#bottom {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}
	#b1 {
		flex-direction: column;
		width: 100%;
	}
	#b2 {
		flex-direction: column;
		width: 100%;
	}
	#b3 {
		flex-direction: column;
		width: 100%;
	}
	#b4 {
		flex-direction: column;
		width: 100%;
	}
}

.main2 {
	height: 25vh;
	display: flex;
	width: 100%;
	justify-content: space-between;
	transition-duration: 2s;
}

.main2 .mitem a img {
	background-color: chartreuse;
	height: 22vh;
	width: 21vh;
	border-radius: 50%;
	background-size: cover;
}

.main2 .mitem:hover {
	transform: scale(1.1);
	z-index: 1;
}

.bpart {
	height: 12vh;
	width: 100%;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bolder;
	font-size: 4vh;
	color: rgba(0, 0, 0, 0.729);
	display: flex;
	justify-content: space-between;
	background-position: center;
	align-items: center;
}

.bpart #bpartimage img {
	height: 9vh;
	width: 20vh;
}

.bpart #bpartimage {
	padding-right: 40vh;
}

footer {
	position: absolute;
	width: 99.3%;
	color: #fff;
	background: linear-gradient(to right, #00093c, #2d0b00);
	padding: 80px 0 2px;
	font-size: 14px;
	line-height: 20px;
	border-top-right-radius: 4vh;;
	border-top-left-radius: 4vh;
}

.row {
	width: 85%;
	margin: auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: flex-start;
}

.logo {
	width: 80px;
	margin-bottom: 30px;
	transition-duration: 0.8s;
	border-radius: 50%;
}

.logo:hover {
	transform: scale(1.1);
	z-index: 2;
}

.col {
	flex-basis: 20%;
	font-family: Arial, Helvetica, sans-serif;
}

.col h3 {
	width: fit-content;
	margin-bottom: 40px;
	position: relative;
}

.col a {
	text-decoration: none;
	color: #fff;
}

p {
	margin-bottom: -1vh;
}

.col form {
	display: flex;
	justify-items: auto;
}

#em {
	height: 18px;
	border-color: azure;
	border-radius: 10px;
	border: none;
}

.col p :hover {
	text-shadow: 0 0 1px red, 0 0 1px red;
	font-size: 2.5vh;
}

#username {
	border: 3px solid black;
	border-radius: 17px;
	padding: 5px;
	position: relative;
	top: 5px;
	left:25px;
}

.order {
	
 
 width: 100px;
 position: relative;
right:30px;	
}


#search-bar{
align-items:center;
width: 200px;
}



















</style>