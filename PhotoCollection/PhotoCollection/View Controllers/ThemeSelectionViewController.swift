//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupSubViews()
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        setupSubViews()
    }

    func setupSubViews() {
        //title Label
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Select Theme"
        titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        view.addSubview(titleLabel)
        
        let titleLabelTopConstraint =  NSLayoutConstraint(item: titleLabel,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: view.safeAreaLayoutGuide,
                                                          attribute: .top,
                                                          multiplier: 1,
                                                          constant: 40)
        titleLabelTopConstraint.isActive = true
        
        let titleLabelLeadingConstraint =  NSLayoutConstraint(item: titleLabel,
                                                              attribute: .leading,
                                                              relatedBy: .equal,
                                                              toItem: view.safeAreaLayoutGuide,
                                                              attribute: .leading,
                                                              multiplier: 1,
                                                              constant: 110)
        
        titleLabelLeadingConstraint.isActive = true
        
        //Select theme label
        let selectThemeLabel = UILabel()
        selectThemeLabel.translatesAutoresizingMaskIntoConstraints = false
        selectThemeLabel.text = "Select the theme you would like to use:"
        selectThemeLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(selectThemeLabel)
        
        selectThemeLabel.topAnchor.constraint(equalTo: titleLabel.centerYAnchor, constant: 50).isActive = true
        selectThemeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        
        
        //darkThemeButton
        let darkThemeButton = UIButton(type: .system)
        darkThemeButton.translatesAutoresizingMaskIntoConstraints = false
        darkThemeButton.setTitle("Dark", for: .normal)
        darkThemeButton.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        view.addSubview(darkThemeButton)
        
        darkThemeButton.topAnchor.constraint(equalTo: selectThemeLabel.bottomAnchor, constant: 40).isActive = true
        darkThemeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 120).isActive = true
        
        
        //BlueThemeButton
        let blueThemeButton = UIButton(type: .system)
        blueThemeButton.translatesAutoresizingMaskIntoConstraints = false
        blueThemeButton.setTitle("Blue", for: .normal)
        blueThemeButton.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
        view.addSubview(blueThemeButton)
        
        blueThemeButton.topAnchor.constraint(equalTo: selectThemeLabel.bottomAnchor, constant: 40).isActive = true
        blueThemeButton.leadingAnchor.constraint(equalTo: darkThemeButton.trailingAnchor, constant: 100).isActive = true
    }
    
    @objc func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    var themeHelper: ThemeHelper?
}
