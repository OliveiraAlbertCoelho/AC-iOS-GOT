//
//  GOTTableViewController.swift
//  GOT-StudentVersion
//
//  Created by albert coelho oliveira on 8/14/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class GOTTableViewController: UITableViewController {
    
    var ThronesData = GOTEpisode.matrix
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return ThronesData.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return ThronesData[0].count
        case 1:
            return ThronesData[1].count
        case 2:
            return ThronesData[2].count
        case 3:
            return ThronesData[3].count
        case 4:
            return ThronesData[4].count
        case 5:
            return ThronesData[5].count
        case 6:
            return ThronesData[6].count
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section % 2 == 0 {
           if let cell = tableView.dequeueReusableCell(withIdentifier: "rightTable", for: indexPath) as? rightTableViewCell{
            let episode = ThronesData[indexPath.section][indexPath.row]
                cell.title.text = episode.name
            cell.episodeLabel.text = "S: \(episode.season.description) E: \(episode.number.description)"
                cell.cellImage.image = UIImage(named: episode.mediumImageID)
            return cell
            }
         
        }else{
             let episode = ThronesData[indexPath.section][indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier:
                "leftTable", for: indexPath) as? GOTTableViewCell{
                cell.title.text = episode.name
                cell.episodeLabel.text = "S: \(episode.season.description) E: \(episode.number.description)"
                cell.cellImage.image = UIImage(named: episode.mediumImageID)
                return cell
            }
        }
        return UITableViewCell()
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Season 1"
        case 1:
            return "Season 2"
        case 2:
            return "Season 3"
        case 3:
            return "Season 4"
        case 4:
            return "Season 5"
        case 5:
            return "Season 6"
        case 6:
            return "Season 7"
        default:
            return "nothin(jon snow)"
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else { fatalError("No identifier in segue") }
        guard let detailViewController = segue.destination as? descriptionViewController else {
            fatalError("Unexpected segue VC")
        }
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else {
            fatalError("No row was selected")
        }
        
        let Got = ThronesData[selectedIndexPath.section][selectedIndexPath.row]
        switch segueIdentifier{
        case "firstSegue":
           
            detailViewController.gotDescriptionView = Got
        case "secondSegue":
            detailViewController.gotDescriptionView = Got
        default:
            fatalError("Unexpected segue identifier")
        }
    }
    
    }
