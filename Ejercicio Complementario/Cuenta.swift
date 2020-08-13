import Foundation

class Cuenta{
  let propietario : String
  var numeroCuenta = 0
  var saldo : Double = 0.0

  init(propietario : String, numeroCuenta : Int, saldo : Double){
    self.propietario = propietario
    self.numeroCuenta = numeroCuenta
    self.saldo = saldo
  }

  func retirarEfectivo(cantidad : Double) -> Double{
    if cantidad > self.saldo {
      print("No hay suficientes saldo en su cuenta")
      return 0.0
    }

    self.saldo -= cantidad
    return Double(saldo)
  }

  func agregarEfectivo(cantidad : Double) -> Double{
    if cantidad < 0.0 {
     print("No se permiten numeros o cantidad negativas")
     return 0.0
    }

    self.saldo += cantidad
    return Double(saldo)
  }

}