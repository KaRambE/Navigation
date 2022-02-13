//
//  FirstViewController.swift
//  Navigation2
//
//  Created by Сергей Устинов on 12.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let checkPost = UIButton()
        checkPost.setTitle("Проверить пост", for: .normal)
        checkPost.sizeToFit()
        checkPost.layer.cornerRadius = checkPost.frame.size.height / 3
        checkPost.center = view.center
        checkPost.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        checkPost.setTitleColor(.white, for: .normal)
        checkPost.backgroundColor = .blue
        self.view.addSubview(checkPost)
        
    }
    
    @objc func pressed() {
        let postVC = PostViewController()
        let postItem = post(title: "Тестовый пост №1")
        
        postVC.title = postItem.title
        postVC.view.backgroundColor = .red
        show(postVC, sender: self)
    }
    
    struct post {
        var title: String
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
