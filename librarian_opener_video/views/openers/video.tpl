<%def name="opener_display()">
    <video width="${width}" height="${height}" controls="controls" preload="none">
        <source src="${video_url}" />
        <object width="${width}" height="${height}" type="application/x-shockwave-flash" data="${assets.url}vendor/mediaelement/flashmediaelement.swf">
            <param name="movie" value="${assets.url}vendor/mediaelement/flashmediaelement.swf" />
            <param name="flashvars" value="controls=true&file=${video_url}" />
        </object>
    </video>
</%def>

<%def name="meta_display()">
    % if meta:
    <div class="content-info">
        <div class="title">${meta.title}</div>
        <div class="download-date">${meta.timestamp.date()}</div>
        % if meta.video.get('description'):
        <div class="description">${meta.video['description']}</div>
        % endif
        % if meta.video.get('duration'):
        <div class="duration">${meta.video['duration']}</div>
        % endif
    </div>
    ## Translators, attribution line appearing in the content list
    <p class="attrib">
    % if meta.publisher:
    ${_('%(date)s by %(publisher)s.') % dict(date=meta.timestamp.strftime('%Y-%m-%d'), publisher=meta.publisher)}
    % else:
    ${meta.timestamp.strftime('%Y-%m-%d')}
    % endif
    ${th.readable_license(meta.license)}
    </p>
    % endif
</%def>

<%def name="extra_head()">
<link rel="stylesheet" type="text/css" href="${assets.url}vendor/mediaelement/mediaelementplayer.css" />
</%def>

<%def name="extra_scripts()"></%def>
