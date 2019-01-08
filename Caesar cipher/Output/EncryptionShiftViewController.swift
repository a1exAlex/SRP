import UIKit
import Foundation

class EncryptionShiftViewController: UIViewController {
    
    
    @IBOutlet weak var originalStringLabel: UILabel!
    @IBOutlet weak var encryptedStringLabel: UILabel!
    @IBOutlet weak var shiftPickerView: UIPickerView!
    @IBOutlet weak var doneButton: UIButton!
    
    private let dataSourceArray = ["-10", "-9", "-8", "-7", "-6", "-5", "-4", "-3", "-2", "-1",
                                   "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", ]
    
    private let defaultValue = 10
    
    private func configureUI() {
        doneButton.layer.cornerRadius = 10
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    var string: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        
        originalStringLabel.text = string
        encryptedStringLabel.text = string
        
        shiftPickerView.delegate = self
        shiftPickerView.dataSource = self
        shiftPickerView.selectRow(defaultValue, inComponent: 0, animated: true)
    }
    
}
    extension EncryptionShiftViewController: UIPickerViewDataSource, UIPickerViewDelegate {
       
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return dataSourceArray.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            return dataSourceArray[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//            выбранное значение кладется в функцию
            let encryption = cipherWithShift(string: string!, shift: Int(dataSourceArray[row])!)
            encryptedStringLabel.text! = String(encryption!)
        }
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            let  label = UILabel()
            
            label.font = UIFont(name: "Futura-Bold", size: 25)
            label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            label.text = dataSourceArray[row]
            label.textAlignment = .center
            
            return label
        }
        
        
    }

