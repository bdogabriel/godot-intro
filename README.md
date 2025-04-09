# Godot Intro

Este repositório contém o projeto e as notas da aula de Godot do grupo Fellowship of the Game, ministrada online no dia 08 de abril de 2025 e disponível no canal do [YouTube do FoG](https://www.youtube.com/@FellowshipoftheGame).

---

## Introdução

Este material é direcionado a qualquer pessoa interessada em desenvolver jogos e que queira aprender mais sobre game engines — mais especificamente, sobre a Godot.

Além disso, este repositório serve como material complementar, contendo uma introdução ao que é falado no vídeo e o código do projeto desenvolvido. Recomendo fortemente que você assista à gravação da aula no YouTube do FoG para entender melhor as coisas, já que o código por si só pode não ser suficiente (eu sou legal, confia).

Se você ainda não baixou a engine, é só acessar o site oficial: [godotengine.org](https://godotengine.org/). Há uma versão padrão e uma com suporte a C#. Se você não faz questão de usar C#, pode baixar a versão padrão. A engine está disponível para Windows, Linux e macOS.

[Uma aula muito legal (porém em inglês) no YouTube, que implementa um projeto completo clonando o jogo "Asteroids"](https://youtu.be/FmIo8iBV1W8?si=ex3Z1YUIPjU4Fc24)

Assets usados no projeto: [Space Shooter Redux by Kenney](https://kenney.nl/assets/space-shooter-redux)

---

## Godot e outras Game Engines

Vamos falar um pouco sobre game engines em geral e depois um pouco sobre a Godot.

### O que é uma Game Engine?

Uma game engine é um software que facilita sua vida como desenvolvedor. Antes das game engines, os jogos precisavam ser programados do zero, o que dava muito mais controle aos devs, mas era um processo **EXTREMAMENTE DIFÍCIL!** Imagina que seu jogo precisa de física, colisão, gráficos etc. E imagina ter que programar tudo isso do zero?

Uma analogia legal é a seguinte: imagine que você quer fazer um desenho, mas precisa construir a mesa, fabricar o lápis, processar o papel... Essas são coisas que você vai precisar em qualquer desenho que fizer, então é melhor que já estejam prontas de antemão, pra você poder focar no que realmente importa: desenvolver!

No fim das contas, uma game engine implementa todas as partes difíceis que você sempre vai precisar, mas não quer fazer, como: renderização, reprodução de áudio, física, colisão, animação etc.

### Por que usar uma Game Engine?

_"Mas Gabriel, eu tirei 10 em ICC 1, eu consigo programar meu jogo em C."_ Provavelmente, se você tentar, vai conseguir — e vai aprender muita coisa legal. Mas há grandes chances de que você não faça um jogo... vai acabar fazendo uma engine. O que pode ser uma experiência maneira, mas se você quer mesmo fazer jogos, **USE UMA ENGINE!**

_"Ah, mas o amigo da vizinha da minha prima disse que fez um clone do Mega Man só usando um framework em Java."_ Parabéns pra ele, mas você tem uma vida! E uma faculdade pra terminar!

Falando sério, pode parecer um pé no saco ter que aprender um software complexo do zero só pra fazer um joguinho por hobby. Mas a curva de aprendizado é bem amigável e, em pouco tempo, você vai conseguir fazer coisas muito legais que nem imaginava. Vale a pena aprender uma engine!

### Como escolher uma Game Engine?

Atualmente, as três engines mais populares são Unity, Unreal e Godot. Por serem mais populares, é mais fácil achar tutoriais e dúvidas respondidas em fóruns online. Mas isso não significa que você não possa usar outras engines. Alguns critérios legais para considerar na hora de escolher uma engine:

- **Alinhamento com conhecimentos prévios:** Se você já sabe C#, pode ser uma boa usar a Unity. Se você curte Python, o GDScript da Godot é bem parecido. Existem muitas engines por aí, e se você já domina algo relacionado, isso pode te ajudar a aprender mais rápido. Se você não sabe programar e tem preguiça de aprender, o Game Maker pode ser uma opção legal por ter visual scripting.

- **Tipo de jogo:** Se você quer fazer um jogo 2D em pixel art, com uma pegada retrô, Unreal vai ser um pé no saco. A engine simplesmente não foi pensada pra isso. Mas, por outro lado, quando o assunto são gráficos realistas e cinemáticos, não existe opção melhor. A escolha da engine depende muito do que você quer fazer. Unity e Godot são boas escolhas por serem bem genéricas: você vai conseguir fazer qualquer tipo de jogo, 2D ou 3D, com qualquer uma das duas. Mas se quiser algo muito fácil de usar e não liga pra limitações, existem engines especializadas em gêneros específicos, como a Ren'Py (visual novels) ou o RPG Maker (RPGs).

- **Gosto pessoal:** Se você gostou mais da cara de uma engine do que de outra, esse pode ser um critério válido também. Você vai passar horas usando esse software, então não vale a pena escolher algo que você não curte só por min-max. Você vai acabar se frustrando e isso vai afetar sua motivação.

- **DICA DE OURO (MÉTODO 100% INFALÍVEL TESTADO EM MAIS DE 500 PAÍSES!):** Teste e explore as opções, mas depois que escolher uma, se agarre a ela por um tempo. Ficar trocando de engine o tempo todo vai tornar o desenvolvimento mais lento, tedioso e frustrante. Se você está conseguindo progredir e tirar seus projetos do papel com uma engine, então ela é perfeita! Só mude de engine se realmente quiser ou se algo na atual estiver te incomodando muito. No fim do dia, a ferramenta é só uma ferramenta — o que importa de verdade é colocar sua arte no mundo!

### Por que Godot?

Por que você deveria usar Godot em vez de outra engine? Abaixo, alguns pontos fortes:

#### Leve

A engine não tem nem 1GB! Comparada com a Unity e a Unreal, a Godot é praticamente uma engine portátil. Você pode levar ela num pendrive, se quiser. Além disso, se bobear, roda até no seu micro-ondas. Pra quem tem PC da Xuxa — ou pior, um notebook Positivo — é a melhor escolha.

#### Poderosa

Apesar de ainda não ter sido usada em muitos jogos famosos, a Godot é uma engine muito poderosa! Eu não tenho experiência com Unreal, mas até hoje não encontrei nada que consiga fazer na Unity e que seja impossível na Godot. Talvez, em escala maior (jogos AA ou AAA), a Godot tenha limitações. Mas para projetos simples, indies e estúdios menores, ela é uma excelente escolha.

#### Fácil e Acessível

A Godot tem uma documentação decente e fácil de entender. A interface não é sobrecarregada e você não precisa baixar nada além da engine para começar a fazer seus jogos — ela já vem com um editor de código embutido com tudo que um iniciante precisa.

#### Free Software

A Godot é free software! Se você não está familiarizado com o termo, significa que ela é gratuita para tudo, para sempre. Você nunca vai precisar pagar nada para ninguém, mesmo que seu jogo venda UM ZILHÃO DE CÓPIAS! Tudo que você produz na Godot é seu e está 100% sob seu controle. O que nem sempre é o caso com Unity ou Unreal. Existem outras ferramentas livres úteis no desenvolvimento de jogos, vale a pena pesquisar!

#### Comunidade Grande e Maneira

A comunidade da Godot vem crescendo muito. Isso significa que você vai encontrar muita gente legal para tirar dúvidas, tutoriais bons no YouTube e canais no Discord para trocar ideia com outros nerdolas. Normalmente, quem curte a engine é bem empolgado e feliz em ajudar. Não seja tímide, pode perguntar!

#### Ótima para Composição (não tem a ver com música, lê aí)

Eu abordo isso melhor no vídeo, mas, basicamente, a Godot é feita pensando em composição — um padrão de desenvolvimento no qual você cria **componentes** reutilizáveis em diversas cenas ou outros componentes. Isso deixa seu projeto mais conciso e organizado, sem precisar repetir código ou fazer gambiarra.

Esse padrão é possível em outras engines também, mas acho a Godot perfeita para isso, especialmente por conta de como a hierarquia e as cenas funcionam.

---

## Finalmentes

Agora que você já sabe:

- O que é uma Game Engine
- Por que é uma boa ideia usar uma
- O que considerar ao escolher uma engine
- O que a Godot tem de bom

Se tiver interesse em saber mais sobre a Godot e colocar a mão na massa, só colar no canal do FoG e assistir à aula.
