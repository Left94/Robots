//
//  Robot.swift
//  Robots
//
//  Created by vincent  on 12/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation



class Robot {
    var nom : String
    var pointDeVie = 100
    var vitesseMax = 3
    var positionX = 0
    var positionY = 0
    
    init (nom : String){
        self.nom = nom
        
    }
    
    func sePresenter() {
        print("Bonjour je m' appel \(nom), j' ai \(pointDeVie) points de vie, je me deplace à \(vitesseMax) par seconde. Je suis à la case de coordonnée (\(positionX);\(positionY))")
    }
    
    
    
    func seDeplacer(direction : String) {
        switch direction {
        case "Haut":
            positionY += 1
        case "Bas":
            positionY -= 1
        case "Gauche":
            positionX -= 1
        case "Droite":
            positionX += 1
        default: break
            
            
        }
        
    }
    
}
