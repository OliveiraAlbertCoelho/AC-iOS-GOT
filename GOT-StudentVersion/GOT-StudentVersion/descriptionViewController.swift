//
//  descriptionViewController.swift
//  GOT-StudentVersion
//
//  Created by albert coelho oliveira on 8/16/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class descriptionViewController: UIViewController {
    var gotDescriptionView: GOTEpisode?
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var seasonlabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var runtimeLabel: UILabel!
    @IBOutlet weak var airDateLabel: UILabel!
    @IBOutlet weak var episodeSummary: UITextView!
    @IBOutlet weak var episodeName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDesign()
    }
    private func setUpDesign() {
        seasonlabel.text = "Season: \(gotDescriptionView!.season)"
        episodeLabel.text = "Episode: \(gotDescriptionView!.number)"
        runtimeLabel.text = "Runtime: \(gotDescriptionView!.runtime)"
        airDateLabel.text = "Airdate: \(gotDescriptionView!.airdate)"
        episodeSummary.text = gotDescriptionView?.summary
        image.image = UIImage(named: gotDescriptionView!.originalImageID)
        episodeName.text = gotDescriptionView?.name
    }
}
