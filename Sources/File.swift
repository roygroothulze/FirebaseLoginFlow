//
//  File.swift
//  
//
//  Created by Roy Groot Hulze on 18/09/2022.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
        
        self.view.addSubview(welcomeMessage)
        welcomeMessage.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        welcomeMessage.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        welcomeMessage.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = true
        
        self.view.addSubview(dismissButton)
        welcomeMessage.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 50).isActive = true
        welcomeMessage.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        welcomeMessage.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = true
        
    }
    
    var welcomeMessage: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Welcome,"
        view.font = .preferredFont(forTextStyle: .title1, compatibleWith: .none)
        return view
    }()
    
    var dismissButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Continue"
        return button
    }()
}
