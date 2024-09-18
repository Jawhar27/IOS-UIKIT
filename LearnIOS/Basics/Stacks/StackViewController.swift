//
//  StackViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-15.
//

import UIKit

class StackViewController: UIViewController {
    
    private var stackView : UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 16
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rect1 = createRec(color: .red )
        var rect2 = createRec(color: .blue )
        var rect3 = createRec(color: .green )
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
    
    @objc func createRec ( color : UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }
}

#Preview{
    StackViewController()
}
