<%--
  Created by IntelliJ IDEA.
  User: famgy
  Date: 3/26/18
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>FamgyWeb</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/fbase.css" />
    <%--<base target="_blank"/>--%>
    <style>
        header,footer {
            background-color:#444;
            color:white;
            text-align:center;
            margin:5px;
            margin-bottom:5px;
            padding:8px;
            border:1px solid grey;
        }
    </style>

</head>

<body style="background-color: #D0D0D0">
<div class="container">
    <div class="jumbotron" style="text-align: center; font-size: 60px; background-image: url(imgs/welcome.jpg); color: #99CCCC">Welcome back home!</div>
</div>

<div class="container">
    <div style="display: grid; grid-template-columns: repeat(3, 1fr); grid-gap: 10px">
        <div>
            <a style="font-size: 30px" href="https://weibo.com/u/5526906487?from=page_100505_profile&wvr=6&mod=like">Sina Weibo</a>
            <p>There are some celebrity fans on my Sina Weibo</p>
            <p>Have a good time!</p>
        </div>
        <div>
            <a style="font-size: 30px" href="./jsp/spring/spring.jsp">Diapositive</a>
            <p>视觉享受，flying。</p>
            <p>Have a good time!</p>
        </div>
        <div>
            <a style="font-size: 30px" href="https://tympanus.net/codrops/2016/02/17/polaroid-stack-to-grid-intro-animation/">html5 tricks</a>
            <p>Html5 tutorial.</p>
            <p>Have a good time!</p>
        </div>
    </div>

</div>


<header>Welcome to famgy!</header>

<div class="container" style="padding-top: 30px; padding-bottom: 30px">
    <div style="display: grid; grid-template-columns: repeat(1, 1fr); grid-gap: 10px">
        <div style="display: grid; grid-template-columns: repeat(3, 1fr); grid-gap: 10px">
            <a href="./jsp/summer/summer.jsp"><img class="photo_cover" src="imgs/romantic/1.jpg" /></a>
            <img class="photo_cover" src="imgs/romantic/2.jpg" />
            <img class="photo_cover" src="imgs/romantic/4.jpg" />
        </div>
        <div style="display: grid; grid-template-columns: 1fr 1fr; grid-gap: 10px">
            <div style="display: grid; grid-template-rows: 1fr 1fr; grid-gap: 10px">
                <img class="photo_cover" src="imgs/romantic/5.jpg" />
                <img class="photo_cover" src="imgs/romantic/5.jpg" />
            </div>

            <div style="display: grid; grid-template-rows: repeat(3, 1fr); grid-gap: 10px">
                <img class="photo_cover" src="imgs/romantic/13.jpg" />
                <img class="photo_cover" src="imgs/romantic/14.jpg" />
                <img class="photo_cover" src="imgs/romantic/8.jpg" />
            </div>
        </div>
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); grid-gap: 10px">
            <img class="photo_cover" src="imgs/romantic/7.jpg" />
            <img class="photo_cover" src="imgs/romantic/6.jpg" />
            <img class="photo_cover" src="imgs/romantic/10.jpg" />
            <img class="photo_cover" src="imgs/romantic/12.jpg" />

        </div>
        <div style="display: grid; grid-template-columns: repeat(3, 1fr) ; grid-gap: 10px">
            <img class="photo_cover" src="imgs/romantic/3.jpg" />
            <img class="photo_cover" src="imgs/romantic/11.jpg" />
            <img class="photo_cover" src="imgs/romantic/9.jpg" />

        </div>
    </div>

</div>

<div align="center" style="margin-bottom: 20px">
    <a href="upload.jsp"><button>上传图片</button></a>
</div>


<footer>Copyright www.famgy.com</footer>

</body>
</html>
