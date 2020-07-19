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
    
    
    func testA() -> String {
        
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
    
    func testB() -> String {
        
        #if DEBUG
        print("aaa DEBUG")
        return "fwText DEBUG"
        #else
        print("aaa RELEASE")
        return "fwText RELEASE"
        #endif
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
