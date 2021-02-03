//
//  DetailViewController.swift
//  TrackLists
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song:Song!

    override func viewDidLoad() {
        super.viewDidLoad()

        if song != nil{
            
            trackImageView.image = UIImage(named: song.Cover)
            trackNameLabel.text = song.track + " _ " + song.album
            trackNameLabel.numberOfLines=0
        }
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
