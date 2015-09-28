from .opener import video_opener


def initialize(supervisor):
    extensions = supervisor.config['video.extensions']
    supervisor.exts.openers.register('video', video_opener, extensions)
