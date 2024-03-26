//
//  DashboardViewController.swift
//  GWLSideMenu
//
//  Created by gwl on 24/04/20.
//  Copyright © 2020 Galaxyweblinks. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBAction func openMenu(_ sender: Any) {
        panel?.openLeft(animated: true)
    }
    
    @IBAction func logout(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
           let centerNavVC = UINavigationController(rootViewController: redViewController)
        
        UIApplication.shared.windows.first?.rootViewController = centerNavVC
    }
}
