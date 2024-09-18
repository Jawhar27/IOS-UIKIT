//
//  ScrollViewController.swift
//  LearnIOS
//
//  Created by Jawhar Sivagnanam on 2024-09-18.
//

import UIKit

class ScrollViewController: UIViewController {
    
    private var scrollView = UIScrollView()
    
    private var stackView : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack;
        
    }()
    
    private let rectHeight : CGFloat = 200
    private let noOfReacts = 20
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllRects()
        
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.delegate = self
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        scrollView.contentSize.height = (rectHeight * CGFloat(noOfReacts)) + 64
        
    }
    
    @objc func createRectView () -> UIView{
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .gray
        view.layer.cornerRadius = 16
        return view;
    }
    
    @objc func createAllRects(){
        for _ in 1 ..< noOfReacts{
            let rect = createRectView()
            stackView.addArrangedSubview(rect)
        }
    }
    

}

extension ScrollViewController : UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("DEBUG : Scroll offset \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("DEBUG : Scroll END DRAGGING...")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("DEBUG : Scroll END DECELERATING..." )
    }
    
}

#Preview{
    ScrollViewController()
}
