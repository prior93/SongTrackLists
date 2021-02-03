//
//  TrackListTableViewController.swift
//  TrackLists
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

//import UIKit
//
//class TrackListTableViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
//
//  TableViewController.swift
//  TrackLists
//
//  Created by parashar.r.adhikary on 03/02/2021.
//

import UIKit

class TrackListViewController: UITableViewController {
   
    
    var songs = song.createSong()
    

        override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return song.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tracklistcell", for: indexPath)
//        cell.textLabel?.text = trackList[indexPath.row]
//        cell.textLabel?.numberOfLines = 0
//        cell.detailTextLabel?.text = textList[indexPath.row]
//        // Configure the cell...
//        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        let song = songs[indexPath.row]
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)
        
        return cell
    }
    
//MARK: - Table view Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            print("indexpath.row", indexPath.row)
            
            let detaiVC = segue.destination as! DetailViewController
            
            detaiVC.song = songs[indexPath.row]
        }
}
}
 */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return.none
    }
