
//Os protocolos são um conjunto de regras definidas que devem ser seguidas. Logo, podemos criar um protocolo que define o atributo saldo e os métodos de sacar e depositar.

protocol Conta {
    var saldo: Double { get set }
    
    func sacar(_ valor: Double)
    
    func depositar (_ valor: Double)
}

class ContaCorrente: Conta {
    var saldo: Double = 0.0
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
//    init() {
//        saldo = 0.0
//    }
}
