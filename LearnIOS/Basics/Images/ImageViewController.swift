//
//  ImageViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-15.
//

import UIKit

class ImageViewController: UIViewController {

    private var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "paperplane")
        imageView.tintColor = .red
        
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.layer.cornerRadius = 10
        imageView.backgroundColor = .green
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

}

#Preview{
    ImageViewController()
}

