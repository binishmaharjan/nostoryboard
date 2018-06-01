//
//  ViewController.swift
//  NoStoryboard
//
//  Created by guest on 2018/06/01.
//  Copyright © 2018年 guest. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout{
    
    //MARK: Variables
    let cellId = "cellId"
    
    let teams : [Team] = [Team(image: "arsenal", name: "Arsenal"),
                          Team(image: "chelsea", name: "Chealsea"),
                          Team(image: "everton", name: "Everton"),
                          Team(image: "leicester", name: "Leicester"),
                          Team(image: "liverpool", name: "Liverpool"),
                          Team(image: "mu", name: "Man Utd"),
                          Team(image: "mc", name: "Man City"),
                          Team(image: "newcastle", name: "New Castle"),
                          Team(image: "tottenham", name: "TottenHam"),
                          Team(image: "arsenal", name: "Arsenal"),
                          Team(image: "chelsea", name: "Chealsea"),
                          Team(image: "everton", name: "Everton"),
                          Team(image: "leicester", name: "Leicester"),
                          Team(image: "liverpool", name: "Liverpool"),
                          Team(image: "mu", name: "Man Utd"),
                          Team(image: "mc", name: "Man City"),
                          Team(image: "newcastle", name: "New Castle"),
                          Team(image: "tottenham", name: "TottenHam")]
    
    //MARK: Functions

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Creating the white background
        collectionView?.backgroundColor = Colors.color_3
        title = "MainView"
        
        //Registering the Team Cell in the collection View
        collectionView?.register(TeamCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    //MARK: Collcetion View Funtions
    
    //Returns the total number of the item to entered in the section
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    //Returns the size of the single as CGsize
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/3 - 16, height: 100)
    }
    
    //Returns the margin for the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    //Return a cell(In this case : Custom Defined Team Cell)
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TeamCell
        cell.team = teams[indexPath.item]
        return cell
    }
}

