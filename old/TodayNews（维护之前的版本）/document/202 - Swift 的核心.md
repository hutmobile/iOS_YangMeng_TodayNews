让我们来思考一个问题，就是 Swift 的核心是什么？

不知道大家有没有看过 WWDC 2015 的视频，其中有一个编号为 408 的视频解释了这个问题，下面是视频链接：[Protocol-Oriented Programming in Swift](https://developer.apple.com/videos/play/wwdc2015/408/)。

视频中介绍了从 OOP（面向对象编程） 到 POP（面向协议编程）的转变过程。

> **Swift is a Protocol-Oriented Programming Language**
>
> **Swift 是一门面向协议 (POP) 开发的语言**

我说一下我的体会吧，我刚开始做 iOS 开发的时候使用 OC 来开发的，后来学习了 Swift，当时也是有一搭没一搭的学，了解了一下 Swift 的基本语法，感觉还是很简单的，因为当时 Swift 也是刚出来，很不稳定，1.0 到 2.0，甚至都不兼容，所以也就没有选择使用 Swift 来开发。

直到去年，也就是16 年，在 2.2 版本出来之后，感觉 Swift 还算比较稳定了，才决定使用 Swift 来开发一个简单的项目，当时决定模仿一个 app 来练手，也就是现在在我的 github 上的那个项目了。但是现在看来，那个项目写的不是很好，虽然是使用 Swift 来开发的，但是并没有按照 Swift 的标准来写 Swift 的项目，反而是以 OC 的习惯来写 Swift，也就是还是按照面向对象的思想来写 Swift，虽然也能写出可以运行的项目，但是面向对象的思想就和 Swift 的编程思想还是有本质的区别的。这里我不想着重介绍关于 OC 这门编程语言，毕竟我们现在是用 Swift 来开发的，但是有些东西还是要说明一下，首先面向对象编程的特征是 class，继承，封装和多态，其实 OC 还不能说是一门纯面向对象的的语言，只能说 OC 是 C 语言的超集，或者说是 C 语言的扩展，在 C 语言的基础上增加了面向对象的思想。但是在 Swift 里就不一样了，Swift 里 class 并不是最重要的。

我前面说了 Swift 是面向协议的编程，那么究竟什么是面向协议编程呢？

要回答这个问题，我们可以参考一下刚刚提到的面向对象编程，在面向对象编程里，是从一个 class 开始的，那要是照这样说，在面向协议编程里就是从一个 protocol 了吗？这样解释对不对呢？我们可以在刚刚提到视频里找找答案，如果看过上面的视频，你会发现在上面的视频中 Apple 自己都说：

> "从一个 protocol 开始，别从 class 开始。" ——Dave Abrahams: 毁你三观教授

protocol 就是协议的意思。当然，可以从protocol 开始，但是从 protocol 开始了之后，该怎么做呢？

是的，这也是我们该思考的问题，我这里不会太着重去介绍 Swift 的基础，因为我默认看我视频的同学都已经掌握了 Swift 的基础了，所以关于 protocol 的概念我也不在详细介绍了，回到我们刚才的问题，现在我们已经有了 protocol，接下来我们要做的就是使用非常强大的 extension 了，额…，关于 extension 的概念我也不再详细介绍了，如果感觉基础不好的同学可以先去看一下基础，然后再来看我的视频吧，关于 extension，可以为现有的 class，struct，enum，protocol 添加新功能，注意刚刚我提到了 protocol，所以我们先现在可以在 protocol 的extension 里添加任何你需要添加的东西了。

那好，功能也添加了，那怎么该怎么使用这个 protocol 呢？

这也是个问题，让我们再分析一下，protocol 不同于 class 或者 struct，因为后两者可以各自调用它们的类型方法或者实例方法，但是 protocol 却不能直接使用，也不能实例化，既然都不行，那该怎么做啊？别着急，既然不能直接用，那我们就要考虑用上面提到的 class 或者 struct 了，那我们该用哪个呢？我们先来看一张图：

![](http://cc.cocimg.com/api/uploads/20150803/1438584460301803.png)

这张图是我在网上找到的一篇文章中的截图，下面是文章地址： [不要用子类！Swift的核心是面向协议](http://www.cocoachina.com/Swift/20150803/12881.html) ，虽然这篇文章是2015年的文章了，不过还是推荐大家看一下。在上面的图中，可以看出在 Swift 的标准库中，仅有 4 个class，其余下的有 87 个 struct 和 8 个 enum 的实例共同构建了 Swift 功能的核心。如今已经过去两年，我想 struct 的数量应该更多了。既然 Swift 里用了这么多 struct，为什么我们不试试用 struct 呢？

我们前面也说过了 class 是面向对象里的东西，那我们试试用 struct，现在可以新建一个 struct，然后让它遵守我们的 protocol 就可以了，之后就可以实例化一个 struct，接着就可以用 struct 调用 protocol 里的方法或者属性了。

听上去还不是错的，但是总感觉是不是有点太麻烦了，要是按照上面说的，我们直接创建一个 struct 不就完了嘛，还要 protocol 干什么，这么说听上去也没有问题，当然在开发中也是可以的.

但是我们还要考虑一个问题，在实际开发中我们是不是只有 struct 呢？

当然不是，因为我们还要和 cocoa 框架打交道，说到 cocoa 框架，我们还要提一下 UIKit 这个框架，这是 iOS 开发中一个十分重要的框架，但是由于历史关系，为了兼容 OC，UIKit 里的类都是继承自 NSObject 的，也就是说都是 class 类型的，比如在开发中有几十个控制器都继承自某个自定义的基类，就会把基类的所有的方法也继承下来，但是这些方法对每一个子类都有用吗？答案肯定是否定的。所以，既然子类不需要，何必要继承父类的方法呢？自己的方法应该由自己决定才对的，而现在是基类帮着子类决定了它的方法。

所以这样就引出了 protocol，让自己的类实现自己所要遵守的 protocol，这里我说的并不是某一个 class，我这里指的是有那么几个 class 都要实现功能的时候，选择用 protocol 是个不错的选择，而且还可以把几个方法抽象成一个方法，需要的 class 只需要遵守这个 protocol 就可以了。这样解释可能不太清楚，我举一个栗子。

当我自定义 UIView 的时候，我想让 view 从 xib 加载，那么我就需要在每个类里都写一个从 xib 加载的类方法，如下代码：

```
static func classMethodCreateView() -> MyCustomView {
    return Bundle.main.loadNibNamed("\(self)", owner: nil, options: nil)?.last as! MyCustomView
}
```
这样在每个代码都写一，很是麻烦，有什么方法可以简单一点吗？方法当然是有的，可以做一下优化，如下代码：
```
protocol LoadNibProtocol {}
extension LoadNibProtocol where Self: UIView {
    /// 提供加载 Xib 方法
    static func loadViewFromNib(name: String? = nil) -> Self {
        return Bundle.main.loadNibNamed(name ?? "(self)", owner: nil, options: nil)?.last as! Self
    }
}
```
接下来让需要从 xib 加载的 view 遵守 LoadNibProtocol 协议就可以了，是不是简单了许多呢？上面只是 protocol 的一个简单应用，在后面的项目中，我会介绍其他用法，这里就不再过多说明了，关于协议暂时先介绍这么多。下面还有一个问题，需要思考一下，就是 Swift 里既然有 class 和 struct，那么他们的区别是什么呢？

    - 我想大多数人的第一反应应该是 struct 是值类型 class 是引用类型，也就是说 struct 的实例在被赋予变量或者常量或者被函数调用时都会被复制，但是 class 的实例会被引用，引用的就是已经存在的实例本身而不是复制。还可以这样理解 struct 的复制相当于在内存上又开辟了一块内存空间，和之前的 struct 没有关系了，我个人感觉也可以理解成深拷贝，而 class 则是创建一个指针，指向的还是原来的内存地址，可以理解成浅拷贝。
    - class 可以继承，struct 不能继承，某些需要继承的地方还是需要用 class，不能用 struct。
    - struct 类型方法要加 static修饰，class类型方法要加 class 修饰。
    - struct 有默认的初始化方法，class 需要指定变量的初始值。

下面代码关于 class 和 struct 的在初始化的时候的一些区别。
```
struct MyStruct1 {
    var text: String
    var tip: Int
}

struct MyStruct2 {
    var text: String = "MyStruct2"
    var tip: Int = 2
}

struct MyStruct3 {
    var text: String
    var tip: Int
    init(text: String, tip: Int) {
        self.text = text
        self.tip = tip
    }
}

class MyClass1 {
    var text: String = "MyClass1"
    var tip: Int = 11
}

class MyClass2 {
    var text: String
    var tip: Int
    init() {
        text = "MyClass2"
        tip = 22
    }
}

class MyClass3 {
    var text: String
    var tip: Int
    init(text: String, tip: Int) {
        self.text = text
        self.tip = tip
    }
}                                                                        
let myStruct1 = MyStruct1(text: "MyStruct1", tip: 1)
let myStruct2 = MyStruct2()
let myStruct3 = MyStruct3(text: "MyStruct3", tip: 3)
let myClass1 = MyClass1()
let myClass2 = MyClass2()
let myClass3 = MyClass3(text: "MyClass3", tip: 33)
```

                                                                                                                                          
还有一点，就是关于 struct 和 class 的性能差异，可以阅读下面的文章：[理解Swift中struct和class在不同情况下性能的差异](http://www.jianshu.com/p/394e4fe614a0)，文章介绍的很详细，我这里也不再详细介绍了。                                                                                                                                   上面是我对 struct 和 class 做的简单说明，以及 Swift 面向协议编程的简单说明，如果还觉得意犹未尽，或者想了解更多内容，请自行去网上找找相关文章。 说了这么多，最后还是希望你们能明白 Swift 是面向协议的编程， 在开发过程中请多使用 struct 和 protocol，当你没有选择的时候再使用 class。

新增一篇参考文章：[面向协议的 MVVM 架构介绍](https://juejin.im/entry/59b9ee5f6fb9a00a402dd142?utm_source=gold_browser_extension)。这篇文章也比较早了。

下面我们就继续写代码吧。

首先新建两个 Swift 文件，一个命名为 MyCellModel.Swift，作为我的界面 cell 的模型。

另一个命名为 NetworkTool.Swift，作为网络请求的相关文件。

然后在 Podfile 添加我们需要的第三方框架，分别是 `Alamofire`，`SwiftyJSON`，`HandyJSON`。
如下代码：
```
target 'News'  do
use_frameworks!
    pod 'Alamofire', '~> 4.5.0'  # 数据请求 https://github.com/Alamofire/Alamofire，同 AFNetworking
    pod 'HandyJSON', '~> 1.7.2'         # JSON序列化/反序列化库 https://github.com/alibaba/HandyJSON/
    pod 'SwiftyJSON'                    # json 解析 https://github.com/SwiftyJSON/
end
```
默认生成的测试 target 先不需要，可以删掉。关于上面的第三方框架可以去 github 看一下他们的介绍和用法，我这里就不详细说明了，看我是怎么写的就可以了，跟着我写，写着写着就知道怎么用了。
