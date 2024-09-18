//
//  ButtonViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-15.
//

import UIKit

class ButtonViewController: UIViewController {
    private var showNameBtn : UIButton={
        let button = UIButton(type: .system)
        button.setTitle("Show Name", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var nameLabel : UILabel = {
       let label = UILabel()
        label.text = "Jawhar Appeared!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30)
        label.isHidden = true
       return label;
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNameBtn.addTarget(self, action: #selector(showNamefunc), for: .touchUpInside)

        view.addSubview(showNameBtn)
        showNameBtn.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameBtn.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameBtn.backgroundColor = .blue
        showNameBtn.layer.cornerRadius = 10
        showNameBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: showNameBtn.topAnchor, constant: -10).isActive = true
    }
    
    @objc func showNamefunc(){
        nameLabel.isHidden.toggle();
        let title = !nameLabel.isHidden ?  "Hide Name" : "Show Name"
        showNameBtn.setTitle( title, for: .normal)
    }
    
}

#Preview{
    ButtonViewController()
}
