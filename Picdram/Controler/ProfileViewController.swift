//
//  ProfileViewController.swift
//  Picdram
//
//  Created by ADMIN on 8/26/19.
//  Copyright © 2019 ADMIN. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var ImageTables: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImagesCellTableViewCell
        let array = ["hi","good","nice"]
        cell.username.text=array[indexPath.row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ImageTables.delegate=self
        ImageTables.dataSource=self
        configureTableView()

        ImageTables.register(UINib(nibName: "imageCell", bundle: nil), forCellReuseIdentifier: "imageCell")
    }
        // Do any additional setup after loading the view.
    func configureTableView () {
        ImageTables.rowHeight = UITableView.automaticDimension
    ImageTables.estimatedRowHeight = 120
        ImageTables.separatorStyle = .none

    }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


