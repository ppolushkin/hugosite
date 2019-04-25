---
title: "Setup dotNet environment"
date: 2019-04-11
draft: false
categories: ["AZ-203"]
tags: ["dotNet"]
---

- [install dotnet](https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install)
- create app ``dotnet new console -o myApp``
- run app ``cd myApp; dotnet run``
- install Visual Studio Code
- install C# for Visual Studio Code extension by Microsoft
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

- [if navigation to declaration is not working](https://stackoverflow.com/questions/47995468/vscode-c-sharp-go-to-definition-f12-not-working)
Use ctrl-shift-P and select "OmniSharp: Select Project" to select the correct project.