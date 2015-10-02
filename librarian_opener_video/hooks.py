from .opener import video_opener


def initialize(supervisor):
    supervisor.exts.openers.register('video',
                                     video_opener,
                                     content_type='video')
