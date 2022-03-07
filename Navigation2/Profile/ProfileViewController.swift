//
//  SecondViewController.swift
//  Navigation2
//
//  Created by Сергей Устинов on 12.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileViewHeader = ProfileHeaderView()
    
    override func viewWillLayoutSubviews() {
        
        profileViewHeader.frame = self.view.frame
        self.view.addSubview(profileViewHeader)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
