//
//  main.swift
//  FirstProject
//
//  Created by Dzmitry Matsiulka on 5/21/19.
//  Copyright © 2019 Dzmitry Matsiulka. All rights reserved.
//

import Foundation

// MANUALLY ENTERING PLAYERS AS DICTIONARIES
var player1 = ["name" : "Joe Smith",
               "height": "42.00",
               "experience": "yes",
               "guardian" : "Jim and Jan Smith"]

var player2 = ["name" : "Jill Tanner",
               "height": "36.00",
               "experience": "yes",
               "guardian" : "Clara Tanner"]

var player3 = ["name" : "Bill Bon",
               "height": "43.00",
               "experience": "yes",
               "guardian" : "Sara and Jenny Bon"]

var player4 = ["name" : "Eva Gordon",
               "height": "45.00",
               "experience": "no",
               "guardian" : "Wendy and Mike Gordon"]

var player5 = ["name" : "Matt Gill",
               "height": "40.00",
               "experience": "no",
               "guardian" : "Charles and Sylvia Gill"]

var player6 = ["name" : "Kimmy Stein",
               "height": "41.00",
               "experience": "no",
               "guardian" : "Bill and Hillary Stein"]

var player7 = ["name" : "Sammy Adams",
               "height": "45.00",
               "experience": "no",
               "guardian" : "Jeff Adams"]

var player8 = ["name" : "Karl Saygan",
               "height": "42.00",
               "experience": "yes",
               "guardian" : "Heather Bledsoe"]

var player9 = ["name" : "Suzane Greenberg",
               "height": "44.00",
               "experience": "yes",
               "guardian" : "Henrietta Dumas"]

var player10 = ["name" : "Sal Dali",
                "height": "41.00",
                "experience": "no",
                "guardian" : "Gala Dali"]

var player11 = ["name" : "Joe Javalier",
                "height": "39.00",
                "experience": "no",
                "guardian" : "Sam and Elanie Kavalier"]

var player12 = ["name" : "Ben Finkelstein",
                "height": "44.00",
                "experience": "no",
                "guardian" : "Aaron and Jill Finkelstein"]

var player13 = ["name" : "Diego Soto",
                "height": "41.00",
                "experience": "yes",
                "guardian" : "Robin and Sarika Soto"]

var player14 = ["name" : "Chloe Alaska",
                "height": "47.00",
                "experience": "no",
                "guardian" : "David and Jamie Alaska"]

var player16 = ["name" : "Arnold Wilis",
                "height": "43.00",
                "experience": "no",
                "guardian" : "Claire Willis"]

var player15 = ["name" : "Phillip Helm",
                "height": "44.00",
                "experience": "yes",
                "guardian" : "Thomas Helm and Eva Jones"]

var player17 = ["name" : "Les Clay",
                "height": "42.00",
                "experience": "yes",
                "guardian" : "Wynonna Brown"]

var player18 = ["name" : "Herschel Krustofski",
                "height": "45.00",
                "experience": "yes",
                "guardian" : "Hyman and Rachel Krustofski"]



// CREATING AN ARRAY THAT CONTAINS ALL THE PLAYERS
var players = [player1, player2, player3, player4, player5, player6, player7, player8, player10, player9, player11, player12, player13, player14, player15, player16, player17, player18]

// CREATING AN ARRAY THAT WILL CONTAIN PLAYERS AFTER DIVIDING THEM
var teamSharks = [[String:String]]()
var teamDragons = [[String:String]]()
var teamRaptors = [[String:String]]()

// SORTING PLAYERS BY THEIR HEIGHT
players.sort(by: {($0["height"]! as String) > $1["height"]! as String})

// VARIABLES THAT HELP WITH DEBUGGING
var nOfExperiencedPlayersInDragons = 0
var nOfExperiencedPlayersInSharks = 0
var nOfExperiencedPlayersInRaptors = 0

// DIVIDING EXPERIENCED PLAYERS, THE "IF" STATEMENT CREATED TO HELP ME WITH DEBUGGING
for player in players {
    if player["experience"] == "yes"{
        if teamSharks.count > teamDragons.count{
            teamDragons.append(player)
            nOfExperiencedPlayersInDragons += 1
            
        }
        else if teamDragons.count>teamRaptors.count{
            teamRaptors.append(player)
            nOfExperiencedPlayersInRaptors += 1
            
        }
        else{
            teamSharks.append(player)
            nOfExperiencedPlayersInSharks += 1
            
        }
    }
        
    else {
        if teamSharks.count > teamDragons.count{
            teamDragons.append(player)
            
        }
        else if teamDragons.count>teamRaptors.count{
            teamRaptors.append(player)
            
        }
        else{
            teamSharks.append(player)
            
        }
    }
}

//CREATE AN EMPTY ARRAY FOR LETTERS
var letters = [String]()

var averageHeightOfDragons = 0.00
var averageHeightOfSharks = 0.00
var averageHeightOfRaptors = 0.00

// GENERATE INDIVIDUAL LETTER AND ADD IT TO THE ARRAY OF LETTERS
for dragon in teamDragons{
    
    let letter = "Dear \(dragon["guardian"]!), your child \(dragon["name"]!), is in the Dragon Team. Please show up on March 17, at 1pm for a practice. \n"
    averageHeightOfDragons += Double(dragon["height"]!)!
    letters.append(letter)
}

// GENERATE INDIVIDUAL LETTER AND ADD IT TO THE ARRAY OF LETTERS
for shark in teamSharks{
    
    let letter = "Dear \(shark["guardian"]!), your child \(shark["name"]!), is in the Shark Team. Please show up on March 17, at 3pm for a practice. \n"
    averageHeightOfSharks += Double(shark["height"]!)!
    letters.append(letter)
}

// GENERATE INDIVIDUAL LETTER AND ADD IT TO THE ARRAY OF LETTERS
for raptor in teamRaptors{
    
    let letter = "Dear \(raptor["guardian"]!), your child \(raptor["name"]!), is in the Raptor Team. Please show up on March 18, at 1pm for a practice. \n"
    averageHeightOfRaptors += Double(raptor["height"]!)!
    letters.append(letter)
}
// PRINT THE AVERAGE HEIGHT FOR EACH TEAM AND THE NUMBER OF EXPERIENCED PLAYERS
print("Average height of the dragons = \(averageHeightOfDragons/Double(teamDragons.count)).\n Number of experienced players = \(nOfExperiencedPlayersInDragons)")
print("Average height of the sharks = \(averageHeightOfSharks/Double(teamSharks.count)).\n Number of experienced players = \(nOfExperiencedPlayersInSharks)")
print("Average height of the raptors = \(averageHeightOfRaptors/Double(teamRaptors.count)).\n Number of experienced players = \(nOfExperiencedPlayersInRaptors)\n")

// PRINT EACH LETTER IN THE ARRAY INDIVIDUALLY
for letter in letters{
    print(letter)
}
