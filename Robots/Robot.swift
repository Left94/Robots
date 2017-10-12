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
    
    
    
    func seDeplacer(direction : String, cases : Int) {
        if cases <= vitesseMax{
            switch direction {
                case "Haut":
                    positionY += 1 * cases
                case "Bas":
                    positionY -= 1 * cases
                case "Gauche":
                    positionX -= 1 * cases
                case "Droite":
                    positionX += 1 * cases
            default: break
            
            }
        }else{
            print(" \(self.nom) : Desolé je ne peux pas me déplacer d' un nombre de case plus elevé que ma vitesse max qui est de \(vitesseMax)")
        }
    }
    
    
    func seDeplacerAleatoirement(nombreDeFois : Int) {
        
            positionX += Int(arc4random_uniform(3)) * nombreDeFois
            positionX -= Int(arc4random_uniform(3)) * nombreDeFois
            positionY += Int(arc4random_uniform(3)) * nombreDeFois
            positionY -= Int(arc4random_uniform(3)) * nombreDeFois
    }
    
}
    


