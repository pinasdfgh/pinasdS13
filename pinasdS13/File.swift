//
//  File.swift
//  pinasdS13
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class Brad01{
    static var counter = 0
    init(){
        print("Brad01:init()")
        Brad01.counter += 1
    }
    deinit {
        print("Brad01:deinit()")
        Brad01.counter -= 1
    }
}

class Brad02{
    var obj3:Brad03?
    func m1(){
        print("Brad02:m1()")
    }
    deinit {
        print("Brad02:die")
    }
}

class Brad03{
    //weak 修飾字代表參照沒那麼強烈,有人nil也會nil,系統預設
    weak var obj2:Brad02?
    func m1(){
        print("Brad03:m1()")
    }
    deinit {
        print("Brad03:die")
    }
}


























