
import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var rangeNumber: UILabel! //顯示範圍數字
    @IBOutlet weak var leftNumber: UILabel! //剩下次數
    @IBOutlet weak var guessNumber: UITextField! //輸入猜的數字
    
    var randomNumber = Int.random(in: 1...100) //產生亂數
    var left = 6 //存剩餘次數
    var maxNumber = 100 //最大值
    var minNumber = 0 //最小值
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gogo(_ sender: Any) {
        var guess =  guessNumber.text
        let guess1 = Int(guess!)//存猜的數字
        if guess1 != nil{ //如果猜的數字不是空白
           
            if guess1! == randomNumber{ //如果猜的數字跟亂數一樣
                rangeNumber.text = "恭喜答對"
                
            }
            else if guess1! > randomNumber{ //如果猜的數字大於亂數
                maxNumber = guess1! //猜的數字 變最大值
                rangeNumber.text = "太大囉，範圍\(minNumber)~\(maxNumber)"
                }
            else{ //如果猜的數字小於亂數
                minNumber = guess1! //猜的數字 變最小值
                rangeNumber.text = "太小囉，範圍\(minNumber)~\(maxNumber)"
                guessNumber.text = ""
            }
            }
        }
   
        }
            
           

   


       



