

import UIKit

class ResultController: UIViewController {

    var bmiValue: String?
        var advice: String?
        var color: UIColor?

    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        bmiLabel.text = bmiValue
        textLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
