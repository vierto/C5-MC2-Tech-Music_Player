//
//  ViewController.swift
//  Music-Player
//
//  Created by Allicia Viona Sagi on 02/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    /// Data
    var arrOfMusicCover: [UIImage] = [UIImage(named: "happy.jpg")!, UIImage(named: "daydreamer.jpg")!, UIImage(named: "is-this-love.jpg")!, UIImage(named: "auld-lang-syne.jpg")!, UIImage(named: "10000-hours.jpg")!]
    
    
    var arrOfMusicTitle: [String] = ["Happy","Daydreamer","Is This Love", "Auld Lang Syne", "10,000 Hours"]
    var arrOfMusicsinger: [String] = ["Pharrell Williams","AURORA","Aalia", "Denmark + Winter", "Dan + Shay & Justin Bieber"]
    
    /// Data Control
    var currMusic = 0
    var currState = false
    
    /// Outlets
    @IBOutlet weak var imageCoverImage: UIImageView!
    
    @IBOutlet weak var musicTitleLbl: UILabel!
    @IBOutlet weak var musicSingerLbl: UILabel!
    @IBOutlet weak var musicDurationSlider: UISlider!
    @IBOutlet weak var currTimeLbl: UILabel!
    @IBOutlet weak var timeLeftLbl: UILabel!
    
    @IBOutlet weak var favMusicBtn: UIButton!
    @IBOutlet weak var prevMusicBtn: UIButton!
    @IBOutlet weak var playMusicBtn: UIButton!
    @IBOutlet weak var nextMusicBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set up the first music cover
        imageCoverImage.image = arrOfMusicCover[currMusic]
        print(arrOfMusicCover.count)
        
    }
    
    @IBAction func pressNext(_ sender: Any) {
        if currMusic ==  arrOfMusicCover.count-1 {
            currMusic = 0
        } else {
            currMusic += 1
        }
        imageCoverImage.image = arrOfMusicCover[currMusic]
        
    }
    
    @IBAction func pressPrev(_ sender: Any) {
        if currMusic > 0 {
            currMusic -= 1
        } else {
            currMusic = 0
        }
        imageCoverImage.image = arrOfMusicCover[currMusic]
        
    }
    
    
    @IBAction func pressPlay(_ sender: Any) {
        if !currState {
            playMusicBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            currState = true
        } else {
            playMusicBtn.setImage(UIImage(systemName: "play.fill"), for: .normal)
            currState = false
        }
        print(currState)
    }
    
    func play() {
        
    }


}



// Day 1 baru taro UI aja (debugging view)
// Day 2 variabelnya satu aja, cover, music title, singer gabisa diganti2 (ada print2, breakpoint)
// Day 3 buttonnya bisa ganti2 image, ada ads (atau gambar ganti2) (ada print2, breakpoint) (data pake array -> model)

// Notes: TextField sama TextView, gapake delegate?
// Loop jadi Timer

// Task: minta feedback
// Keynote, Senin setelah FW
// Tanggal Delivery 1 bulan
