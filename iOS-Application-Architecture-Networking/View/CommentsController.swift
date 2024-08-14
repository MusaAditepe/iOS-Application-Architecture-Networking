//
//  CommentsController.swift
//  iOS-Application-Architecture-Networking
//
//  Created by Musa Adıtepe on 14.08.2024.
//

import UIKit

class CommentsController: UIViewController {
    
    @IBOutlet weak var table: UITableView!
    
    let viewModel = PostViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getPostComment{ errorMessage in
            if let errorMessage = errorMessage {
                print("error")
            }
            DispatchQueue.main.async {
                self.table.reloadData()
            }
            
        }
    }
    
}

    extension CommentsController : UITableViewDataSource, UITableViewDelegate{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            viewModel.commentItems.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
            cell.textLabel?.text = viewModel.commentItems[indexPath.row].title
            cell.detailTextLabel?.text = viewModel.commentItems[indexPath.row].body
            return cell
            
        }
    }
