import Foundation

// var personas: [personaProtocol] = []

// let alumnoUno = Alumno(nombre : "Bob", apellido: "Jimenez", edad : 22, carnet: "BJ908712", materias: [])

// alumnoUno.materias.append("HUMAN1")

// let profesorUno = Docente(nombre : "Teto", apellido: "Boss", edad : 30, grupos: ["BDB"])

// personas.append(alumnoUno)
// personas.append(profesorUno)

// personas.append(Alumno(nombre : "Juan", apellido: "Soles", edad : 21, carnet: "JS908712", materias: ["DBA", "TEI", "MAD"]))

// personas.append(Alumno(nombre : "Mark", apellido: "Slow", edad : 20, carnet: "MS908712", materias: ["DBA", "TEI", "MAD"]))

// personas.forEach({ $0.mostrarDatos()})


// Codigo para segundo ejercicio de la tienda
    var salir = "no"
var opcion = ""
var nombreNuevo : String
var existenciaNuevo  = 0
var priceNuevo : Double = 0.0



repeat{

  print("1. No quiere agregar productos \n2. Quiere agregar")

   opcion = readLine()!

   switch opcion {
        case "1" : 
        var productos : [Producto] = []
productos.append(Producto(nombre: "Televisor lG", existencias: 5,  precio: 300))
productos.append(Producto(nombre: "licuadora Oster", existencias: 6,  precio: 24))
productos.append(Producto(nombre: "Lavadora Mabe", existencias: 8,  precio: 400))
productos.append(Producto(nombre: "Refrigeradora LG", existencias: 4,  precio: 600))

let tienda = Tienda (productos : productos)
        tienda.aplicacion()

      case "2":

      print("nombre del producto :")
      let name = readLine()!
      nombreNuevo = name

      print("existencias : ")
      let exist = readLine()!
      existenciaNuevo = Int(exist)!

      print("precio: ")
      let precio = readLine()!
      priceNuevo = Double(precio)!

      var productos : [Producto] = []
productos.append(Producto(nombre: "Televisor lG", existencias: 5,  precio: 300))
productos.append(Producto(nombre: "licuadora Oster", existencias: 6,  precio: 24))
productos.append(Producto(nombre: "Lavadora Mabe", existencias: 8,  precio: 400))
productos.append(Producto(nombre: "Refrigeradora LG", existencias: 4,  precio: 600))

   productos.append(Producto(nombre: nombreNuevo, existencias: existenciaNuevo,  precio: priceNuevo))

   
let tienda = Tienda (productos : productos)
      tienda.aplicacion()

        default :
        print("Opcion desconocida")

    }
    print("Salir? Si - No")
      salir = readLine()!
} while salir != "Si"

