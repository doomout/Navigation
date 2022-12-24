import UIKit

//프로토콜이란? 특정 객체가 갖춰야할 기능이나 속성에 대한 설계도, c#의 델리게이트와 같다.
protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message:String)
}

class EditViewController: UIViewController {
    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text = textMessage
    }
    

    @IBAction func btnDona(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!)
        }
        //세그웨이 추가할 때 Show 형태로 했기에 되돌아 갈 땐 pop 형태로 해야 한다.
        _ = navigationController?.popViewController(animated: true)
    }

}
