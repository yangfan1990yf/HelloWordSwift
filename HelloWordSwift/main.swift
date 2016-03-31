//
//  main.swift
//  HelloWordSwift
//
//  Created by 杨帆 on 16/3/30.
//  Copyright © 2016年 杨帆. All rights reserved.
//

import Foundation

print("Hello, World!");

var a = 5;

print("a=\(a)");

var b = true;
print("b=\(b)");

var A = 5;
A=6;

print("A=\(A)")

var aa:Int=55_55_5;

print("aa=\(aa)"+"你好啊")

var yuanzu = (1,"swift",true);

print(yuanzu);

for t in  yuanzu.1.characters
{
    print(t);
}

var arrInt:[Int] = [1,2];
var arrString = ["aaa","bbb"];
var cccc = [[Int]]();
cccc.append(arrInt)
cccc.append(arrInt.reverse())
print(cccc)
print(arrInt)

func SayHello(var hello:String = "hello", var json:String = " yangfan")  {
    hello=hello+json;
    
 print(hello.uppercaseString)
}
SayHello("nihaoa ",json:" hah")


func Add(num:Int)->Int
{
    return num+1;
}
func zj(num:Int) -> Int {
    return num - 1;
}

func WoCao(number:Bool) -> (Int) ->(Int){
    return number ? Add : zj;
}

var nnn:Int = 10;



var fun:(Int)->(Int) = WoCao(nnn>5)

nnn = fun(nnn);
print(nnn);
nnn = fun(nnn);
print(nnn);


func Say(number:Int) -> Bool {
    return number>10;
}

var By:(Int)-> Bool = Say;

var asyyy = By;

print(By(3))


func GetList( arr:[Int],  _ pre:(Int)-> Bool) -> [Int]{

    var tempArr = [Int]();
    
    for tem in arr {
        
        if pre(tem) {
            tempArr.append(tem);
        }
    }
    
    return tempArr;
}

  let arr1 = GetList([1,2,3,4,5,6,7,8],  {(s:Int) in return s > 1})
  let arr2 = GetList([1,2,3,4,5,6,7,8],  {s in return s > 2});
  let arr3 = GetList([1,2,3,4,5,6,7,8],  {s in s > 3});
  let arr4 = GetList([1,2,3,4,5,6,7,8], {$0 > 4});

print(arr1,arr2,arr3,arr4)

func Function(clo:()->())
{
    print("无参数，无返回值的函数类型")
}

Function({
 
})
Function {

}






public class myClass
{
    public var name:String = "" ;
    init(_ name:String)
    {
        self.name = name;
    }
    
}

var myc = myClass("yangfan");

print(myc.name)




















//write(<#T##Int32#>, UnsafePointer<Void>, <#T##Int#>)