import Foundation

class Banco{
  var cuentas : [Cuenta]

  init(cuentas : [Cuenta]){
    self.cuentas = cuentas
  }

  func mostrarCuentas(){
    self.cuentas.enumerated().forEach({ index, cuenta in print("\(index) - Propietario: \(cuenta.propietario) \nNumero de cuenta: \(cuenta.numeroCuenta)")
    })
  }

  func retirarEfectivo(index : Int, cantidad : Double) -> Double{
    return self.cuentas[index].retirarEfectivo(cantidad : cantidad)
  }

  
  func agregarEfectivo(index : Int, cantidad : Double) -> Double{
    return self.cuentas[index].agregarEfectivo(cantidad : cantidad)
  }

  func aplicacion(){
    print("Bienvenido al banco sin seguridad")

    var salir = "no"
    var opcion = ""
    var indiceProducto = 0
    var cantidad : Double = 0.0

    repeat{
      print("Que desea hacer?")
      print("1. Retirar efectivo \n2. Abonar a cuenta \n3. Mostrar cuentas")

      opcion = readLine()!

      switch opcion {
        case "1" : 
        print("Seleccione la cuenta")
        self.mostrarCuentas()

        let strIndice = readLine()!
        indiceProducto = Int(strIndice)!

        print("Escriba el monto a retirar")
        cantidad = Double(readLine()!)!

        print("Total en cuenta \(self.retirarEfectivo(index : indiceProducto, cantidad : cantidad)) ")


        case "2" :
        print("Seleccione la cuenta: ")
        self.mostrarCuentas()
        let strIndice = Int(readLine()!)

        indiceProducto =  Int(strIndice!)

        print("Escriba el monto a Abonar")
        cantidad = Double(readLine()!)!

        print("Saldo total en cuenta \(self.agregarEfectivo(index : indiceProducto, cantidad : cantidad))")
        

        case "3" :
        self.mostrarCuentas()

        default :
        print("Opcion desconocida")

      }

      print("Salir? Si - No")
      salir = readLine()!

    } while salir != "Si"
  }
}