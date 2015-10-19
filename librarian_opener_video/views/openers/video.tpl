<div id="opener-main-video" class="opener-main opener-video">
    <video width="${width}" height="${height}" controls="controls" preload="none">
    <source src="${video_url}" />
    <object width="${width}" height="${height}" type="application/x-shockwave-flash" data="${assets.url}vendor/mediaelement/flashmediaelement.swf">
        <param name="movie" value="${assets.url}vendor/mediaelement/flashmediaelement.swf" />
        <param name="flashvars" value="controls=true&file=${video_url}" />
    </object>
    </video>
</div>
<script type="text/javascript" src="${assets['js/video']}"></script>
