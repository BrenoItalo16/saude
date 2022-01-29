import 'package:saude/models/modelos.dart';

/* Usuário Logado */
Usuario usuarioAtual = Usuario(
  nome: "Breno Italo",
  urlImagem:
      "https://pbs.twimg.com/profile_images/1409135817902149640/L1MdLOVn_400x400.jpg",
);

List<Passagem> passagens = [
  Passagem(
    numeroVaga: 1,
    nome: 'Maria das Neves',
    procedimento: 'Repor o caneco',
    destino: 'Lá o longe de Assu',
    ida: true,
    volta: true,
  ),
  Passagem(
    numeroVaga: 3,
    nome: 'Joaquin José da Silva Xavier',
    procedimento: 'Alinhar o olho',
    destino: 'Depois do Porto',
    ida: false,
    volta: true,
  ),
  Passagem(
    numeroVaga: 2,
    nome: 'João das Neves',
    procedimento: 'Trocar o caneco',
    destino: 'Ali perto de Assu',
    ida: true,
    volta: false,
  ),
];

/* Lista de Pacientes 
List<Paciente> pacientes = [
  Paciente(
    nome: "Jonh Zoe Azevedo da Silva Fonseca",
    cpf: "056.452.865-23",
    nasc: '16/04/1990',
    cns: "123565849845621",
    sexo: "M",
    endereco: "Rua Luiz Romão Barreto",
    bairro: "Centro",
    contato: "84 998653598",
  ),
  Paciente(
    nome: "Breno Italo",
    cpf: "056.452.865-23",
    nasc: '16/04/1990',
    cns: "123565849845621",
    sexo: "M",
    endereco: "Rua Luiz Romão Barreto",
    bairro: "Centro",
    contato: "84 998653598",
  ),
  Paciente(
    nome: "Raylan Brayan",
    cpf: "056.452.865-23",
    nasc: '16/04/1990',
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
  Paciente(
    nome: "Martins Neto",
    cpf: "056.452.865-23",
    nasc: '16/04/1990',
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
  Paciente(
    nome: "Gildean Alcântara",
    cpf: "056.452.865-23",
    nasc: '16/04/1990',
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
  Paciente(
    nome: "Dairla",
    cpf: "056.452.865-23",
    nasc: '16/04/1990',
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ), 
]; */
