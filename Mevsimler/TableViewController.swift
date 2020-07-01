

import UIKit

class TableViewController: UITableViewController {

    
    
    var ilkBahar = ["Mart","Nisan", "Mayıs"]
    var yaz = ["Haziran", "Temmuz", "Ağustos"]
    var sonBahar = ["Eylül","Ekim", "Kasım"]
    var kis = ["Aralık", "Ocak", "Şubat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   //Delegate metotlar
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3 //Bölüm sayısı
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Satır sayısı
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //Her bir hücreyi ayarla
        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = ilkBahar [indexPath.row]
        case 1:
            cell.textLabel?.text = yaz [indexPath.row]
        case 2:
            cell.textLabel?.text = sonBahar [indexPath.row]
        case 3:
            cell.textLabel?.text = kis [indexPath.row]
        default:
            cell.textLabel?.text = "Hatalı ay"
        }
        return cell
    }
   
}
