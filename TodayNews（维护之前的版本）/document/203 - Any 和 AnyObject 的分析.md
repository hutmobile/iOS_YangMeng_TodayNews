# 212 - Any 和 AnyObject 的分析

我下面的代码中声明了一个 struct，一个 class，一个闭包，一个无返回值的方法，一个有返回值的方法以及一个枚举：

```swift
struct MyStruct {
    var text: String = "MyStruct"
    var tip: Int = 1
}

class MyClass {
    var text: String = "MyClass"
    var tip: Int = 11
}

/// 闭包
typealias closure = (Int, Int) -> ()
/// 无返回值的方法
func testNoReturn() {
    print("testNoReturn")
}
/// 有返回值的方法
func testReturn(a: Int) -> Int {
    return a
}
/// 枚举
enum TestEnum: String {
    case language1 = "Swfift"
    case language2 = "Objective-C"
}
let myStruct = MyStruct()
let myClass = MyClass()
```

如下代码：

```swift

// let array7: [AnyObject] = [1, "2", myStruct1, myClass1, TestEnum.language1]
let array7: [AnyObject] = [1 as AnyObject, "2" as AnyObject, myStruct1 as AnyObject, myClass1, TestEnum.language1 as AnyObject]
// print [1, "2", {NSObject}, {text "MyClass", tip 11}, {NSObject}]
// 上面的打印是在 Playground 中的结果。
let array8: [Any] = [1, "2", myStruct1, myClass1, testNoReturn,testReturn(a: 1), closure.self, TestEnum.language1]
// print [1, "2", {text "MyStruct", tip 1}, {text "MyClass", tip 11}, () -> (), 1, ((Int, Int) -> ()).Type, language1]
// -----------------print array7-------------------------
for item in array7 {
    if item is Int {
        print("\(item) is Int!")
    } else if item is NSNumber {
        print("\(item) is NSNumber!")
    }
    if item is NSString {
        print("\(item) is NSString!")
    }
    if item is NSString {
        print("\(item) is NSString!")
    }
}
// 1 is Int!
// 1 is NSNumber!
// 2 is String!
// 2 is NSString!
// 上面的代码打印整数，并且打印了两行，说明 1 既是 Int 类型的，又是 NSNumber 类型的。
// 上面的代码打印字符串，并且打印了两行，说明字符串既是 String 类型的，又是 NSString 类型的。
// 那么这个 AnyObject 究竟是什么呢？
// AnyObject 是一个成员为空的协议，所有 class 都隐式地实现了这个协议，
// 这也限制了 AnyObject 是只适用于 class 类型的原因，相当于 OC 中的 id 类型，
// Swift 为了与 Cocoa 架构进行协作开发，就将原来的 id 用 AnyObject 来进行替代。
// 也就是说在声明的时候，仅仅是把字符串强转成了 AnyObject 类型，所以在判断的时候，编译器并不知道具体的声明类型，所以就会打印两种结果，
// 但是在 Swift 中 String 是结构体类型的，也就是说，当转成 AnyObject 类型之后
// 系统默认把 String 转成了 NSObject 类型，这就说明 Swift 和 Objective-C 存在相互转化
// 并且这种转化是自动的，并且实现了 Swift 和 Objective-C 的无缝桥接。
// 上面的解释只是我个人的理解，如有不对的地方，还请指出。
// -----------------print array8-------------------------
for item in array8 {
    if item is Int {
        print("\(item) is Int!")
    }
    if item is String {
        print("\(item) is String!")
    }
    if item is NSString {
        print("\(item) is NSString!")
    }
}
// 1 is Int!
// 1 is NSNumber!
// 2 is String!
// 2 is NSString!
// Any 是一个空协议集合的别名，它表示没有实现任何协议，可以表示任意类型，包括 class， struct 和 enum 在内的所有类型，甚至包括方法 (func) 类型。
```
AnyClass 是 AnyObject.Type 的别名而已。

![anyanyboject](http://upload-images.jianshu.io/upload_images/1116587-4df1d3325618ecaf.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

参考文章

[Any vs. AnyObject in Swift 3.0](https://medium.com/@mimicatcodes/any-vs-anyobject-in-swift-3-b1a8d3a02e00)

下面这篇文章是比较老的文章，可以参考，但是 Swift3 中很多地方不如文章所述。

[ANY 和 ANYOBJECT](http://swifter.tips/any-anyobject/)

[NYCLASS，元类型和 .SELF](http://swifter.tips/self-anyclass/)
