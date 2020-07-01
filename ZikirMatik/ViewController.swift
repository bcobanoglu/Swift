
import UIKit

class ViewController: UIViewController {
    //Outlet Değişkenler
    @IBOutlet weak var Sayac: UIStepper!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Button: UIButton!
    //Olaya bağlı çalışan fonksiyonlar
    @IBAction func Switch(_ sender: UISwitch) {
       if sender.isOn { //Switch açık ise
           Sayac.isEnabled = true
           Button.isEnabled = true
       }
       else { //Switch kapalı ise
         //Buton ve Stepper'i kilitler
         Sayac.isEnabled = false
         Button.isEnabled = false
       }
    }
    
    @IBAction func Sayac(_ sender: UIStepper) {
       //Stepperin değerini Label'e ata
       Label.text = String (Int(Sayac.value))
    }
    //Sayacmatiği sıfırlar
    @IBAction func Button(_ sender: UIButton) {
       Sayac.value = 0
       Label.text = String (Int(Sayac.value))
    }
    override func viewDidLoad() {
       super.viewDidLoad()
    }
}

