export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/6.12.0/lib/mono/4.7.1-api
dotnet build ./Unity/Unity.AllHotfix.csproj
dotnet build ./Unity/Unity.AllModel.csproj
msbuild ./Unity/Unity.AllHotfix.csproj
msbuild ./Unity/Unity.AllModel.csproj