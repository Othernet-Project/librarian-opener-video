<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" type="text/css" href="${assets['css/video']}" />
        <link rel="stylesheet" type="text/css" href="${assets.url}vendor/mediaelement/mediaelementplayer.css" />
    </head>
    <body>
        <video width="${width}" height="${height}" controls="controls" preload="none">
            <source src="${video_url}" />
            <object width="${width}" height="${height}" type="application/x-shockwave-flash" data="${assets.url}vendor/mediaelement/flashmediaelement.swf">
                <param name="movie" value="${assets.url}vendor/mediaelement/flashmediaelement.swf" />
                <param name="flashvars" value="controls=true&file=${video_url}" />
            </object>
        </video>
        <script type="text/javascript" src="${assets['js/video']}"></script>
    </body>
</html>
