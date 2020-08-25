//
//  ViewController.swift
//  Transparencia
//
//  Created by Ivan Sabino on 25/08/20.
//  Copyright © 2020 Ivan Sabino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var parlamentares : Parlamentares!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.loadJSON { (parlamentares, error) in
            self.parlamentares = parlamentares
            
            
            self.tableView.reloadData()
            for parlamentar in parlamentares{
                print(parlamentar.txNomeParlamentar)
            }
        }
        
        
        
    }
    
    
    
    func loadJSON(completion: @escaping (Parlamentares, Error?) -> Void){
        let path =  Bundle.main.path(forResource: "deputadosGastos", ofType: "json")
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path!)) else {return}

        guard let parlamentares = try? JSONDecoder().decode(Parlamentares.self, from: data) as Parlamentares else{return}
        
        completion(parlamentares, nil)
    }
    
    
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.parlamentares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "deputadosCell") as? DeputadosTableViewCell{
            cell.nomeLabel.text = parlamentares[indexPath.row].txNomeParlamentar
            cell.valorLabel.text = "\(parlamentares[indexPath.row].vlrDocumento)"
            
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    
}
