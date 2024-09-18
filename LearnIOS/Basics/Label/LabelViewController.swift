//
//  LabelViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-13.
//

import UIKit

class LabelViewController: UIViewController {
    
    private var titleLabel = UILabel();
    
    private var subtitleLabel : UILabel={
        let label=UILabel();
        label.text="This is subtitle"
        label.textColor = .red
        return label;
    }();

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text="Jawhar"
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints=false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints=false
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 10.0).isActive=true
    }
    
    

}
#Preview{
    LabelViewController()
}
