//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Beyza Aslan on 24.02.2025.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySimpsons = [Simpson]() //boş bir dizi olduğunu belirttik burda
    
    var chosenSimpson : Simpson?
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //Smpson objeleri
        let bart = Simpson(simpsonName: "Bart Simpson" , simpsonJob:"Student" , simpsonImage: UIImage(named: "bart")!)
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Baby", simpsonImage: UIImage(named: "lisa")!)
        let marge = Simpson(simpsonName:"Marge Simpson", simpsonJob: "Housewife", simpsonImage: UIImage(named: "marge")!)
        
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(marge)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count  //dizide kaç tane varsa o kadar gösterelim
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration( )
        content.text = mySimpsons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    //tableView a tıklandığında ne olaağını henüz bilmiyorum daha yazmadım ama tüm fonksiyonlarına erişebiliyorum en baştan sınıfını import ettim çünkü
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson =  mySimpsons[indexPath.row]
    

        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    //cchosenSimpsonName diye değişkenim olucak ben self.perfomsegue yapmadan önce  değişkeni tanımlayacam sen bu değişkeni al ve diğer tarafta    var selectionSimpson : Simpson? bu değilşkene eşitle
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "toDetailsVC" {
          let destinationVC = segue.destination as! detailsVC  //DetailsVC gideceğim view controller DetailsVC bu ise diyorum burda
          destinationVC.selectionSimpson = chosenSimpson
          
//          destinationVC.imageView.image = chosenSimpsonImage bunu dersen üstteki yerine uygulama çöker burada kod çalışsa bile detailsVC henüz oluşmadığı için bu bizim uygulamamızı çökertir
        }
    }
    
    
    
    
    
    
    
}
