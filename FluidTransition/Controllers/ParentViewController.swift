//
//  ViewController.swift
//  FluidTransition
//
//  Created by Mikhail Rubanov on 28/06/2019.
//  Copyright © 2019 akaDuality. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    
    private let transition = PanelTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func foo() {
        let child = ChildViewController()
        child.transitioningDelegate = transition
        child.modalPresentationStyle = .custom
        
        present(child, animated: true)
    }
    
    @IBAction func openDidPress(_ sender: Any) {
        foo()
    }
}
