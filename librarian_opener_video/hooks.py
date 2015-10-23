from bottle_utils.i18n import lazy_gettext as _

from .opener import video_opener


def initialize(supervisor):
    supervisor.exts.openers.register('video',
                                     label=_("Video"),
                                     route=video_opener,
                                     content_type='video')
