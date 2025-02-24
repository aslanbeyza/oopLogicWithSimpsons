//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Beyza Aslan on 24.02.2025.
//

import UIKit
//ctrl ile sürüklemeden önce identity kısmından detailsVC seçili olduğuna emin olmalısın
class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectionSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectionSimpson?.name
        jobLabel.text = selectionSimpson?.job
        imageView.image = selectionSimpson?.image
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
