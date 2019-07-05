//
//  ViewController.swift
//  Kozub_MVC
//
//  Created by Michael Kozub on 7/3/19.
//  Copyright © 2019 Michael Kozub. All rights reserved.
//


import UIKit
import Anchorage

class ViewController: UIViewController {

    var theButton = UIButton()
    var theView = UIView()
    let screenSize: CGRect = UIScreen.main.bounds

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First ViewController"

        addAndConfigureViews()
    }

    func addAndConfigureViews() {
        self.view.addSubview(theButton)
        theButton.widthAnchor == view.widthAnchor / 2
        theButton.heightAnchor == 50
        theButton.centerXAnchor == view.safeAreaLayoutGuide.centerXAnchor
        theButton.bottomAnchor == view.safeAreaLayoutGuide.bottomAnchor - 20

        theButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        theButton.setTitle("Tap to make Blue", for: .normal)
        theButton.layer.cornerRadius = 5

        theButton.addTarget(self, action: #selector(theAction(sender:)), for: UIControl.Event.touchUpInside)

        self.view.addSubview(theView)
        theView.widthAnchor == view.widthAnchor - 20
        theView.heightAnchor == 50
        theView.centerXAnchor == view.safeAreaLayoutGuide.centerXAnchor
        theView.topAnchor == view.safeAreaLayoutGuide.topAnchor + 20
        theView.bottomAnchor == view.safeAreaLayoutGuide.centerYAnchor

        theView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        theView.layer.cornerRadius = 5

    }

    @objc func theAction(sender: UIButton) {
        if theView.backgroundColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) {
            UIView.animate(withDuration: 0.5) {
                self.theView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
                self.theButton.setTitle("Tap to make Orange", for: .normal)
            }
        } else {
            UIView.animate(withDuration: 0.5) {
                self.theView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
                self.theButton.setTitle("Tap to make Blue", for: .normal)
            }
        }
    }

}

