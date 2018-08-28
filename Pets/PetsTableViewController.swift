//
//  PetsTableViewController.swift
//  Pets
//
//  Created by Daniela Parra on 8/28/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

class PetsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

 
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetsCell", for: indexPath)

        let pet = pets[indexPath.row]
        
        cell.textLabel?.text = pet

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   
    let pets = ["Sisi", "Bella", "Nacho", "Theo", "Toby", "Bunny", "Cow", "Chickens"]

}
