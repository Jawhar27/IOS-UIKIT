//
//  TextfieldViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-15.
//

import UIKit

class TextfieldViewController: UIViewController {
    
    private var textfield : UITextField = {
       let tf = UITextField()
        tf.placeholder = "Search ..."
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.returnKeyType = .search
        tf.isUserInteractionEnabled = true
//        tf.delegate=self
       return tf;
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(textfield)
        
        textfield.delegate = self
        textfield.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true

    }
    
    @objc func onEditingChanged(_ sender : UITextField){
        print("Text from field : \(sender.text)")
    }
    
}

extension TextfieldViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Search Started....!");
        textField.resignFirstResponder()
        return true;
    }
}




#Preview{
    TextfieldViewController()
}
