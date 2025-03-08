class Carro {
  var modelo: String
  var marca: String
  var ano: Int
  
  init(modelo: String, marca: String, ano: Int) {
      self.modelo = modelo
      self.marca = marca
      self.ano = ano
    }
}

class Ford: Carro {
  var tipoCombustivel: String
    
  init(modelo: String, ano: Int, tipoCombustivel: String) {
    self.tipoCombustivel = tipoCombustivel
    super.init(modelo: modelo, marca: "Ford", ano: ano)
  }

    func alteraTipoCombustivel(novoTipo: String) {
    self.tipoCombustivel = novoTipo
  }
}

let fiesta = Ford(modelo: "Fiesta", ano: 2014, tipoCombustivel: "Etanol")
fiesta.alteraTipoCombustivel(novoTipo: "Gasolina")

//A classe está definida e instanciada de maneira correta.

//A classe “Ford” possui um atributo exclusivo, que é o tipoCombustivel e usa do super para inicializar os outros atributos da classe pai.
