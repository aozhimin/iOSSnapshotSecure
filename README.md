# iOSSnapshotSecure
iOS 会在应用进入后台之前对应用当前的屏幕状态截屏，这样系统可以在应用重新打开时生成一个过渡动画。这样就存在把敏感信息泄漏到硬盘上，比如用户正在输入敏感信息的时候，恰好接听了一个电话，那当前的屏幕状态就会被写入到硬盘上，他会一直留在那里，直到有新的截屏将他覆盖。很多物理攻击者就是使用这种方式后去数据的。可以在应用的目录中找到他。如下图

![demo1](https://github.com/aozhimin/iOSSnapshotSecure/blob/master/images/img1.jpeg)

## 示例项目

我们提供了一个示例项目来帮助您更好地了解上述情况。`clone`下来代码，`Scheme`选择`iOSSnapshotSecure`即可运行。

