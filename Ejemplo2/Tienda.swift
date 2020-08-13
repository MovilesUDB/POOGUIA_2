import Foundation

class Tienda{
  var productos : [Producto]

  init(productos : [Producto]){
    self.productos = productos
  }

  func mostrarProductos(){
    self.productos.enumerated().forEach({ index, producto in print("\(index) - \(producto.nombre) : \(producto.existencias)")
    })
  }

  func venderProducto(index : Int, cantidad : Int) -> Double{
    return self.productos[index].venderProducto(cantidad : cantidad)
  }

  
  func agregarExistencias(index : Int, cantidad : Int){
    return self.productos[index].agregarExistencias(cantidad : cantidad)
  }

  func aplicacion(){
    print("Bienvenido a la tienda Mari")

    var salir = "no"
    var opcion = ""
    var indiceProducto = 0
    var cantidad = 0

    repeat{
      print("Que desea hacer?")
      print("1. Vender producto \n2. Agregar Existencias \n3. Mostrar Productos")

      opcion = readLine()!

      switch opcion {
        case "1" : 
        print("Seleccione el producto")
        self.mostrarProductos()

        let strIndice = readLine()!
        indiceProducto = Int(strIndice)!

        print("Seleccione cantidad a comprar")
        cantidad = Int(readLine()!)!

        print("Total a pagar \(self.venderProducto(index : indiceProducto, cantidad : cantidad))")


        case "2" :
        print("Seleccione el producto: ")
        self.mostrarProductos()
        let strIndice = Int(readLine()!)

        indiceProducto =  Int(strIndice!)

        print("Nuevas existencias")
        cantidad = Int(readLine()!)!

        agregarExistencias(index : indiceProducto, cantidad : cantidad)

        case "3" :
        self.mostrarProductos()

        default :
        print("Opcion desconocida")

      }

      print("Salir? Si - No")
      salir = readLine()!

    } while salir != "Si"
  }
}