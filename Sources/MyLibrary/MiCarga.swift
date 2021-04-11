//
//  File.swift
//  
//
//  Created by Julio César Fernández Muñoz on 11/4/21.
//

import Foundation

struct MiCarga {
    var empleados:[EmployeeData] = []
    
    init() {
        guard let ruta = Bundle.module.url(forResource: "EmpleadosData", withExtension: "json") else {
            return
        }
        do {
            let jsonData = try Data(contentsOf: ruta)
            empleados = try JSONDecoder().decode([EmployeeData].self, from: jsonData)
        } catch {
            print("Error en la carga \(error)")
        }
    }
}
