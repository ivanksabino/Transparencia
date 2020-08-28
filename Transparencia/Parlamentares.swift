// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let parlamentares = try? newJSONDecoder().decode(Parlamentares.self, from: jsonData)

import Foundation

// MARK: - Parlamentar
class Parlamentar: Codable {
    let txNomeParlamentar: String
    let ideCadastro: Int
    let vlrDocumento: Double
    let codOrcamento: String?
    let condicao: Condicao
    let matricula, idParlamentar: String
    let urlFoto: String
    let sexo: Sexo
    let uf, partido, gabinete, anexo: String
    let fone, email: String

    init(txNomeParlamentar: String, ideCadastro: Int, vlrDocumento: Double, codOrcamento: String?, condicao: Condicao, matricula: String, idParlamentar: String, urlFoto: String, sexo: Sexo, uf: String, partido: String, gabinete: String, anexo: String, fone: String, email: String) {
        self.txNomeParlamentar = txNomeParlamentar
        self.ideCadastro = ideCadastro
        self.vlrDocumento = vlrDocumento
        self.codOrcamento = codOrcamento
        self.condicao = condicao
        self.matricula = matricula
        self.idParlamentar = idParlamentar
        self.urlFoto = urlFoto
        self.sexo = sexo
        self.uf = uf
        self.partido = partido
        self.gabinete = gabinete
        self.anexo = anexo
        self.fone = fone
        self.email = email
    }
}

enum Condicao: String, Codable {
    case suplente = "Suplente"
    case titular = "Titular"
}

enum Sexo: String, Codable {
    case feminino = "feminino"
    case masculino = "masculino"
}

typealias Parlamentares = [Parlamentar]
