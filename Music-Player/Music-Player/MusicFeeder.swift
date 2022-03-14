//
//  MusicFeeder.swift
//  Music-Player
//
//  Created by Allicia Viona Sagi on 14/03/22.
//

import Foundation
import UIKit

struct MusicFeeder {
    
    var arrOfMusic : [Music] = []
    
    init() {
        // initialize all the objects
        let music0 = Music(image: UIImage(named: "happy.jpg"), title: "Happy", singer: "Pharrell Williams")
        let music1 = Music(image: UIImage(named: "daydreamer.jpg"), title: "Daydreamer", singer: "AURORA")
        let music2 = Music(image: UIImage(named: "is-this-love.jpg"), title: "Is This Love", singer: "Aalia")
        let music3 = Music(image: UIImage(named: "auld-lang-syne.jpg"), title: "Auld Lang Syne", singer: "Denmark + Winter")
        let music4 = Music(image: UIImage(named: "10000-hours.jpg"), title: "10.000 Hours", singer: "Dan + Shay & justin Bieber")
        
        arrOfMusic.append(music0)
        arrOfMusic.append(music1)
        arrOfMusic.append(music2)
        arrOfMusic.append(music3)
        arrOfMusic.append(music4)
    }
}
