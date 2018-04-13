# ChainBlockTestApp
Demo:简单使用链式编程思想实现一个简单计算器的功能：


> 链式编程思想：核心思想为将block作为方法的返回值，且返回值的类型为调用者本身，并将该方法以setter的形式返回，这样就可以实现了连续调用，即为链式编程。

Objective-C是一门动态语言，它使用了一种动态的消息发送机制，即对象(object)或类(class)调用方法。而OC中的点语法则只能通过setter和getter方法作用于类的属性，而不能作用于某个方法。想实现链式语法，只能通过block属性。


# Usage

打开ViewController.m，修改下面的代码，其它的代码可以不用动。


```
/**
 切换两种链式语法，修改这里！！！

 @param void 参数选择上面的两者之一
 @return 0,1
 */
#define ChainBlockTestMethod ChainBlockTest1

```


- 值改为ChainBlockTest0演示简单链式语法
- 改为ChainBlockTest1演示block里层链式语法

经过如上切换，下面的代码不用动，会根据ChainBlockTestMethod标记分别执行。

```
- (void)viewDidLoad {
    [super viewDidLoad];
    
#if ChainBlockTestMethod == ChainBlockTest0
    
    CaculateMaker *maker = [[CaculateMaker alloc] init];
    maker.add(20).add(30);
    
    NSLog(@"结果为:%.2f",maker.result);
    
#elif ChainBlockTestMethod == ChainBlockTest1
    
    CGFloat result = [NSObject caculate:^(CaculateMaker *maker) {
        maker.add(10).add(20).add(30).add(40);
    }];
    NSLog(@"结果为:%.2f",result);
    
#endif

}
```
