//
//  fw1ViewController.swift
//  testFw
//
//  Created by oo on 2020/07/19.
//

import UIKit

public class fw1ViewController: UIViewController {
    @IBOutlet weak var aaalabel: UILabel!
    
    @IBOutlet weak var now: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        aaalabel.text = test.testA()
        
        now.text = testA()
    }
    
    
    public func testA() -> String {
        
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
    
    public func testB() -> String {
        
        let aaa: String
        #if DEBUG
        print("fw DEBUG")
        aaa = "fw DEBUG"
        #else
        print("fw RELEASE")
        aaa = "fw RELEASE"
        #endif
        
        return aaa
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
