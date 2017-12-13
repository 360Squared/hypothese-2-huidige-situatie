//
//  CandidateWithJobTableViewController.swift
//  Hypthese_2
//
//  Created by Lars De Winter on 12/12/2017.
//  Copyright © 2017 Lars De Winter. All rights reserved.
//

import UIKit

class CandidateWithJobTableViewController: UITableViewController {

    let canditateWithJob = [["Vakken vuller", ["Jerome van der Zee", 17, "Lonneker", "HAVO"]],
                            ["Spiegelaar",["Susana Beltman", 15, "Hengelo", "VWO"]],
                            ["Emballage medewerker",["Jan-Jaap Gotink", 16, "Enschede", "HAVO"]],
                            ["Assistent op werkvloer",["Lidian van Houten", 15, "Hengelo", "VWO"]],
                            ["Vakken vuller",["Noë Engbers", 17, "Bruggert", "MBO-3"]],
                            ["Cassiére",["Cyrille Aden", 17, "Bruggert", "HAVO"]],
                            ["Cassiére",["Chyenne Top", 16, "Lonneker", "VBMO"]],
                            ["Spiegelaar",["Jan-Joost Morsink", 15, "Enschede", "HAVO"]],
                            ["Emballage medewerker",["Manolya Kuitert", 15, "Enschede", "HAVO"]],
                            ["Vakken vuller", ["Jerome van der Zee", 17, "Lonneker", "HAVO"]],
                            ["Spiegelaar",["Susana Beltman", 15, "Hengelo", "VWO"]],
                            ["Emballage medewerker",["Jan-Jaap Gotink", 16, "Enschede", "HAVO"]],
                            ["Assistent op werkvloer",["Lidian van Houten", 15, "Hengelo", "VWO"]],
                            ["Vakken vuller",["Noë Engbers", 17, "Bruggert", "MBO-3"]],
                            ["Cassiére",["Cyrille Aden", 17, "Bruggert", "HAVO"]]
//                            ["Cassiére",["Chyenne Top", 16]],
//                            ["Spiegelaar",["Jan-Joost Morsink", 15]]
//                            ["Emballage medewerker",["Manolya Kuitert", 15]]
//                            ["Vakken vuller", ["Jerome van der Zee", 17]],
//                            ["Spiegelaar",["Susana Beltman", 15]],
//                            ["Emballage medewerker",["Jan-Jaap Gotink", 16]],
//                            ["Assistent op werkvloer",["Lidian van Houten", 15]],
//                            ["Vakken vuller",["Noë Engbers", 17]],
//                            ["Cassiére",["Cyrille Aden", 17]],
//                            ["Cassiére",["Chyenne Top", 16]],
//                            ["Spiegelaar",["Jan-Joost Morsink", 15]],
//                            ["Emballage medewerker",["Manolya Kuitert", 15]]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return canditateWithJob.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "candidatewithjob")!
        cell.textLabel?.text = canditateWithJob[indexPath.row][0] as? String
//        cell.detailTextLabel?.text = "\(canditateWithJob[indexPath.row][1][0] as? String), \(canditateWithJob[indexPath.row][1][1] as? Int)"
        let canditateInfo = canditateWithJob[indexPath.row][1] as! [Any]
        cell.detailTextLabel?.text = "\(canditateInfo[0] as! String), \(canditateInfo[1] as! Int) jaar oud"
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
        if segue.identifier == "canditatewithjob" {
            if let candidateVC = segue.destination as? CanditateInfoViewController {
                if let indexPath = tableView.indexPathForSelectedRow{
                    let array = canditateWithJob[indexPath.row][1] as! [Any]
                    candidateVC.canditateInfo = array
                }
            }
        }
    }
 

}
