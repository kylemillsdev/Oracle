//
//  CreateItemViewController.swift
//  Oracle
//
//  Created by Kyle Mills on 9/3/15.
//  Copyright (c) 2015 Kyle Mills Dev. All rights reserved.
//

import UIKit

class CreateItemViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var txtMenuItem: UITextField!
    
    @IBOutlet weak var txtIngredients: UITextView!
    @IBOutlet weak var txtPrep: UITextView!
    @IBOutlet weak var txtSauce: UITextView!
    
    @IBOutlet weak var segCategory: UISegmentedControl!
    
    @IBOutlet weak var saveItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveItem.enabled = false
        
        txtMenuItem.delegate = self
        txtIngredients.delegate = self
        txtPrep.delegate = self
        txtSauce.delegate = self
        
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: "didTapView")
        self.view.addGestureRecognizer(tapRecognizer)
        
        let swipeRecognizer = UISwipeGestureRecognizer()
        swipeRecognizer.addTarget(self, action: "swipeAwayKeyboard")
        swipeRecognizer.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeRecognizer)

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        txtMenuItem.resignFirstResponder()
        return true
    }
    func didTapView() {
        self.view.endEditing(true)
    }
    func swipeAwayKeyboard() {
        self.view.endEditing(true)
    }
  
}
