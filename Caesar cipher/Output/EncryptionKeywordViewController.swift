import UIKit

class EncryptionKeywordViewController: UIViewController {
    @IBOutlet weak var originalStringLabel: UILabel!
    @IBOutlet weak var keywordLabel: UILabel!
    @IBOutlet weak var encryptedStringLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    var string: String?
    var key: String?
    var encrypted: String?
    
    private func configureUI() {
        doneButton.layer.cornerRadius = 10
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        
        originalStringLabel.text! = string!
        keywordLabel.text = key!
        encryptedStringLabel.text! = encrypted!
        
    }
    
}
