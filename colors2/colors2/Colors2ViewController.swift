//
//  Colors2ViewController.swift
//  colors2
//
//  Created by Wil C Thuston on 10/26/17.
//  Copyright © 2017 Wil Thuston. All rights reserved.
//

import UIKit

class Colors2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = [Color(name: "red",uiBackgroundColor: UIColor.red),
                  Color(name: "orange",uiBackgroundColor: UIColor.orange),
                  Color(name: "yellow",uiBackgroundColor: UIColor.yellow),
                  Color(name: "green",uiBackgroundColor: UIColor.green),
                  Color(name: "blue",uiBackgroundColor: UIColor.blue),
                  Color(name: "purple",uiBackgroundColor: UIColor.purple),
                  Color(name: "brown",uiBackgroundColor: UIColor.brown),]
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Colors"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "color2Cell",for:indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiBackgroundColor
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]
        }
    }

}
