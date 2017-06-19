//
//  main.swift
//  pinasdS13
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var Obj1:Brad01? = Brad01()
var Obj2:Brad01? = Brad01()
var Obj3:Brad01? = Brad01()
print(Brad01.counter)
var Obj4 = Obj1
print(Brad01.counter)

//這樣就可以調用deinit但前提是沒有其他的指向
//Obj2 = nil
print(Brad01.counter)
print(Obj4 === Obj1)
Obj1 = nil
//print(Obj1 == nil)
print(Brad01.counter)

func m1(){
    //Obj5為區域變數結束後自動解構不管是Brad01 or Brad01?
    let Obj5:Brad01? = Brad01()
    //若創造一個新的指向Obj5就不會解構,Note：Obj5與[Obj5]是不同的東西
    Brad01s += [Obj5]
    print("m1")
}

var Brad01s = [Obj1,Obj2,Obj3] //[Brad01]

print("before:\(Brad01.counter)")
m1()
print("after:\(Brad01.counter)")



print("-------------")

//環狀串列
var brad2:Brad02? = Brad02()
var brad3:Brad03? = Brad03()
brad2!.obj3 = brad3
brad3!.obj2 = brad2

brad2 = nil
print(brad2 == nil)
//print(brad3!.obj2 == nil)
//
//brad3!.obj2!.m1()











