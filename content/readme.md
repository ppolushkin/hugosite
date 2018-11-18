---
title: "Readme"
date: 2018-11-19T00:21:24+03:00
draft: false
---
# 42 developer's notes
This is [Hugo](https://gohugo.io/documentation/) based resources for [ppolushkin.github.com](http://ppolushkin.github.com)
resource.

### Development
Run ```hugo server D```
and open [localhost:1313](http://localhost:1313) site.

### Publish
- Build public folder by running ``hugo`` command

```bash
hugo
```
- Go to public folder, commit and push to [ppolushkin.github.com](http://ppolushkin.github.com)

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

### Code highlighting examples

#### Golang:

```go
func env(key, defaultVal string) string {
	appPort, ok := os.LookupEnv(key)
	if !ok {
		appPort = defaultVal
	}
	return appPort
}
```
#### Java:
```java
public static void mergeSort(int[] a) {
    mergeSort(a, 0, a.length - 1);
}

static void mergeSort(int[] a, int low, int high) {
    if (low == high) {
        return;
    }

    int middle = (low + high) >>> 1;

    mergeSort(a, low, middle);
    mergeSort(a, middle + 1, high);
    merge(a, low, middle, high);
}
```
