---
title: "Readme"
date: 2018-11-19T00:21:24+03:00
draft: false
---
# 42 developer's notes
This is [Hugo](https://gohugo.io/documentation/) based resources for [ppolushkin.github.com](ppolushkin.github.com)
resource.

## Development
Run ```hugo server D```
and open [localhost:1313](http://localhost:1313) site.

## Publish
- Build public folder by running ``hugo`` command

```bash
hugo
```

- Go to public folder, commit and push to [ppolushkin.github.com](ppolushkin.github.com)

```bash
cd public
git commit -am 'comment'
git push origin master
```
- Go to root folder, commit and push this root repository

```bash
cd ..
git commit -am 'comment'
git push origin master
```
