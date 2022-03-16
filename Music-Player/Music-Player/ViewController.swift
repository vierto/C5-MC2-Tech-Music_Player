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
    var arrOfMusicSinger: [String] = ["Pharrell Williams","AURORA","Aalia", "Denmark + Winter", "Dan + Shay & Justin Bieber"]
    var arrOfFavMusic: [Bool] = [false, false, false, false, false]
    var arrOfLyrics: [String] = ["Huh (Because I'm happy) Clap along if you feel like a room without a roof (Because I'm happy) Clap along if you feel like happiness is the truth (Because I'm happy) Clap along if you know what happiness is to you", "And we become night time dreamers Street walkers and small talkers When we should be daydreamers And moonwalkers and dream talkers And we become night time dreamers Street walkers, small talkers When we should be daydreamers And moonwalkers and dream talkers In real life", "A blue bird in my heart Why do you try to get it out It's sad It's sad to know you Don't take out my blue bird It only knows how to stay dark Don't spoil It shouldn't hurt no more","Should auld acquaintance be forgot And never brought to mind? Should auld acquaintance be forgot And days auld lang syne? For auld lang syne, my dear For auld lang syne We'll take a cup of kindness yet For auld lang syne","I'd spend 10, 000 hours and 10, 000 more Oh, if that's what it takes to learn that sweet heart of yours And I might never get there, but I'm gonna try If it's 10, 000 hours or the rest of my life I'm gonna love you (Ooh, ooh-ooh, ooh, ooh) Do you miss the road that you grew up on? Did you get your middle name from your grandma? When you think about your forever now Do you think of me?"]
    
    /// Data Control
    var currMusic = 0
    var currState = false
    
    /// Outlets
    @IBOutlet weak var imageCoverImage: UIImageView!
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var tintBackground: UIImageView!
    
    @IBOutlet weak var lyricsTextView: UITextView!
    
    @IBOutlet weak var musicDurationSlider: UISlider!
    
    @IBOutlet weak var musicTitleLbl: UILabel!
    @IBOutlet weak var musicSingerLbl: UILabel!
    @IBOutlet weak var currTimeLbl: UILabel!
    @IBOutlet weak var timeLeftLbl: UILabel!
    
    @IBOutlet weak var favMusicBtn: UIButton!
    @IBOutlet weak var prevMusicBtn: UIButton!
    @IBOutlet weak var playMusicBtn: UIButton!
    @IBOutlet weak var nextMusicBtn: UIButton!
    @IBOutlet weak var resetFavesBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set up the first music cover
        imageCoverImage.image = arrOfMusicCover[currMusic]
        
        // Set up the first music title
        musicTitleLbl.text = arrOfMusicTitle[currMusic]
        
        // Set up the first music singer
        musicSingerLbl.text = arrOfMusicSinger[currMusic]
        
        // Set up lyrics
        lyricsTextView.text = arrOfLyrics[0]
        
        // Set up background
        imageBackground.image = UIImage(named: "happy.jpg")
        
        // Set UISlider starting value and ending value
        musicDurationSlider.minimumValue = 0
        musicDurationSlider.maximumValue = 3
        
        // Set UISlider value to starting position
        musicDurationSlider.setValue(0, animated: true)
        
        // Check first music fave status
        if arrOfFavMusic[0] {
            favMusicBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        
        // To notify the changeLyrics function when textView value changed
        NotificationCenter.default.addObserver(self, selector: #selector(changeLyrics), name: UITextView.textDidChangeNotification, object: nil)
        
        // To blur background
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView()
        blurEffectView.frame = CGRect(x: 0, y: 0, width: imageBackground.frame.width + 30 , height: imageBackground.frame.height)
        blurEffectView.center = imageBackground.center
        self.imageBackground.addSubview(blurEffectView)
        UIView.animate(withDuration: 5) {
            blurEffectView.effect = blurEffect
        }
        
    }
    
    @IBAction func pressNext(_ sender: Any) {
        
        // Validate if it's already on the last page
        if currMusic ==  arrOfMusicCover.count-1 {
            currMusic = 0
        } else {
            currMusic += 1
        }
        changeMusic()
    }
    
    @IBAction func pressPrev(_ sender: Any) {
        
        // Validate if it's on the very first page
        if currMusic > 0 {
            currMusic -= 1
        } else {
            currMusic = 0
        }
        changeMusic()
    }
    
    @objc func changeLyrics() {
        arrOfLyrics[currMusic] = lyricsTextView.text
    }
    
    
    @IBAction func pressPlay(_ sender: Any) {
        
        musicDurationSlider.setValue(3, animated: true)
        timeLeftLbl.text = "03.00"
        
        if !currState {
            playMusicBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            currState = true
        } else {
            playMusicBtn.setImage(UIImage(systemName: "play.fill"), for: .normal)
            currState = false
        }
        print(currState)
    }
    
    @IBAction func pressFave(_ sender: Any) {
        arrOfFavMusic[currMusic] = !arrOfFavMusic[currMusic]
        changeHeartIcon()
        print("Status music number \(currMusic) is \(arrOfFavMusic[currMusic])")
    }
    
    @IBAction func pressResetFaves(_ sender: Any) {
        for i in 0...arrOfFavMusic.count-1 {
            arrOfFavMusic[i] = false
        }
        changeHeartIcon()
    }
    
    func changeMusic() {
        imageCoverImage.image = arrOfMusicCover[currMusic]
        imageBackground.image = arrOfMusicCover[currMusic]
        musicTitleLbl.text = arrOfMusicTitle[currMusic]
        musicSingerLbl.text = arrOfMusicSinger[currMusic]
        lyricsTextView.text = arrOfLyrics[currMusic]
        
        changeHeartIcon()
    }
    
    
    func changeHeartIcon() {
        if arrOfFavMusic[currMusic] {
            favMusicBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            favMusicBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }
        
    }

}
