/*jslint browser: true*/
(function ($) {
    'use strict';
    $.openers = $.openers || {};
    $.openers.video = function () {
        $('video').mediaelementplayer();
    };
}(this.jQuery));
