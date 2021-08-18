//
//  ViewController.swift
//  AlertProject
//
//  Created by Numan ONUR on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var password2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func singUP(_ sender: Any) {
        let alertNick = UIAlertController(title: "Error!", message: "User name not found.", preferredStyle: UIAlertController.Style.alert)
        let okButonNick = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alertNick.addAction(okButonNick)
        
        let alertPass1 = UIAlertController(title: "Error!", message: "Password not found.", preferredStyle: UIAlertController.Style.alert)
        let okButonPass1 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alertPass1.addAction(okButonPass1)
        
        let alertPass2 = UIAlertController(title: "Error!", message: "Passwords not macth.", preferredStyle: UIAlertController.Style.alert)
        let okButonPass2 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alertPass2.addAction(okButonPass2)
        
        let alertPass3 = UIAlertController(title: "Error!", message: "2nd passwords not found.", preferredStyle: UIAlertController.Style.alert)
        let okButonPass3 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alertPass3.addAction(okButonPass3)
        
        let alertPass4 = UIAlertController(title: "Success!", message: "Sing up is sucess.", preferredStyle: UIAlertController.Style.alert)
        let okButonPass4 = UIAlertAction(title: "Cointine", style: UIAlertAction.Style.default, handler: nil)
        alertPass4.addAction(okButonPass4)
        
        if nickname.text == "" {
            self.present(alertNick, animated: true, completion: nil)
        }
        else{
            if password1.text == "" {
                self.present(alertPass1, animated: true, completion: nil)
            }
            else{
                if password2.text == "" {
                    self.present(alertPass3, animated: true, completion: nil)
                }
                else if password2.text != password1.text {
                    self.present(alertPass2, animated: true, completion: nil)
                }
                else{
                    self.present(alertPass4, animated: true, completion: nil)
                }
            }
        }
        
        
        
    }
    

}

