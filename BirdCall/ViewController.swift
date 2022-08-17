//
//  ViewController.swift
//  BirdCall
//
//  Created by Reza Koushki on 17/08/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	
	var audioPlayer: AVAudioPlayer!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	func playSound(name: String) {
		if let sound = NSDataAsset(name: name) {
			do {
				try audioPlayer = AVAudioPlayer(data: sound.data)
				audioPlayer.play()
			} catch {
				print("Error: \(error.localizedDescription). Could not initialize AVAudioPlayer object")
			}
		} else {
			print("ERROR: Could not read data from file \(name)")
		}
	}

	@IBAction func easternWhipButton(_ sender: UIButton) {
		playSound(name: "bird0")
	}
	@IBAction func doveButton(_ sender: UIButton) {
		playSound(name: "bird1")
	}
	
	@IBAction func hawkButton(_ sender: UIButton) {
		playSound(name: "bird2")
	}
	@IBAction func duckButton(_ sender: UIButton) {
		playSound(name: "bird3")
	}
}

