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
        
        #if STG
        print("aaa STG")
        return String("fwText STG " + testB())
        #elseif DEMO
        print("aaa DEMO")
        return String("fwText DEMO " + testB())
        #elseif PRD
        print("aaa PRD")
        return String("fwText PRD " + testB())
        #else
        print("aaa OHTER")
        return String("fwText OTHER " + testB())
        #endif
        
    }
    
    public class func testB() -> String {
        
        #if DEBUG
        print("aaa DEBUG")
        return "fwText DEBUG"
        #else
        print("aaa RELEASE")
        return "fwText RELEASE"
        #endif
    }
}
