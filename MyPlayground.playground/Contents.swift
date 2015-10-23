//: Playground - noun: a place where people can play

import UIKit

//可以不用显示的声明类型，通过值推导，var表示变量，let表示常量
var str = "Hello, playground"
var strs:[String]=[]
//类初始化不需要New, 结尾不需要加;所有的由oc继承过来的底层类NS开头
var DicObj=NSDictionary()
//我是可变类型，null用nil表示
var Arrays:NSMutableArray?
for(var i=0;i<10;i++){
    strs.append(String(i))
   }
//如果是nil,操作以后还是nil
Arrays?.addObject(DicObj)

//也可以这样循环
for item in strs{
    if Arrays==nil {
        Arrays=NSMutableArray()
    }
    
    Arrays?.addObject(item)
}
var i=3
//不需要break
switch i{
    case 0:
    i=1
    case 1:
    i=2
    default:
    i=4
}

//我是范形字典表
var TDic=Dictionary<String,String>()
TDic["Key"]="3333"
//我是nil,我不会越界
var second=TDic["second"]



//接口，Swift里称为协议
protocol Myprotocol{
    func ShowName()->NSString?
    func SetName(inputName:NSString)
}
class MyClass:Myprotocol{
    //Swift里的访问权限有Public ，Internal，private
    //私有访问（Private access）只有定义源文件才能访问，使用这个级别可以隐藏不想公开的实现细节。
    private var Name:NSString?
    func ShowName()->NSString?{
        return Name
    }
    
    func SetName(inputName:NSString){
        self.Name=inputName
    }
}

var MyClassObj=MyClass()
MyClassObj.SetName("12321")
MyClassObj.ShowName()

//委托
class Todo{
    var delegate:Myprotocol?
    func GetName()->NSString?{
      return  self.delegate?.ShowName()
    }
}


var  TodoObj=Todo()
TodoObj.delegate=MyClassObj
 var LastName=TodoObj.GetName()







