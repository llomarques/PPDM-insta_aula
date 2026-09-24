# Instagram Aula

Este projeto é uma aplicação mobile desenvolvida em Flutter, inspirada na interface do Instagram, com foco em aprendizado de navegação, layouts, componentes visuais e organização de telas em um app simples.

## Visão geral

A aplicação possui:

- Tela de login com campos de usuário e senha
- Botão para alternar visibilidade da senha
- Navegação por abas inferiores
- Telas de feed, busca, reels e perfil
- Estrutura modular em páginas, widgets e utilitários

O objetivo principal é servir como exemplo didático para quem está começando com Flutter e quer entender como montar uma interface semelhante a uma rede social.

---

## Tecnologias

- Flutter
- Dart
- Material Design

---

## Estrutura do projeto

```bash
instagram_aula/
├── android/                 # Projeto Android
├── build/                   # Arquivos gerados pela build do Flutter
├── lib/
│   ├── app.dart             # Configuração principal do app
│   ├── main.dart            # Ponto de entrada da aplicação
│   ├── pages/               # Telas do app
│   │   ├── login_page.dart
│   │   ├── home_page.dart
│   │   ├── feed_page.dart
│   │   ├── buscar_page.dart
│   │   ├── reels_page.dart
│   │   └── perfil_page.dart
│   ├── utils/
│   │   └── mensagem_util.dart
│   └── widgets/
│       ├── botao_Reel.dart
│       ├── numero_perfil.dart
│       ├── post_instagram.dart
│       └── stories.dart
├── web/                     # Projeto web (opcional)
├── windows/                 # Projeto Windows
├── analysis_options.yaml    # Regras de lint
├── pubspec.yaml             # Dependências e configuração do projeto
├── README.md                # Documentação do projeto
└── .gitignore               # Arquivos ignorados pelo Git
```

---

## Principais arquivos

### main.dart
É o ponto de entrada do aplicativo. Ele inicializa a aplicação chamando o widget principal.

### app.dart
Define o tema do app e a tela inicial, que no caso é a página de login.

### pages/login_page.dart
Responsável por:

- capturar usuário e senha
- validar se os campos estão vazios
- mostrar mensagem de alerta
- navegar para a tela principal após o login

### pages/home_page.dart
Controla a navegação inferior do app usando `IndexedStack` e `NavigationBar`.

### pages/feed_page.dart
Exibe a timeline principal, geralmente utilizada para mostrar postagens.

### pages/buscar_page.dart
Tela para busca ou descoberta de conteúdo.

### pages/reels_page.dart
Tela de vídeos curtos, inspirada no recurso Reels.

### pages/perfil_page.dart
Tela de perfil do usuário.

### utils/mensagem_util.dart
Arquivo utilitário para exibir mensagens ao usuário.

---

## Como executar o projeto

Antes de iniciar, certifique-se de que o Flutter SDK está instalado no ambiente.

### 1. Instale as dependências

```bash
flutter pub get
```

### 2. Execute o aplicativo

```bash
flutter run
```

Se quiser abrir em um dispositivo específico, pode usar:

```bash
flutter devices
flutter run -d <device_id>
```

---

## Como funciona a navegação

A aplicação começa na tela de login. Ao clicar em "Entrar", o código dispara a navegação para a home do app:

- Login -> Home
- Home -> Feed / Buscar / Reels / Perfil

A navegação inferior é gerenciada por `NavigationBar`, permitindo alternar entre as telas sem sair da estrutura principal da aplicação.

---

## Observações didáticas

Este projeto é um exemplo de aprendizado e ainda pode ser melhorado com:

- autenticação real com Firebase ou backend
- persistência de dados
- integração com imagens e vídeos
- organização por camadas MVC/MVVM
- uso de widgets reutilizáveis e componentes mais sofisticados

Além disso, a lógica de login atualmente valida apenas se os campos estão vazios. A navegação acontece mesmo sem autenticação real, o que é adequado para um projeto didático.

---

## Dicas para continuar aprendendo

- Explore a documentação oficial do Flutter: https://docs.flutter.dev
- Entenda melhor a diferença entre `StatelessWidget` e `StatefulWidget`
- Pratique a criação de componentes reutilizáveis em `lib/widgets`
- Estude navegação, layouts responsivos e temas no Material Design

---

## Conclusão

Este app é uma base excelente para aprender Flutter com foco em interface mobile e organização de projeto. Com ele, é possível praticar conceitos de layout, navegação e estrutura de arquivos em aplicações reais.

Se você quiser evoluir o projeto, os próximos passos podem ser:

- implementar Firebase Authentication
- criar feed com dados dinâmicos
- adicionar stories e cards de posts
- melhorar a estética com tema personalizado

---

## Autor

Projeto desenvolvido para fins didáticos de estudo em Flutter.
