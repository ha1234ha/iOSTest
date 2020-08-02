//
//  test.swift
//  testFw
//
//  Created by oo on 2020/07/04.
//  Copyright © 2020 testApp. All rights reserved.
//

import Foundation


public class test {
    
    public class func testA() -> String {
        
        let aaa: String
        #if STG
        print("fw STG")
        aaa = String("fwText STG " + testB())
        #elseif DEMO
        print("fw DEMO")
        aaa = String("fwText DEMO " + testB())
        #elseif PRD
        print("fw PRD")
        aaa = String("fwText PRD " + testB())
        #else
        print("fw OHTER")
        aaa = String("fwText OTHER " + testB())
        #endif
        
        return aaa
    }
    
    public class func testB() -> String {
        
        let aaa: String
        #if DEBUG
        print("fw DEBUG")
        aaa = "fwText DEBUG"
        #else
        print("fw RELEASE")
        aaa = "fwText RELEASE"
        #endif
        
        return aaa
    }
}
