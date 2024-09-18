//
//  DelegateDesignViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-18.
//

import UIKit

class DelegateDesignViewController: UIViewController {
    
    private var actionButtonView = ActionButtonView()
    private var textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(actionButtonView)
    
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.layer.shadowColor = UIColor.black.cgColor

        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        actionButtonView.actionButtonVuewDelegate = self
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        textLabel.text = "Primary Action Button Called...!"
        textLabel.textColor = .black
        textLabel.font = .boldSystemFont(ofSize: 14)
        
        

    }
    
}

extension DelegateDesignViewController : ActionButtonViewDelegate{
    
    func onPrimaryButtonTapped() {
        print("VIEW CONTROLLER : PRIMARY TAPPED!")
        textLabel.isHidden = false
    }
    
    func onSecondaryButtonTapped() {
        print("VIEW CONTROLLER : SECONDARY TAPPED!")
        textLabel.isHidden = true
    }
}

#Preview{
    DelegateDesignViewController()
}
