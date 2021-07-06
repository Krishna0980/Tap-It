//
//  ScoreBoard.swift
//  TapIt
//
//  Created by Krishna Bhatt on 01/07/21.
//

import UIKit

class ScoreBoard: UIViewController {

    let token = UserDefaults.standard.string(forKey: "UserToken")
    let name = UserDefaults.standard.string(forKey: "Name")
    let score = UserDefaults.standard.string(forKey: "Score")
    
    private let LeaderBoard : UILabel = {
        let label = UILabel()
        label.text = "ScoreBoard"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    
    
    private let Name : UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    private let Score : UILabel = {
        let label = UILabel()
        label.text = "Score"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    private let Nametxt : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    private let Scoretxt : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ScoreBoard"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image2")!)
        Nametxt.text = name
        Scoretxt.text = score
        view.addSubview(LeaderBoard)
        view.addSubview(Name)
        view.addSubview(Score)
        view.addSubview(Nametxt)
        view.addSubview(Scoretxt)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        LeaderBoard.frame = CGRect(x: 120, y: view.safeAreaInsets.top + 10, width: view.width, height: 50)
        Name.frame = CGRect(x: 20, y: LeaderBoard.bottom + 20, width: 150, height: 50)
        Score.frame = CGRect(x: 260, y: LeaderBoard.bottom + 20, width: 90, height: 50)
        Nametxt.frame = CGRect(x: 20, y: Name.bottom + 20, width: 150, height: 50)
        Scoretxt.frame = CGRect(x: 260, y: Score.bottom + 20, width: 90, height: 50)
    }
    
}
