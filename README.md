
## Mac 使用vscode的相关
1. 下载对应或者最新的.net和mono(非visual studio channel)
2. 剩下主要是路径问题，先安装vscode的C#插件,然后去~/.omnisharp/omnisharp.json中配置mono的路径，和添加对应配置. [具体说明link](Unity/.vscode/README.md)
3. 为vscode配置一下只显示哪些文件拓展名，清理视野。(Unity/.vscode/settings.json)
4. 具体对于ET的编译在mac.run.sh
```sh
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/6.12.0/lib/mono/4.7.1-api
dotnet build ./Unity/Unity.AllHotfix.csproj
dotnet build ./Unity/Unity.AllModel.csproj
msbuild ./Unity/Unity.AllHotfix.csproj
msbuild ./Unity/Unity.AllModel.csproj
```