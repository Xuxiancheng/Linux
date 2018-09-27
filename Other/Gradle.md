#关于Android中的代理问题解决方法
在Linux环境下，找到".gradle/gradle.properties"文件
在末尾添加如下字符串:
```gradle
org.gradle.jvmargs=-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=1080

```
在Android Studio中打开Sockets代理，重启即可下解决代理问题