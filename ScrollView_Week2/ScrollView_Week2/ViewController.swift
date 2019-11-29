//
//  ViewController.swift
//  ScrollView_Week2
//
//  Created by Salma on 11/29/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentSize.height = 2000
        view.backgroundColor = UIColor(named: "peach")
        return view
    }()

    // MARK: View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        
        setupScrollView()
    }
    
    func setupScrollView() {
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        // top lable
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.textColor = UIColor(named: "blue")
        label1.font = UIFont(name: "Papyrus", size: 18.0)
        label1.contentMode = .scaleToFill
        label1.numberOfLines = 0
        label1.text = "Hello from the top"
        
        scrollView.addSubview(label1)
        
        // label1 constraints
        label1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        label1.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 150).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        // bottom lable
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.textColor = UIColor(named: "blue")
        label2.font = UIFont(name: "Papyrus", size: 18.0)
        label2.contentMode = .scaleToFill
        label2.numberOfLines = 0
        label2.text = "Hello from below"
        
        scrollView.addSubview(label2)
        
        // label2 constraints
        label2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1900).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 150).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 20).isActive = true

        
    }
}
