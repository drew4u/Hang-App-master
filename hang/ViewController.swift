//
//  ViewController.swift
//  hang


import UIKit
import Firebase

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var StatusPicker: UIPickerView!
    
    var pickerData: [[String]] = [[String]]()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        //adds logout item to left of navigation controller
        navigationItem.leftBarButtonItem = UIBarButtonItem(title:"logout", style: .plain, target: self, action: #selector(handleLogout))
        
        // Connect data:
        //self.StatusPicker.delegate = self
        //self.StatusPicker.dataSource = self
        
        // Input data into the Array:
        //pickerData = [["1","2"],
        //["Down to chill", "Drinking brewski's"]]
    }

    @objc func handleLogout() {
        //presents login view
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }

}

