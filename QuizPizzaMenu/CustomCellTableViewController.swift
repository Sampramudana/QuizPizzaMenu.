//
//  CustomCellTableViewController.swift
//  QuizPizzaMenu
//
//  Created by Sam Pramudana on 10/20/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class CustomCellTableViewController: UITableViewController {
    
    let names:[String] = ["Margherita Pizza", "BBQ Chicken Pizza", "Pepperoni Pizza", "Sausage Pizza", "Seafood Pizza", "Sausage Deep Dish", "Meat Lover's Deep Dish", "Veggie Lover's Deep Dish", "BBQ Chicken Deep Dish", "Mushroom Deep Dish", "Tiramisu", "Vanilla Ice Cream", "Apple Crostata", "Hot Fudge Pizza", "Soft Drink", "Coffee", "Espresso", "Mineral Water"]
    
    let prices:[String] = ["$7.95", "$11.49", "$8.45", "$8.45", "$12.75", "$10.65", "$12.35", "$10.00", "$16.60", "$11.25", "$6.50", "$2.25", "$6.50", "$9.75", "$1.25", "$1.25", "$3.50", "$3.75"]
    
    let specials:[String] = ["Special", "Normal", "Special", "Promo", "Promo", "Special", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal", "Normal"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 650.0
        tableView.rowHeight = UITableViewAutomaticDimension

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
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPizza", for: indexPath) as! PizzaTableViewCell

        // Configure the cell...
        
        cell.labelJudul.text = names[indexPath.row]
        cell.labelHarga.text = prices[indexPath.row]
        cell.labelSpecial.text = specials[indexPath.row]
        
        
        

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
