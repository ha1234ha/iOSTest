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
    
}

