class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
        
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
//    func transferia(_ contaDestino: Conta, _ valor: Double ) {
//    sacar(valor)
//    contaDestino.depositar(valor)
//}
    
    init(nome: String) {
        self.nome = nome
    }
}


//A extension serve para estendermos um tipo de dado já existente, pode ser classe ou uma struct. E podemos implementar novos métodos e usar para fins de organização.

extension Conta{
    func transferia(_ contaDestino: Conta, _ valor: Double ) {
        sacar(valor)
        contaDestino.depositar(valor)
    }

}


var contaLucas = Conta(nome: "Lucas")
contaLucas.depositar(200)

var contaAna = Conta(nome: "Ana")
contaLucas.transferia(contaAna, 50)

print(contaLucas.saldo)
print(contaAna.saldo)


func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}

let texto = String("Lucas")
contaCaracteresString(texto)


extension String {
//    var texto = "" nao pode conter propriedades armazenadas
    func contaCaracteresSting() -> Int {
        return self.count
    }
}

print(texto.contaCaracteresSting())
