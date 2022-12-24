import UIKit

class EditViewController: UIViewController {
    var textWayValue: String = ""
    
    @IBOutlet var lblWay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
    }
    

    @IBAction func btnDona(_ sender: UIButton) {
        //세그웨이 추가할 때 Show 형태로 했기에 되돌아 갈 땐 pop 형태로 해야 한다.
        _ = navigationController?.popViewController(animated: true)
    }

}
