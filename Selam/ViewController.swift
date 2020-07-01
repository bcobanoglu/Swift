import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()
    label.isHidden = true //labeli gizle
    }
 // labeli tanımlandı
 @IBOutlet weak var label: UILabel!

 //Butonun tikla olayına kod yazıldı
 @IBAction func btnTikla(_ sender: UIButton){
            
  label.isHidden = false //gizli özelliğini kaldır
  // label'in içeriğini oku ve x sabitine ata
  let x = label.text;
    
  // Eğer labelin texti "buton tiklandi" ise
  if(x == "Butona tıklandi")
  {
    label.text = "Tekrar tıklandı";
  }else //değilse
  {
    label.text = "Butona tıklandı";
  }
  // Label'i text içeriğine göre ayarla
  label.sizeToFit();
    
  } //tikla olayını sonu

} //class sonu
