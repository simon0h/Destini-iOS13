//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.getLabel(0)
        choice1Button.setTitle(storyBrain.getChoice1(0), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(0), for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        let currentStoryLoc = storyBrain.nextStory(choice)
        updateUI(currentStoryLoc)
    }

    func updateUI(_ currentStoryLoc: Int) {
        storyLabel.text = storyBrain.getLabel(currentStoryLoc)
        choice1Button.setTitle(storyBrain.getChoice1(currentStoryLoc), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(currentStoryLoc), for: .normal)
    }
}

