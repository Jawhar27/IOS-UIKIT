//
//  ShapeViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-15.
//

import UIKit

class ShapeViewController: UIViewController {
    
    private var rect : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemRed
        
        return view
    }()
    
    private var circle : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 50
        view.backgroundColor = .systemBlue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(circle)
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        circle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        circle.leftAnchor.constraint(equalTo: rect.rightAnchor,constant: 20).isActive = true
        
    }
 

}

#Preview{
    ShapeViewController()
}
