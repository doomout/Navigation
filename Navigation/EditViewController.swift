import UIKit

//프로토콜이란? 특정 객체가 갖춰야할 기능이나 속성에 대한 설계도, c#의 델리게이트와 같다.
protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message:String)
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
}

class EditViewController: UIViewController {
    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?  //델리게이트는 어떤 값이 들어갈지 모르기에 옵셔널 변수로 선언
    var isOn = false
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var swIsOn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text = textMessage
        swIsOn.isOn = isOn
    }
    

    @IBAction func btnDona(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!) //메세지를 주고 받는 델리게이트
            delegate?.didImageOnOffDone(self, isOn: isOn) //전구 온,오프를 주고 받는 델리게이트
        }
        //세그웨이 추가할 때 Show 형태로 했기에 되돌아 갈 땐 pop 형태로 해야 한다.
        _ = navigationController?.popViewController(animated: true)
    }

    @IBAction func swImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            isOn = true
        } else {
            isOn = false
        }
    }
}
