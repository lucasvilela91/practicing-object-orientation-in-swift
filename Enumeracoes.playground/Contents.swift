//Em Swift, enumerações (enums) são um tipo de dado que permite definir um conjunto de valores relacionados de forma mais segura e organizada. Elas ajudam a evitar erros ao restringir um campo ou variável a um conjunto específico de opções.
enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
            switch tipoPagamento {
            case .pix: print("O pagamento será efetuado por pix")
            case .boleto: print("O pagamento será efetuado por boleto")
            case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
//            default: break ,pode exluir pois nunca fazer usado!
                
            }

        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaLucas = Conta(nome: "Lucas")
contaLucas.pagamentoCartao(.pix)


enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}


var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiro
