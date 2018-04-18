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
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Image Grid Effects</title>
    <meta name="description" content="Effect inspiration for opening an image grid item." />
    <meta name="keywords" content="image grid, effect, inspiration, css, javascript, animation, masonry" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="../../css/summer/normalize.css" />
    <link rel="stylesheet" type="text/css" href="../../fonts/summer/font-awesome-4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../css/summer/demo.css" />
    <link rel="stylesheet" type="text/css" href="../../css/summer/style1.css" />
    <script src="/js/summer/modernizr-custom.js"></script>
</head>

<body class="demo-1">
<div class="container">
    <header class="codrops-header">
        <h1>Image Grid Effects</h1>
        <nav class="codrops-demos">
            <a class="current-demo" href="summer.jsp">feature</a>
            <a href="summer2.html">browse</a>
            <a href="summer3.html">album</a>
            <a href="summer4.jsp">album</a>
        </nav>
    </header>

    <div class="content">
        <div class="grid">
            <div class="grid__item" data-size="1280x853">
                <a href="/imgs/summer/original/1.jpg"><img style="max-width: 100%" src="/imgs/summer/thumbs/thumb-1.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="958x1280">
                <a href="/imgs/summer/original/2.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-2.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="837x1280">
                <a href="/imgs/summer/original/3.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-3.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x961">
                <a href="/imgs/summer/original/4.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-4.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x1131">
                <a href="/imgs/summer/original/5.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-5.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x857">
                <a href="/imgs/summer/original/6.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-6.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x1280">
                <a href="/imgs/summer/original/7.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-7.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x853">
                <a href="/imgs/summer/original/8.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-8.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="865x1280">
                <a href="/imgs/summer/original/9.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-9.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x1280">
                <a href="/imgs/summer/original/10.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-10.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x850">
                <a href="/imgs/summer/original/11.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-11.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="865x1280">
                <a href="/imgs/summer/original/12.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-12.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x1280">
                <a href="/imgs/summer/original/13.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-13.jpg" />
                </a>
            </div>
            <div class="grid__item" data-size="1280x850">
                <a href="/imgs/summer/original/14.jpg" class="img-wrap"><img src="/imgs/summer/thumbs/thumb-14.jpg" />
                </a>
            </div>
        </div>
        <!-- /grid -->
        <div class="preview">
            <button class="action action--close"><i class="fa fa-times"></i><span class="text-hidden">Close</span></button>
            <div class="description description--preview"></div>
        </div>
        <!-- /preview -->
    </div>
    <!-- /content -->
    <!-- Related demos -->
    <%--<section class="content content--related">--%>
        <%--<p>If you enjoyed, you might also like:</p>--%>
        <%--<a class="media-item" href="https://weibo.com/u/5526906487?from=page_100505_profile&wvr=6&mod=like">--%>
            <%--<img class="media-item__img" src="/imgs/summer/related/GridItemAnimation.jpg">--%>
            <%--<h3 class="media-item__title">Grid Item Animation Layout</h3>--%>
        <%--</a>--%>
    <%--</section>--%>
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
