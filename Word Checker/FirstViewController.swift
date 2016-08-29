//
//  FirstViewController.swift
//  Word Checker
//
//  Created by Amir Nazari on 8/19/16.
//  Copyright © 2016 Amir Nazari. All rights reserved.
//

import UIKit

var totem1 = Totem(sides:["Q","T","Z","E"])
var totem2 = Totem(sides:["A","X","O","J"])
var totem3 = Totem(sides:["K","N","V","I"])
var totem4 = Totem(sides:["B","R","Y","S"])
var totem5 = Totem(sides:["H","G","L","W"])
var totem6 = Totem(sides:["P","C","F","D"])
var totem7 = Totem(sides:["E","U","T","M"])
var totem8 = Totem(sides:["E","L","H","O"])
var totem9 = Totem(sides:["M","R","E","I"])
var totem10 = Totem(sides:["G","A","R","D"])
var totem11 = Totem(sides:["B","Y","P","S"])
var totem12 = Totem(sides:["C","N","U","F"])
var totem13 = Totem(sides:["S","N","F","H"])
var totem14 = Totem(sides:["B","C","V","T"])

class FirstViewController: UIViewController {

    @IBOutlet weak var enterWordField: UITextField!
    @IBOutlet weak var checkSolutionButton: UIButton!
    
    var totemSet : [Totem] = [totem1,totem2,totem3,totem4,totem5,totem6,totem7,totem8,totem9, totem10,totem11,totem12,totem13,totem14]
    var blockUsed = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func checkSolutionTapped(sender: UIButton) {
        
        let wordToCheck = "kill"
        let wordToCheckCharacters = Array(wordToCheck.uppercaseString.characters);
        var blockMatches : [[Totem]] = []
        
        for character in wordToCheckCharacters {
            
            var matches : [Totem] = []
            
            for block in totemSet {
                if block.sides.contains(String(character)) {
                    matches.append(block)
                }
            }
            
            blockMatches.append(matches)
        }
        
        print("\(blockMatches.count)")
        print(blockMatches)
        
        var possibleSolution : [Totem] = []
        var solutions : [[Totem]] = []
        var currentIndex = 0
        
        for i in 0 ..< wordToCheckCharacters.count {
            
            if blockMatches[i].count == 0 {
                print("Failed to find match")
                break
            }
            
            for totem in blockMatches[i] {
                
                if i == currentIndex {
                    if !possibleSolution.contains(totem) {
                        possibleSolution.append(totem)
                    }
                }
            }
        }
    }
}

