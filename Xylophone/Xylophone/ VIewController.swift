// Created by Vatsla Chauhan


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundFiles = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(selectSoundFile : soundFiles[sender.tag - 1])
        
    }
    
    func playSound(selectSoundFile : String) {
        
        let soundURL = Bundle.main.url(forResource: selectSoundFile, withExtension: "wav")!
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}

