//
//  ViewController.swift
//  testApp
//
//  Created by oo on 2020/07/04.
//  Copyright © 2020 testApp. All rights reserved.
//

import UIKit
import testFw

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        aaaaaaLabel.text = test.testA()
        now.text = testA()
    }
    @IBOutlet weak var aaaaaaLabel: UILabel!
    
    @IBOutlet weak var now: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let storyboard = UIStoryboard(name: "fw1ViewController", bundle: Bundle(for: fw1ViewController.self))
        if let viewController = storyboard.instantiateViewController(withIdentifier: "fw1ViewController") as? fw1ViewController {

        //viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
        }
        else {
            print("")
        }

        

//        let b = Bundle(for:  FwViewController.self)
//        let nib = UINib(nibName: "FwViewController", bundle: b)
//
//        if let vc = nib.instantiate(withOwner: self, options: nil).first as? FwViewController {
//
//        //vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
//        }
//        else {
//            print("")
//        }

        
    }

    
    
    func testA() -> String {
        let aaa:String
        #if STG
        print("app STG")
        aaa = String("fwText STG " + testB())
        #elseif DEMO
        print("app DEMO")
        aaa = String("fwText DEMO " + testB())
        #elseif PRD
        print("app PRD")
        aaa = String("fwText PRD " + testB())
        #else
        print("app OHTER")
        aaa = String("fwText OTHER " + testB())
        #endif
        
        return aaa
    }
    
    func testB() -> String {
        
        let aaa: String
        #if DEBUG
        print("app DEBUG")
        aaa = "fwText DEBUG"
        #else
        print("app RELEASE")
        aaa = "fwText RELEASE"
        #endif
        
        return aaa
    }
    
}

