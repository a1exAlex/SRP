import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shiftButton: UIButton!
    @IBOutlet weak var keywordButton: UIButton!
    
    private func configureUI() {
        
        shiftButton.layer.cornerRadius = 10
        shiftButton.layer.borderWidth = 1
        shiftButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        keywordButton.layer.cornerRadius = 10
        keywordButton.layer.borderWidth = 1
        keywordButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.isNavigationBarHidden = false

    }

}

