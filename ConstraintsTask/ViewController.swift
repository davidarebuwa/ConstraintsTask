//
//  ViewController.swift
//  ConstraintsTask
//
//  Created by Us on 14/06/2020.
//  Copyright © 2020 David Arebuwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {1}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch(indexPath.row){
        case 0:
            return 200
        case 1:
            return 200
        case 2:
            return 200
        case 3:
            return 75
        case 4:
            return 75
        default:
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {5}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section,indexPath.row) {
        case (0,0):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "itemViewCell") else {
                fatalError("Inavlid Cell dequeued")}
            return cell
        case (0,1):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "itemViewCell") else {
                fatalError("Inavlid Cell dequeued")}
            return cell
        case (0,2):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "itemViewCell") else {
                fatalError("Inavlid Cell dequeued")}
            return cell
        case (0,3):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "totalViewCell") else {
                fatalError("Inavlid Cell dequeued")}
            return cell
        case (0,4):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "nextButtonCell") else {
                fatalError("Inavlid Cell dequeued")}
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let itemCell = cell as? ItemViewCells
        switch (indexPath.section,indexPath.row) {
        case (0,0):
            itemCell?.itemImage.image = UIImage(named: "air-force")
            itemCell?.itemImage.layer.cornerRadius = 12
        case (0,1):
            itemCell?.itemImage.image = UIImage(named: "jordan-low")
            itemCell?.itemImage.layer.cornerRadius = 12
        case (0,2):
            itemCell?.itemImage.image = UIImage(named: "jordan-low-2")
            itemCell?.itemImage.layer.cornerRadius = 12
        case (0,3):
            let totalCell = cell as? TotalViewCells
        case (0,4):
            let nextButtonCell = cell as? NextButtonCell
            nextButtonCell?.nextButton.layer.cornerRadius = 8
        default:
            return 
        }
    }
    
}

