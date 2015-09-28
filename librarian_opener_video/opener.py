import os

from bottle import request

from librarian_content.library import metadata
from librarian_content.library.archive import Archive


def video_opener(path):
    conf = request.app.config
    archive = Archive.setup(conf['library.backend'],
                            request.db.content,
                            contentdir=conf['library.contentdir'],
                            meta_filename=conf['library.metadata'])
    content = archive.get_single(path)
    if not content:
        return dict(meta=None,
                    video_url=request.app.get_url('files:direct', path=path),
                    width='100%',
                    height='100%')

    content_path = os.path.join(archive.config['contentdir'], path)
    meta = metadata.Meta(content, content_path)
    resolution = (meta['video'].get('resolution') or 'x').split('x')
    width, height = [int(x) if x else '100%' for x in resolution]
    file_path = os.path.join(meta.path, meta['video']['main'])
    video_url = request.app.get_url('files:direct', path=file_path)
    return dict(meta=meta, video_url=video_url, width=width, height=height)
