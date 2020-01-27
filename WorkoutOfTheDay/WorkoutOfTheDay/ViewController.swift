//
//  ViewController.swift
//  WorkoutOfTheDay
//
//  Created by Marissa Vang on 1/26/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let body = ["Blurpees","Jumping Jacks","Jump Rope","Planks","Mountian Climbers","Push Ups"]
    
    let abs = ["Bicycle Crunches","Russian Twists","Leg Raises","Flutter Kicks","Forearm Planks","Plank Crunches"]
    
    let legs = ["Forward Lunges","Squats","Calf Raises","Reverse Lunges","Side Lunges","Wall-Sit"]
    
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var absLabel: UILabel!
    @IBOutlet weak var legsLabel: UILabel!
    @IBAction func workoutButtonTapped(_ sender: Any) {
        generateBody()
        generateAbs()
        generateLegs()
        
        print("It's Morphin' Time!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func generateBody() {
        let randomBodyIndex = Int.random(in: 0..<body.count)

        bodyLabel.text = body[randomBodyIndex]
    }
    func generateAbs() {
        let randomAbsIndex = Int.random(in: 0..<abs.count)

        absLabel.text = abs[randomAbsIndex]
    }
    func generateLegs() {
        let randomLegsIndex = Int.random(in: 0..<legs.count)

        legsLabel.text = legs[randomLegsIndex]
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateBody()
        generateAbs()
        generateLegs()
    }



}

