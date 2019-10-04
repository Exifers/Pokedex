//
//  PokemonTableViewController.swift
//  BulbasaurOrPikachu
//
//  Created by epita on 04/10/2019.
//  Copyright © 2019 Epita. All rights reserved.
//

import UIKit
import Alamofire

class PokemonTableViewController: UITableViewController {
    
    var pokemons = [Pokemon]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        pokemons.append(Pokemon(name:"Pikachu",description_:"A tiny animal that throws lightstorms."))
        pokemons.append(Pokemon(name:"Bulbasaur",description_:"A heavy animal that throws plants."))
        
        let activityIndicator = UIActivityIndicatorView(style: .gray)
        view.addSubview(activityIndicator)
        activityIndicator.center = CGPoint(x: view.frame.size.width * 0.5, y: view.frame.size.height * 0.5)
        activityIndicator.startAnimating()
//        Alamofire.Request(
//            URL(string:"https://pokedex-mti.twitchytv.live/species")!,
//            method:.get
//        ).validate()
//            .responseJSON{ (response) -> Void in
//                guard response.result.isSuccess else {
//                    print("Error while fetching pokemons.")
//                    completion(nil)
//                    return
//                }
//
//                completion(response.result.value)
//        }
    }
    
    @IBAction func unwind(_ segue:UIStoryboardSegue) {
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pokemons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListPrototypeCell", for: indexPath)

        if indexPath.row < pokemons.count {
            let pokemon = pokemons[indexPath.row]
            cell.textLabel?.text = pokemon.name
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PokemonDescrition", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PokemonDescrition" {
            // do things ...
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
