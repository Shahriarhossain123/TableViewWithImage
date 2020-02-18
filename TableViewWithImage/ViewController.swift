//
//  ViewController.swift
//  TableViewWithImage
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var AniTAble: UITableView!
    
    
    var anipic = ["lion","panda","raccondog","splash","tiger","wolf"]
    var AniName = ["Lion","Panda","Reccondog","Splash","Tiger","Wolf"]
    var AniPrice = ["Price: $3,000,000","Price: $1,500,000","Price: $1,060,000","Price: $2,500,000","Price: $1,000,000","Price: $1,700,000"]

    override func viewDidLoad() {
        super.viewDidLoad()
        AniTAble.rowHeight = 400.0
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return anipic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ShowCell
        
        cell.showpic.image = UIImage(named: anipic[indexPath.row])
        cell.showname.text = AniName[indexPath.row]
        cell.showprice.text = AniPrice[indexPath.row]
        
        return cell
    }


}

