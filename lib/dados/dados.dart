import 'package:saude/models/modelos.dart';
/*
* Fontes imagens: https://source.unsplash.com/
* Foto específica:
*   https://source.unsplash.com/JQFHdpOKz2k/800x600
* Foto aleatória:
*   https://source.unsplash.com/9ChfwZzv4ys/800x600
* */

/* Usuário Logado */

Usuario usuarioAtual = Usuario(
    nome: "Breno Italo",
    urlImagem:
        "https://pbs.twimg.com/profile_images/1409135817902149640/L1MdLOVn_400x400.jpg"
//    urlImagem: "https://source.unsplash.com/EQFtEzJGERg/800x600"
    );

/* Lista de usuários online */
List<Usuario> usuariosOnline = [
  Usuario(
      nome: "Cidney",
      urlImagem:
          "https://scontent.fmvf1-1.fna.fbcdn.net/v/t1.6435-9/36939816_125916098316142_2279383566833942528_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFlAg8CsEpvEBD7-R2QjnX-WsjB8d0BdSNayMHx3QF1I0M_cybsv5sNWRzp8OSvOEd2f36xqNyonANkGZudR_W0&_nc_ohc=p5FHRo4MQmEAX-QLYT0&_nc_ht=scontent.fmvf1-1.fna&oh=00_AT-mZQkWZia_M8EupBM9l1VqfZDDABwIPL6ppDzTbTMqFg&oe=61EDB878"),
//          "https://s2.glbimg.com/-vf1ehZ6-us-LP3ZcAbROD-JcyM=/0x0:620x413/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/Q/i/EZhHtFRHqTv1KkA0RjPw/2019-01-16-chevrolet-tracker-2.jpg"),
  Usuario(
      nome: "Maria Almeida",
      urlImagem: "https://source.unsplash.com/0wRXAXqIp58/800x600"),
  Usuario(
      nome: "Fernando Lima de albuquerque filho",
      urlImagem: "https://source.unsplash.com/59HOrlAKTOU/800x600"),
  Usuario(
      nome: "Marcela Faria",
      urlImagem: "https://source.unsplash.com/GXzHGgzraHc/800x600"),
  Usuario(
      nome: "Carlos Eduardo",
      urlImagem: "https://source.unsplash.com/y8yimL21z8s/800x600"),
  Usuario(
      nome: "Joana Santos",
      urlImagem: "https://source.unsplash.com/PXWiHU7pbeg/800x600"),
  Usuario(
      nome: "Rodrigo Caio",
      urlImagem: "https://source.unsplash.com/MS0RHQ1enek/800x600"),
  Usuario(
      nome: "Pedro do Carmo",
      urlImagem: "https://source.unsplash.com/9ChfwZzv4ys/800x600"),
];

/* Lista de estórias */
List<Estoria> estorias = [
  Estoria(
    usuario: usuariosOnline[0],
    urlImagem:
        "https://s2.glbimg.com/-vf1ehZ6-us-LP3ZcAbROD-JcyM=/0x0:620x413/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/Q/i/EZhHtFRHqTv1KkA0RjPw/2019-01-16-chevrolet-tracker-2.jpg",
//    urlImagem: "https://source.unsplash.com/JMWjOup32Fk/800x600",
    foiVisualizado: true,
  ),
  Estoria(
    usuario: usuariosOnline[1],
    urlImagem:
        "https://img.freepik.com/fotos-gratis/teste-de-carro-sedan-vermelho-na-estrada_114579-4061.jpg?size=626&ext=jpg",
//    urlImagem: "https://source.unsplash.com/no_TCkPUq_s/800x600",
    foiVisualizado: true,
  ),
  Estoria(
      usuario: usuariosOnline[2],
      urlImagem:
          "https://images.tcdn.com.br/img/img_prod/494876/ambulancia_tipo_d_furgao_longo_de_teto_alto_acima_de_10m_1085_1_da8cdfd2c14fa437752765c502131c5b.jpg"),
//      urlImagem: "https://source.unsplash.com/6dX5TPPM34M/800x600"),
  Estoria(
      usuario: usuariosOnline[3],
      urlImagem:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdi07FzYb58RBgK_2UAaotJ7O2hix53NzPwA&usqp=CAU"),
//      urlImagem: "https://source.unsplash.com/PO7CGnoDFUI/800x600"),
  Estoria(
      usuario: usuariosOnline[4],
      urlImagem:
          "https://images.tcdn.com.br/img/img_prod/494876/ambulancia_tipo_d_furgao_longo_de_teto_alto_acima_de_10m_1085_1_da8cdfd2c14fa437752765c502131c5b.jpg"),
//      urlImagem: "https://source.unsplash.com/1HpQU1evGK8/800x600"),
  Estoria(
      usuario: usuariosOnline[5],
      urlImagem:
          "https://s2.glbimg.com/-vf1ehZ6-us-LP3ZcAbROD-JcyM=/0x0:620x413/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/Q/i/EZhHtFRHqTv1KkA0RjPw/2019-01-16-chevrolet-tracker-2.jpg"),
//      urlImagem: "https://source.unsplash.com/1HpQU1evGK8/800x600"),
  Estoria(
      usuario: usuariosOnline[6],
      urlImagem:
          "https://images.tcdn.com.br/img/img_prod/494876/ambulancia_tipo_d_furgao_longo_de_teto_alto_acima_de_10m_1085_1_da8cdfd2c14fa437752765c502131c5b.jpg"),
//      urlImagem: "https://source.unsplash.com/W9z_628BBpc/800x600"),
  Estoria(
      usuario: usuariosOnline[7],
      urlImagem:
          "https://image.freepik.com/fotos-gratis/um-carro-azul-sedan-dirigindo-na-estrada-em-um-tempo-nublado_114579-4053.jpg"),
//      urlImagem: "https://source.unsplash.com/DOb-2jd0sbc/800x600"),
];

/* Lista de Pacientes */
List<Paciente> pacientes = [
  Paciente(
    nome: "Jonh Zoe",
    cpf: "056.452.865-23",
    idade: 30,
    cns: "123565849845621",
    sexo: "M",
    endereco: "Rua Luiz Romão Barreto",
    bairro: "Centro",
    contato: "84 998653598",
  ),
  Paciente(
    nome: "Breno Italo",
    cpf: "056.452.865-23",
    idade: 31,
    cns: "123565849845621",
    sexo: "M",
    endereco: "Rua Luiz Romão Barreto",
    bairro: "Centro",
    contato: "84 998653598",
  ),
  Paciente(
    nome: "Raylan Brayan",
    cpf: "056.452.865-23",
    idade: 30,
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
  Paciente(
    nome: "Martins Neto",
    cpf: "056.452.865-23",
    idade: 30,
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
  Paciente(
    nome: "Gildean Alcântara",
    cpf: "056.452.865-23",
    idade: 30,
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
  Paciente(
    nome: "Dairla",
    cpf: "056.452.865-23",
    idade: 30,
    cns: "1453678848654221",
    sexo: "F",
    endereco: "Rua Maria Morais de Souza",
    bairro: "Segundo Mestre",
    contato: "84 991569683",
  ),
];


// /* Lista de postagens */
// List<Postagem> postagens = [
//   Postagem(
//       usuario: usuariosOnline[0],
//       descricao: "Passeio muito legal no final de semana",
//       tempoAtras: "20m",
//       urlImagem: "https://source.unsplash.com/DOb-2jd0sbc/800x600",
//       curtidas: 30,
//       comentarios: 3,
//       compartilhamentos: 5),
//   Postagem(
//       usuario: usuariosOnline[1],
//       descricao: "Quero compartilhar com você algo que aconteceu...",
//       tempoAtras: "40m",
//       urlImagem: "https://source.unsplash.com/G0H58Z5aPog/800x600",
//       curtidas: 30,
//       comentarios: 3,
//       compartilhamentos: 5),
//   Postagem(
//       usuario: usuariosOnline[2],
//       descricao: "Não recomendo esse lugar, não fomos bem atendidos",
//       tempoAtras: "55m",
//       urlImagem: "https://source.unsplash.com/1a_u4n02YNo/800x600",
//       curtidas: 30,
//       comentarios: 3,
//       compartilhamentos: 5),
//   Postagem(
//       usuario: usuariosOnline[3],
//       descricao:
//           "Não importa o que você sabe, mas o que faz com o que você sabe!",
//       tempoAtras: "1h",
//       urlImagem: "https://source.unsplash.com/sfL_QOnmy00/800x600",
//       curtidas: 30,
//       comentarios: 3,
//       compartilhamentos: 5),
//   Postagem(
//       usuario: usuariosOnline[4],
//       descricao: "Preciso de indicações de eletricista, meu chuveiro pifou :(",
//       tempoAtras: "2h",
//       urlImagem: "https://source.unsplash.com/_tWMmC9CQXQ/800x600",
//       curtidas: 30,
//       comentarios: 3,
//       compartilhamentos: 5),
//   Postagem(
//       usuario: usuariosOnline[5],
//       descricao: "Que chuva maravilhosa!",
//       tempoAtras: "2d",
//       urlImagem: "https://source.unsplash.com/a4wUKaaMGWQ/800x600",
//       curtidas: 30,
//       comentarios: 3,
//       compartilhamentos: 5),
//   Postagem(
//       usuario: usuariosOnline[6],
//       descricao: "Um dia mais que especial, nos divertimos bastante ;)",
//       tempoAtras: "3d",
//       urlImagem: "https://source.unsplash.com/YS1OOmHAFD0/800x600",
//       curtidas: 100,
//       comentarios: 30,
//       compartilhamentos: 3),
//   Postagem(
//       usuario: usuariosOnline[7],
//       descricao: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista, "
//           "insista, corra atrás, passe algumas noites sem dormir direito, "
//           "mas nunca desista de seus sonhos, acredite que é capaz, se olhe "
//           "no espelho e diga pra você: VOCÊ TEM POTENCIAL! "
//           "Ninguém além de você mesmo pode torná-lo real.",
//       tempoAtras: "3d",
//       urlImagem: "https://source.unsplash.com/Ng2Hg1YMMuU/800x600",
//       curtidas: 230,
//       comentarios: 25,
//       compartilhamentos: 3),
// ];
