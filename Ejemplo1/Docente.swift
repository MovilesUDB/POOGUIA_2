import Foundation

class Docente: Persona, personaProtocol{

  var grupos: [String]

  init(nombre : String, apellido: String, edad : Int, grupos : [String]){
    self.grupos = grupos
    super.init(nombre : nombre, apellido : apellido, edad : edad)
  }

  func mostrarDatos(){
    print("Profesores: \(nombre) \(apellido)")
    print("Edad: \(edad)")

    print("Grupos que imparte: ")

    grupos.forEach({ grupo in print(grupo)})
  }
}