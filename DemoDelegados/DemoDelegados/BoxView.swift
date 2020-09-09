//
//  BoxView.swift
//  DemoDelegados
//
//  Created by Axel Salvatierra on 9/9/20.
//  Copyright © 2020 Axel Salvatierra. All rights reserved.
//

import UIKit

protocol AlumnoInterfaz {
    func aprenderiOS(alumno: Alumno)
    func aprenderAndroid(alumno: Alumno)
    
}

class Alumno {
    
    var nombre: String
    var delegado: AlumnoInterfaz?
    
    init(nombre: String) {
        self.nombre=nombre
    }
    
    func estudiar() {
        self.delegado?.aprenderiOS(alumno: self)
        self.delegado?.aprenderAndroid(alumno: self)
        
    }
}

class Profesor {
    
    
    func ensenar() {
        
        let Axel = Alumno(nombre: "Axel")
        Axel.delegado=self
        
        let Kaori = Alumno(nombre: "Kaori")
        Kaori.delegado=self
        
    }
}

extension Profesor: AlumnoInterfaz{
    
    func aprenderiOS(alumno: Alumno) {
        
        if alumno.nombre=="Kaori"{
            print("Tomar examen A")
            
        }else if alumno.nombre=="Axel"{
            
            print("Tomar examen B")
            
        }
        print("APRENDER IOS")
    }
    
    func aprenderAndroid(alumno: Alumno) {
        print("APRENDER ANDROID")
    }
    
    
}
