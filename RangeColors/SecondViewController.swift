//
//  SecondViewController.swift
//  RangeColors
//
//  Created by p0nyqz on 31.10.23..
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showAlert(){
       let alertController = UIAlertController (
        title: "Welcome",
        message: "This is myName App",
        preferredStyle: .alert)
        // create ok btn
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        // create cancel btn
        let actionCANCEL = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        // add 2 btns to Alert Conroller
        alertController.addAction(actionOK)
        alertController.addAction(actionCANCEL)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
