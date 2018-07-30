# ubuntu-xfce-vnc-lantern

### 编译
```bash
cd ./ubuntu-xfce-vnc-lantern
docker build ./ -t dongnan/ubuntu-xfce-vnc-lantern
```
### 运行
```bash
docker run -d -p 5901:5901 -p 6901:6901 -p 8787:8787 -p 18787:18787 -e VNC_PW=123456 --user 0:0 dongnan/ubuntu-xfce-vnc-lantern
```
### 设置
1. 查看运行 `ubuntu-xfce-vnc-lantern` 的宿主机ip地址 假设为：`HOST_IP`
2. 在宿主机打开浏览器，或在同一局域网内的其他设备上打开浏览器，输入 `HOST_IP:6901` (宿主机上可直接输入 `localhost:6901`)
3. 输入 `VNC_PW`，进入系统界面，此时系统中应该已经打开了lantern的登录页面，如果有专业版账号，可以直接授权登录
