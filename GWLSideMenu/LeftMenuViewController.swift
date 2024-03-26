//
//  LeftMenuViewController.swift
//  GWLSideMenu
//
//  Created by gwl on 24/04/20.
//  Copyright © 2020 Galaxyweblinks. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController {
    
    @IBAction func oneCall(_ sender: Any) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

          let centerVC: DashboardViewController = mainStoryboard.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        let centerNavVC = UINavigationController(rootViewController: centerVC)
        panel?.center(centerNavVC)
    }
    
    @IBAction func secondCall(_ sender: Any) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

          let centerVC: Dashboard2ViewController = mainStoryboard.instantiateViewController(withIdentifier: "Dashboard2ViewController") as! Dashboard2ViewController
        let centerNavVC = UINavigationController(rootViewController: centerVC)
        panel?.center(centerNavVC)
    }
}
