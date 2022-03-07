//
//  InfoViewController.swift
//  Navigation2
//
//  Created by Сергей Устинов on 13.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton()
        button.setTitle("Info", for: .normal)
        button.sizeToFit()
        button.layer.cornerRadius = button.frame.size.height / 3
        button.center = view.center
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        self.view.addSubview(button)
    }
    
    @objc func pressed(){
        let alertController = UIAlertController(
            title: "Whoah",
            message: "My first alarm",
            preferredStyle: UIAlertController.Style.alert
        )
        
        let alertAction1 = UIAlertAction(
            title: "Cancel",
            style: UIAlertAction.Style.destructive,
            handler: {
                UIAlertAction in
                NSLog("Cancel Pressed")
            }
        )
        
        let alertAction2 = UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default,
            handler: {
                UIAlertAction in
                NSLog("Ok Pressed")
            }
        )
        
        alertController.addAction(alertAction1)
        alertController.addAction(alertAction2)
        
        present(alertController, animated: true, completion: nil)
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
