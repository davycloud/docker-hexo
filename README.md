# docker-hexo

## Quick Start

You can use this image just like the hexo-cli, for example:

  docker run --rm davyyy/hexo help

The commands `hexo init` and `npm install` already ran when built the docker image,
so you don't have to download anything to start.

### Common Usage

1. Start the server

  docker run --name hexo-server -d -p YOURPORT:4000 -v /YOUR/BLOG/PATH/:/blog  davyyy/hexo server

Some explaination:

- name the container, because we will use it later in `volumes-from`.
- we start the server here, so run in background with `-d` option.
- choose a port you want to expose
- choose a local directory for your blogs

2. New post

```
docker run --rm --volumes-from hexo-server davyyy/hexo new foo
INFO  Created: /blog/source/_posts/foo.md
```

3. Do your writing

```
  vim /YOUR/BLOG/PATH/source/_posts/foo.md
```

4. Generate static files:

  docker run --rm --volumes-from hexo-server davyyy/hexo gen

5. Deploy

  docker run --rm --volumes-from hexo-server davyyy/hexo deploy
