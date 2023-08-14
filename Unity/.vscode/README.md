安装mono后终端输入查看一下mono的路径
```sh 
which mono
```

拿到路径后去打开~/.omnisharp/omnisharp.json这个文件修改下面的monoPath
```json
{
    "useModernNet": false,
    "monoPath": "/usr/bin/mono",
    "useGlobalMono": "always"
}
```
