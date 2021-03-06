//
//  JobsTableViewController.swift
//  Hypthese_2
//
//  Created by Lars De Winter on 12/12/2017.
//  Copyright © 2017 Lars De Winter. All rights reserved.
//

import UIKit

class JobsTableViewController: UITableViewController {

    let jobs = [["Emballage medewerker", "1 uur geleden"],
                ["Vulploeg medewerker", "23 uur geleden"],
                ["Spiegelaar","2 dagen geleden"],
                ["Assistent werkvloer", "5 dagen geleden"],
                ["Spiegelaar", "1 week geleden"],
                ["Vulploeg medewerker", "1 week geleden"],
                ["Weekend hulp", "1 week geleden"],
                ["Emballage medewerker", "3 weken geleden"],
                ["Cassére", "4 weken geleden"],
                ["Emballage medewerker", "1 uur geleden"],
                ["Vulploeg medewerker", "23 uur geleden"],
                ["Spiegelaar","2 dagen geleden"],
                ["Assistent werkvloer", "5 dagen geleden"],
                ["Spiegelaar", "1 week geleden"],
                ["Vulploeg medewerker", "1 week geleden"],
                ["Weekend hulp", "1 week geleden"]
//                ["Emballage medewerker", "3 weken geleden"],
//                ["Cassére", "4 weken geleden"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.title = "Open vacatures"
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
        return jobs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jobs")!
        cell.textLabel?.text = jobs[indexPath.row][0]
        cell.detailTextLabel?.text = jobs[indexPath.row][1]
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
