<%--
  Created by IntelliJ IDEA.
  User: famgy
  Date: 4/3/18
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en" class="no-js">

<head>
    <title>Famgy Image Grid Effects</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/fbase.css" />
    <style>

        a {
            display: inline-block;
            margin: 0 0.5em;
        }

        a.current-demo {
            color: #fff;
        }
    </style>

</head>

<body style="background-color: #D0D0D0">

<header style="text-align: center">
    <h1>Image Grid Effects</h1>
    <nav class="fcodrops_demos">
        <a href="summer.jsp">feature</a>
        <a href="summer2.html">browse</a>
        <a href="summer3.html">album</a>
        <a class="current-demo" href="summer4.jsp">romantic</a>
    </nav>
</header>

<div class="container" style="padding-top: 30px; padding-bottom: 30px">
    <div style="display: grid; grid-template-columns: repeat(1, 1fr); grid-gap: 10px">
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); grid-gap: 10px">
            <a href="/imgs/summer/original/1.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-1.jpg" /></a>
            <a href="/imgs/summer/original/2.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-2.jpg" /></a>
            <a href="/imgs/summer/original/4.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-4.jpg" /></a>
            <a href="/imgs/summer/original/12.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-12.jpg" /></a>
        </div>
        <div style="display: grid; grid-template-columns: repeat(3, 1fr); grid-gap: 10px">
            <a href="/imgs/summer/original/8.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-8.jpg" /></a>
            <a href="/imgs/summer/original/14.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-14.jpg" /></a>
            <a href="/imgs/summer/original/13.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-13.jpg" /></a>
        </div>
        <div style="display: grid; grid-template-columns: repeat(4, 1fr); grid-gap: 10px">
            <a href="/imgs/summer/original/7.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-7.jpg" /></a>
            <a href="/imgs/summer/original/6.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-6.jpg" /></a>
            <a href="/imgs/summer/original/10.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-10.jpg" /></a>
            <a href="/imgs/summer/original/12.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-12.jpg" /></a>

        </div>
        <div style="display: grid; grid-template-columns: repeat(4, 1fr) ; grid-gap: 10px">
            <a href="/imgs/summer/original/3.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-3.jpg" /></a>
            <a href="/imgs/summer/original/11.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-11.jpg" /></a>
            <a href="/imgs/summer/original/9.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-9.jpg" /></a>
            <a href="/imgs/summer/original/5.jpg"><img class="photo_cover" src="/imgs/summer/thumbs/thumb-5.jpg" /></a>
        </div>
    </div>
</div>

<!-- /container -->
<script src="/js/summer/imagesloaded.pkgd.min.js"></script>
<script src="/js/summer/masonry.pkgd.min.js"></script>
<script src="/js/summer/classie.js"></script>
<script src="/js/summer/main.js"></script>
<script>
    (function() {
        // create SVG circle overlay and append it to the preview element
        function createCircleOverlay(previewEl) {
            var dummy = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
            dummy.setAttributeNS(null, 'version', '1.1');
            dummy.setAttributeNS(null, 'width', '100%');
            dummy.setAttributeNS(null, 'height', '100%');
            dummy.setAttributeNS(null, 'class', 'overlay');
            var g = document.createElementNS('http://www.w3.org/2000/svg', 'g');
            var circle = document.createElementNS("http://www.w3.org/2000/svg", "circle");
            circle.setAttributeNS(null, 'cx', 0);
            circle.setAttributeNS(null, 'cy', 0);
            circle.setAttributeNS(null, 'r', Math.sqrt(Math.pow(previewEl.offsetWidth,2) + Math.pow(previewEl.offsetHeight,2)));
            dummy.appendChild(g);
            g.appendChild(circle);
            previewEl.appendChild(dummy);
        }

        new GridFx(document.querySelector('.grid'), {
            onInit : function(instance) {
                createCircleOverlay(instance.previewEl);
            },
            onResize : function(instance) {
                instance.previewEl.querySelector('svg circle').setAttributeNS(null, 'r', Math.sqrt(Math.pow(instance.previewEl.offsetWidth,2) + Math.pow(instance.previewEl.offsetHeight,2)));
            },
            onOpenItem : function(instance, item) {
                // item's image
                var gridImg = item.querySelector('img'),
                    gridImgOffset = gridImg.getBoundingClientRect(),
                    win = {width: document.documentElement.clientWidth, height: window.innerHeight},
                    SVGCircleGroupEl = instance.previewEl.querySelector('svg > g'),
                    SVGCircleEl = SVGCircleGroupEl.querySelector('circle');

                SVGCircleEl.setAttributeNS(null, 'r', Math.sqrt(Math.pow(instance.previewEl.offsetWidth,2) + Math.pow(instance.previewEl.offsetHeight,2)));
                // set the transform for the SVG g node. This will animate the circle overlay. The origin of the circle depends on the position of the clicked item.
                if( gridImgOffset.left + gridImg.offsetWidth/2 < win.width/2 ) {
                    SVGCircleGroupEl.setAttributeNS(null, 'transform', 'translate(' + win.width + ', ' + (gridImgOffset.top + gridImg.offsetHeight/2 < win.height/2 ? win.height : 0) + ')');
                }
                else {
                    SVGCircleGroupEl.setAttributeNS(null, 'transform', 'translate(0, ' + (gridImgOffset.top + gridImg.offsetHeight/2 < win.height/2 ? win.height : 0) + ')');
                }
            }
        });
    })();
</script>
</body>

</html>
