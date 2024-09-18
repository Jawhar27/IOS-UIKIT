//
//  ActionButtonView.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-18.
//

import UIKit

protocol ActionButtonViewDelegate : AnyObject {
    func onPrimaryButtonTapped()
    func onSecondaryButtonTapped()
}

class ActionButtonView: UIView {
    
    weak var actionButtonVuewDelegate : ActionButtonViewDelegate?

    private var primaryActionButton : UIButton = {
        let button = UIButton()
        button.setTitle("Primary Action", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button;
    }()
    
    private var secondaryActionButton : UIButton = {
        let button = UIButton()
        button.setTitle("Secondary Action", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button;
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 15
        
        addSubview(primaryActionButton)
        primaryActionButton.widthAnchor.constraint(equalToConstant:  200).isActive = true
        primaryActionButton.heightAnchor.constraint(equalToConstant : 44).isActive = true
        primaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        primaryActionButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        primaryActionButton.addTarget(self, action: #selector(onPrimaryTap), for: .touchUpInside)
        
        addSubview(secondaryActionButton)
        secondaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        secondaryActionButton.topAnchor.constraint(equalTo: primaryActionButton.bottomAnchor, constant: 16).isActive = true
        
        secondaryActionButton.addTarget(self, action: #selector(onSecondaryTap), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func onPrimaryTap(){
        print("VIEW : Primary Button Tapped...!")
        actionButtonVuewDelegate?.onPrimaryButtonTapped()
    }
    
    @objc func onSecondaryTap(){
        print("VIEW : Secondary Button Tapped...!")
        actionButtonVuewDelegate?.onSecondaryButtonTapped()
    }
}

#Preview{
    ActionButtonView()
}
