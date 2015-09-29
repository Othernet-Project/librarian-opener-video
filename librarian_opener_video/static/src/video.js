/*jslint browser: true*/
(function ($) {
    'use strict';
    window.$ = window.jQuery = $;
    $(document).ready(function () {
        setTimeout(function () {
            $(document).find('video').mediaelementplayer();
        }, 0);
    });
}(this.parent.jQuery));
