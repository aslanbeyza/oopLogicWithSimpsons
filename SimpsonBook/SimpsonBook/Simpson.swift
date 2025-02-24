//
//  Simpson.swift
//  SimpsonBook
//
//  Created by Beyza Aslan on 24.02.2025.
//
import Foundation
import UIKit   //UIImage kullanabilmek için importunu yapmak lazım

class Simpson {
    
    var name :String
    var job : String
    var image :UIImage
    
    //bu sınıftan oluşturulan her objede init constructoru çağırılacak ve aş.leri isticek 
    init(simpsonName: String, simpsonJob: String, simpsonImage: UIImage) {
        self.name = simpsonName
        self.job = simpsonJob
        self.image = simpsonImage
    }
}
