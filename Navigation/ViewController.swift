
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //prepare 함수는 해당 세그웨이가 해당 뷰 컨트롤러로 전환되기 직전에 호출되는 함수며 데이터 전달에 사용
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        
        if segue.identifier == "editButton" { //버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" { //바 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use Bar button"
        }
    }
}

