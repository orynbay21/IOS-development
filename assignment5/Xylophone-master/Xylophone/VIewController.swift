
import UIKit
import AVFoundation

class ViewController: UIViewController
{
    
    var selectedSoundFileName : String = ""
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton)
    {
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        playSound()
        
        
    }
    
    func playSound()
    {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        
        catch{
            print(error)
        }
        audioPlayer.play()
    }

}

