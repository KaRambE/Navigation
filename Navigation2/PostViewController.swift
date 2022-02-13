//
//  PostViewController.swift
//  Navigation2
//
//  Created by Сергей Устинов on 13.02.2022.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let moreInfoBarButtonItem = UIBarButtonItem(title: "Подробности", style: .done, target: self, action: #selector(moreInfo))
            self.navigationItem.rightBarButtonItem  = moreInfoBarButtonItem
        
        
        
    }
    
    @objc func moreInfo(){
        let modalInfo = InfoViewController()
        modalInfo.view.backgroundColor = .green
        modalInfo.modalPresentationStyle = .popover
        modalInfo.modalTransitionStyle = .coverVertical
        self.present(modalInfo, animated: true, completion: nil)
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
