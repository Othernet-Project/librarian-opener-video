import os

from bottle_utils.html import quoted_url

from librarian_content.decorators import with_meta
from librarian_core.contrib.templates.renderer import view


@view('openers/video')
@with_meta(abort_if_not_found=False)
def video_opener(path, meta):
    if not meta:
        return dict(video_url=quoted_url('files:direct', path=path),
                    width='100%',
                    height='100%')

    resolution = (meta['video'].get('resolution') or 'x').split('x')
    width, height = [int(x) if x else '100%' for x in resolution]
    file_path = os.path.join(meta.path, meta['video']['main'])
    video_url = quoted_url('files:direct', path=file_path)
    return dict(video_url=video_url, width=width, height=height)
