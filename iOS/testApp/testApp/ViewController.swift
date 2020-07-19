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
    }
    @IBOutlet weak var aaaaaaLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        let storyboard = UIStoryboard(name: "fw1ViewController", bundle: Bundle(for: fw1ViewController.self))
//        if let viewController = storyboard.instantiateViewController(withIdentifier: "fw1ViewController") as? fw1ViewController {
//
//        //viewController.modalPresentationStyle = .fullScreen
//        present(viewController, animated: true)
//        }
//        else {
//            print("")
//        }

        

        let b = Bundle(for:  FwViewController.self)
        let nib = UINib(nibName: "FwViewController", bundle: b)

        if let vc = nib.instantiate(withOwner: self, options: nil).first as? FwViewController {

        //vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        }
        else {
            print("")
        }

        
    }


}

