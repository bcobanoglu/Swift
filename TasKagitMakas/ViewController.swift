import UIKit
class ViewController: UIViewController {
    // Global Değişkenler
    var mySayac = 0
    var pcSayac = 0
    let dizi = ["T","K","M"] //PC için seçim dizisi
    // IBOutlets özellikli değişkenler
    @IBOutlet weak var baslikLbl: UILabel!
    @IBOutlet weak var pcPuanLbl: UILabel!
    @IBOutlet weak var myPuanLbl: UILabel!
    @IBOutlet weak var msjLabel: UILabel!
    
    @IBOutlet weak var pcTasResim: UIImageView!
    @IBOutlet weak var pcMakasResim: UIImageView!
    @IBOutlet weak var pcKagitResim: UIImageView!
    
    //IBActions olaylı fonksiyonlar
    //Üzerinde taş simgesi bulunan Butona tıklandığında çalışacak kod
    @IBAction func tasSecildi(_ sender: Any) {
        let pcSecim = dizi.randomElement() // diziden rastgele eleman seç
        if pcSecim == "T" {
            pcTasResim.isHidden = false
            pcMakasResim.isHidden = true
            pcKagitResim.isHidden = true
            msjLabel.text = "Aynı şeyi seçtiniz, Berabere!"
        }
        if pcSecim == "M" {
            pcTasResim.isHidden = true
            pcMakasResim.isHidden = false
            pcKagitResim.isHidden = true
            mySayac += 1
            myPuanLbl.text = String(mySayac)
            msjLabel.text = "Taş Makası kırar, Sen Kazandın!"
        }
        if pcSecim == "K" {
            pcTasResim.isHidden = true
            pcMakasResim.isHidden = true
            pcKagitResim.isHidden = false
            pcSayac += 1
            pcPuanLbl.text = String(pcSayac)
            msjLabel.text = "Kağıt Taşı Sarar, PC Kazandı!"
        }
    }//tasSEcildi fonksiyonu sonu
    
    //Üzerinde kağıt simgesi bulunan Butona tıklandığında çalışacak kod
    @IBAction func kagitSecildi(_ sender: Any) {
        let pcSecim = dizi.randomElement() // diziden rastgele eleman seç
        if pcSecim == "K" {
            pcTasResim.isHidden = true
            pcMakasResim.isHidden = true
            pcKagitResim.isHidden = false //seçilen
            msjLabel.text = "Aynı şeyi seçtiniz, Berabere!"
        }else if pcSecim == "T" {
            pcTasResim.isHidden = false //seçilen
            pcMakasResim.isHidden = true
            pcKagitResim.isHidden = true
            mySayac += 1
            myPuanLbl.text = String(mySayac)
            msjLabel.text = "Kağıt taşı sarar, Sen Kazandın!"
        }else if pcSecim == "M" {
            pcTasResim.isHidden = true
            pcMakasResim.isHidden = false //seçilen
            pcKagitResim.isHidden = true
            pcSayac += 1
            pcPuanLbl.text = String(pcSayac)
            msjLabel.text = "Makas kağıdı keser, PC Kazandı!"
        }
    } //kagitSecildi fonksiyonu/olayı sonu
    
    //Üzerinde makas simgesi bulunan Buttona tıklandığında çalışacak kod
    @IBAction func makasSecildi(_ sender: Any) {
        let pcSecim = dizi.randomElement() // diziden rastgele eleman seç
        if pcSecim == "M" {
            pcTasResim.isHidden = true
            pcMakasResim.isHidden = false //seçilen
            pcKagitResim.isHidden = true
            msjLabel.text = "Aynı şeyi seçtiniz, Berabere!"
        }else if pcSecim == "T" {
            pcTasResim.isHidden = false //seçilen
            pcMakasResim.isHidden = true
            pcKagitResim.isHidden = true
            pcSayac += 1
            pcPuanLbl.text = String(pcSayac)
            msjLabel.text = "Taş makası kırar, PC Kazandı!"
        }else if pcSecim == "K" {
            pcTasResim.isHidden = true
            pcMakasResim.isHidden = true
            pcKagitResim.isHidden = false //seçilen
            mySayac += 1
            myPuanLbl.text = String(mySayac)
            msjLabel.text = "Makas kağıdı keser, Sen Kazandın!"
        }
    } //makasSecildi fonksiyonu/olayı sonu
   //Varsayılan ayarlar;
   override func viewDidLoad() {
        super.viewDidLoad()
        pcTasResim.isHidden = true //pcTas resmini gizle
        pcMakasResim.isHidden = true //pcMakas resmini gizle
        pcKagitResim.isHidden = true //pcKagit resmini gizle
        baslikLbl.sizeToFit() //yazıyı çerçeveye sabitler
   } //vieWDidLoad fonk. sonu
}//ViewController class sonu
