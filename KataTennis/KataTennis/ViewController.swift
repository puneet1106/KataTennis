
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1PointTextField: UITextField!
    @IBOutlet weak var player2PointTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    private var viewModel: GameScoreViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        binding()
        // Do any additional setup after loading the view.
    }
    
    private func binding() {
        self.viewModel = GameScoreViewModel()
        self.viewModel.bindViewModelToController = {
            self.resultLabel.text = self.viewModel.resultStatus
        }
    }


    @IBAction func getScoreButtonAction(_ sender: Any) {
        guard let player1Point = player1PointTextField.text, let player2Point = player2PointTextField.text else {return}
        
        viewModel.callFuncToGetPoints(player1Point: Int(player1Point) ?? 0, player2Point: Int(player2Point) ?? 0)
    }
}

