//
//  TableViewControllerPerrittos.swift
//  MiPrimerApp
//
//  Created by Facultad de Contaduría y Administración on 19/04/23.
//

import UIKit


struct EstructuraBichitos{
    var foto: UIImage
    var nombre:String
    var producto: String
    var correo: String
}


var Bichitos:[EstructuraBichitos]=[
      
            EstructuraBichitos(foto: UIImage(named: "paletasescorpion")!, nombre:"Pedro Sanchez", producto: "escorpion", correo:  "www.prueba.com"),
            EstructuraBichitos(foto: UIImage(named: "luisitocomunica")!, nombre: "Kilo de luisito", producto: "Luisito", correo: "www.prueba2.com")
        
        ]


    
    
    
class TableViewControllerBichitos: UIViewController, UITableViewDelegate, UITableViewDataSource {
        @IBOutlet var tbBichitos: UITableView!
        
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbBichitos.dataSource=self
        tbBichitos.delegate=self
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Bichitos.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath) as! TableViewCellBichitos
        
        
        let celdaReciclada = Bichitos[indexPath.row]
        
        cell.FotoBichitos.image=celdaReciclada.foto
        cell.lblNombre.text=celdaReciclada.nombre
        cell.lblProducto.text=celdaReciclada.producto
        cell.lblCorreo.text=celdaReciclada.correo

        // Configure the cell...

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

