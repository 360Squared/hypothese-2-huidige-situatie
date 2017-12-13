//
//  CandidateTableViewController.swift
//  Hypthese_2
//
//  Created by Lars De Winter on 12/12/2017.
//  Copyright © 2017 Lars De Winter. All rights reserved.
//

import UIKit

class CandidateTableViewController: UITableViewController {

    let candidates = [["Jerome van der Zee", 17, "Lonneker", "HAVO"],
                      ["Susana Beltman", 15, "Hengelo", "VWO"],
                      ["Jan-Jaap Gotink", 16, "Enschede", "HAVO"],
                      ["Lidian van Houten", 15, "Hengelo", "VWO"],
                      ["Noë Engbers", 17, "Bruggert", "MBO-3"],
                      ["Cyrille Aden", 17, "Bruggert", "HAVO"],
                      ["Chyenne Top", 16, "Lonneker", "VBMO"],
                      ["Jan-Joost Morsink", 15, "Enschede", "HAVO"],
                      ["Manolya Kuitert", 15, "Enschede", "HAVO"],
                      ["Jerome van der Zee", 17, "Lonneker", "HAVO"],
                      ["Susana Beltman", 15, "Hengelo", "VWO"],
                      ["Jan-Jaap Gotink", 16, "Enschede", "HAVO"],
                      ["Lidian van Houten", 15, "Hengelo", "VWO"],
                      ["Noë Engbers", 17, "Bruggert", "MBO-3"],
                      ["Cyrille Aden", 17, "Bruggert", "HAVO"],
                      ["Chyenne Top", 16, "Lonneker", "VBMO"]
//                      ["Jan-Joost Morsink", 15],
//                      ["Manolya Kuitert", 15]
//                      ["Jerome van der Zee", 17],
//                      ["Susana Beltman", 15],
//                      ["Jan-Jaap Gotink", 16],
//                      ["Lidian van Houten", 15],
//                      ["Noë Engbers", 17],
//                      ["Cyrille Aden", 17],
//                      ["Chyenne Top", 16],
//                      ["Jan-Joost Morsink", 15],
//                      ["Manolya Kuitert", 15],
//                      ["Jerome van der Zee", 17],
//                      ["Susana Beltman", 15],
//                      ["Jan-Jaap Gotink", 16],
//                      ["Lidian van Houten", 15],
//                      ["Noë Engbers", 17],
//                      ["Cyrille Aden", 17],
//                      ["Chyenne Top", 16],
//                      ["Jan-Joost Morsink", 15],
//                      ["Manolya Kuitert", 15]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Kandidaten"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return candidates.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "candidate")!
        cell.textLabel?.text = candidates[indexPath.row][0] as? String
        cell.detailTextLabel?.text = "\(candidates[indexPath.row][1] as! Int) jaar oud"
        // Configure the cell...

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "canditatewithoutjob" {
            if let candidateVC = segue.destination as? CanditateInfoViewController {
                if let indexPath = tableView.indexPathForSelectedRow{
                    candidateVC.canditateInfo = candidates[indexPath.row]
                }
            }
        }
    }

}
