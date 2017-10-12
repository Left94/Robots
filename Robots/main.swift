//
//  main.swift
//  Robots
//
//  Created by vincent  on 12/10/2017.
//  Copyright © 2017 vincent . All rights reserved.
//

import Foundation





var robots : [Robot] = []
var robot1 = Robot(nom: "Riri")
var robot2 = Robot(nom: "Fifi")
var robot3 = Robot(nom: "Loulou")
var robot4 = Robot(nom: "Boby")


robots += [robot1,robot2, robot3, robot4]

robot1.seDeplacer(direction: "Haut")
robot2.seDeplacer(direction: "Bas")
robot3.seDeplacer(direction: "Gauche")
robot4.seDeplacer(direction: "Droite")
for rob in robots{
    
    rob.sePresenter()
}
