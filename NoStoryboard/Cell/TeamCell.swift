//
//  TeamCell.swift
//  NoStoryboard
//
//  Created by guest on 2018/06/01.
//  Copyright © 2018年 guest. All rights reserved.
//

import UIKit

class TeamCell: UICollectionViewCell {
    //Initilizer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setCellShadow()
        
        addSubview(teamImageView)
        addSubview(teamNameLabel)
        
        //Canceling the auto Resizing
        teamImageView.translatesAutoresizingMaskIntoConstraints  = false
        teamNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //Constraint for the Image View
        teamImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        teamImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        teamImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        teamImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        //Constraint for the Label
        teamNameLabel.topAnchor.constraint(equalTo: teamImageView.bottomAnchor, constant: 0).isActive = true
        teamNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        teamNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        teamNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Team Item(Setting it in the respective  holder)
    var team : Team?{
        didSet{
            guard let teamImage = team?.image else {
                print("No Image")
                return
            }
            
            guard let teamName = team?.name else {
                print("No Name")
                return
            }
            
            teamImageView.image = UIImage(named: teamImage)
            teamNameLabel.text = teamName
        }
    }
    
    //Setup up the cell
    func setup(){
        self.backgroundColor = Colors.color_4
    }
    
    //ImageView
    let teamImageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        //iv.backgroundColor  = Colors.color_1
        return iv
    }()
    
    
    //UILabel
    let teamNameLabel : UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    //Cuztomize the cell
    func setCellShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.masksToBounds = false
        self.clipsToBounds  = false
        self.layer.cornerRadius = 3
    }
}
