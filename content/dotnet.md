---
title: "C# for Dummies"
date: 2019-04-11
draft: false
categories: ["AZ-203"]
tags: ["dotNet"]
---

- [install dotnet](https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install)
- create app ``dotnet new console -o myApp``
- run app ``cd myApp; dotnet run``
- install Visual Studio Code
- install C# for VIsual Studio Code extension by Microsoft
- install C# Extensions extension
- In case of [issue](https://github.com/OmniSharp/omnisharp-roslyn/issues/1313) add a file  *omnisharp.json*
into project root. Now you can debug.


#### omnisharp.json

```json
{
    "MsBuild": {
        "UseLegacySdkResolver": true
    }
}
```