//
//  ViewController.swift
//  GWLSideMenu
//
//  Created by gwl on 24/04/20.
//  Copyright © 2020 Galaxyweblinks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    @IBAction func login(_ sender: Any) {
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let leftMenuVC: LeftMenuViewController = mainStoryboard.instantiateViewController(withIdentifier: "LeftMenuViewController") as! LeftMenuViewController
        let rightMenuVC: RightMenuViewController = mainStoryboard.instantiateViewController(withIdentifier: "RightMenuViewController") as! RightMenuViewController
        let centerVC: DashboardViewController = mainStoryboard.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        let centerNavVC = UINavigationController(rootViewController: centerVC)
        
        let rootController: FAPanelController =  FAPanelController()
        rootController.configs.rightPanelWidth = 80
        rootController.configs.bounceOnRightPanelOpen = false
        
        let vs = rootController.center(centerNavVC).left(leftMenuVC).right(rightMenuVC)
        
        UIApplication.shared.windows.first?.rootViewController = vs

    }

}

