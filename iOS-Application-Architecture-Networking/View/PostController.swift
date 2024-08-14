//
//  PostController.swift
//  iOS-Application-Architecture-Networking
//
//  Created by Musa Adıtepe on 14.08.2024.
//

import UIKit

class PostController: UIViewController {

    @IBOutlet weak var table: UITableView!
    let viewModel = PostViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.getPostItems{ errorMessage in
            if let errorMessage = errorMessage{
                print("error")
            }
            DispatchQueue.main.async{
                self.table.reloadData()
            }
        }
    }
    
}
extension PostController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.postItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = viewModel.postItems[indexPath.row].title
        cell.detailTextLabel?.text = viewModel.postItems[indexPath.row].body
        return cell
        
    }
}
