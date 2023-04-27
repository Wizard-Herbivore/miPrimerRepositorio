//
//  NUEVOELEMENTO.swift
//  Yolcatzin
//
//  Created by Facultad de Contaduría y Administración  on 25/04/23.
//

import UIKit

class NUEVOELEMENTO: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtProducto: UITextField!
    
    @IBOutlet weak var txtCorreo: UITextField!
    
    var nuevoBichitos: EstructuraBichitos = EstructuraBichitos(foto: UIImage (named: "GusanoTabla")!, nombre: "", producto: "", correo: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Guardar( sender: Any) {
        
        nuevoBichitos.nombre = txtNombre.text!
        nuevoBichitos.producto = txtProducto.text!
        nuevoBichitos.correo = txtCorreo.text!
        
        Bichitos.append(nuevoBichitos)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
