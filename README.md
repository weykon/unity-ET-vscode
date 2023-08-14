
## Mac 使用vscode的相关
1. 下载对应或者最新的[.net 7.0](https://learn.microsoft.com/en-us/dotnet/core/install/macos)和[mono](https://www.mono-project.com/download/stable/ )(非visual studio channel)
> 注意！去这里下载6.12.0那个灰色的按钮（写着“Stable channel” ）的mono，不要下载visual studio channel的，不然会有问题。

2. 剩下主要是路径问题，先安装vscode的[C#插件](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp),然后去~/.omnisharp/omnisharp.json中配置mono的路径，和添加对应配置. [具体说明link](Unity/.vscode/README.md)

3. 为vscode配置一下只显示哪些文件拓展名，清理视野。(Unity/.vscode/settings.json)

4. 具体对于ET的编译在mac.run.sh
> 自行修改FrameworkPathOverride的路径, 这个路径不是上面的路径,而是你下载mono安装到的地方,按照例子应该能找到
```sh
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/6.12.0/lib/mono/4.7.1-api
dotnet build ./Unity/Unity.AllHotfix.csproj
dotnet build ./Unity/Unity.AllModel.csproj
msbuild ./Unity/Unity.AllHotfix.csproj
msbuild ./Unity/Unity.AllModel.csproj
```

按目前的文件结构复杂到ET项目当中，然后 CMD + shift + B 就能执行。

看看提示缺少什么文件或者路径哪里错误来慢慢把流程做好。  

### ISSUES
任何问题直接到issues那里发，慢慢完善这方面的体验。  
比如直接做个vscode插件来完成这方面的工作，目前还是手动的。