//
//  MusicFeeder.swift
//  Music-Player
//
//  Created by Allicia Viona Sagi on 14/03/22.
//

import Foundation
import UIKit

class DataFeeder {
    
    func feedMusic() -> [Music]{
        // initialize all the objects
        var arrOfMusic: [Music] = []
        
        let music0 = Music(title: "Happy", singer: "Pharrell Williams", isFavorite: false,image: UIImage(named: "happy.jpg"),  lyrics: "Huh (Because I'm happy) Clap along if you feel like a room without a roof (Because I'm happy) Clap along if you feel like happiness is the truth (Because I'm happy) Clap along if you know what happiness is to you")
        let music1 = Music(title: "Daydreamer", singer: "AURORA", isFavorite: false,image: UIImage(named: "daydreamer.jpg"),  lyrics: "And we become night time dreamers Street walkers and small talkers When we should be daydreamers And moonwalkers and dream talkers And we become night time dreamers Street walkers, small talkers When we should be daydreamers And moonwalkers and dream talkers In real life")
        let music2 = Music(title: "Is This Love", singer: "Aalia", isFavorite: false,image: UIImage(named: "is-this-love.jpg"),  lyrics: "A blue bird in my heart Why do you try to get it out It's sad It's sad to know you Don't take out my blue bird It only knows how to stay dark Don't spoil It shouldn't hurt no more")
        let music3 = Music( title: "Auld Lang Syne", singer: "Denmark + Winter", isFavorite: false,image: UIImage(named: "auld-lang-syne.jpg"), lyrics: "Should auld acquaintance be forgot And never brought to mind? Should auld acquaintance be forgot And days auld lang syne? For auld lang syne, my dear For auld lang syne We'll take a cup of kindness yet For auld lang syne")
        let music4 = Music(title: "10.000 Hours", singer: "Dan + Shay & justin Bieber", isFavorite: false,image: UIImage(named: "10000-hours.jpg"),  lyrics: "I'd spend 10, 000 hours and 10, 000 more Oh, if that's what it takes to learn that sweet heart of yours And I might never get there, but I'm gonna try If it's 10, 000 hours or the rest of my life I'm gonna love you (Ooh, ooh-ooh, ooh, ooh) Do you miss the road that you grew up on? Did you get your middle name from your grandma? When you think about your forever now Do you think of me?")
        
        arrOfMusic.append(music0)
        arrOfMusic.append(music1)
        arrOfMusic.append(music2)
        arrOfMusic.append(music3)
        arrOfMusic.append(music4)
        return arrOfMusic
    }
}
