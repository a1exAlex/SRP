import UIKit
import Foundation

class InputKeywordViewController: UIViewController {
    @IBOutlet weak var enteredStringTextField: UITextField!
    @IBOutlet weak var enteredKeywordTextField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    @IBAction func unwindToInputVC(segue: UIStoryboardSegue) {
        
    }
    
    private func configureUI() {
        doneButton.layer.cornerRadius = 10
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = #colorLiteral(red: 0.06777521968, green: 0.5021696687, blue: 0.9977130294, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "to keyword" else { return }
        
        if let dvc = segue.destination as? EncryptionKeywordViewController {
            
            let originalString = enteredStringTextField.text!
            let keyword = enteredKeywordTextField.text!
            let encryptedString = String(cipherWithKeyword(string: originalString, keyword: keyword))
            
        
             dvc.string = originalString
             dvc.key = keyword
             dvc.encrypted = encryptedString
            
            
        }
        
    }
    

}
