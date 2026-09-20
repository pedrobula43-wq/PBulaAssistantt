import 'package:flutter/material.dart';

void main() {
  runApp(const PBulaApp());
}

class PBulaApp extends StatefulWidget {
  const PBulaApp({super.key});

  @override
  State<PBulaApp> createState() => _PBulaAppState();
}

class _PBulaAppState extends State<PBulaApp> {
  ThemeMode themeMode = ThemeMode.dark;
  String language = 'pt-AO';

  void setLanguage(String value) => setState(() => language = value);
  void toggleTheme(bool dark) =>
      setState(() => themeMode = dark ? ThemeMode.dark : ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PBulaAssistantt',
      themeMode: themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5B2BE0)),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6D35E8),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF080A18),
        useMaterial3: true,
      ),
      home: AuthPage(
        language: language,
        onLanguageChanged: setLanguage,
        onThemeChanged: toggleTheme,
      ),
    );
  }
}

class T {
  static const Map<String, Map<String, String>> data = {
    'pt-AO': {
      'welcome': 'Bem-vindo ao PBulaAssistantt',
      'subtitle': 'Seu assistente inteligente multilíngue',
      'email': 'E-mail',
      'password': 'Senha',
      'login': 'Entrar',
      'register': 'Criar conta',
      'noAccount': 'Não tens uma conta?',
      'hasAccount': 'Já tens uma conta?',
      'chat': 'Chat',
      'history': 'Histórico',
      'profile': 'Perfil',
      'settings': 'Definições',
      'newChat': 'Nova conversa',
      'type': 'Digite sua mensagem...',
      'hello': 'Olá! 👋 Como posso ajudar hoje?',
      'demo': 'Esta é uma versão inicial do PBulaAssistantt. A ligação a um provedor de IA pode ser adicionada no backend.',
      'language': 'Idioma',
      'theme': 'Tema escuro',
      'about': 'Sobre o PBulaAssistantt',
      'logout': 'Sair',
    },
    'pt-BR': {
      'welcome': 'Bem-vindo ao PBulaAssistantt',
      'subtitle': 'Seu assistente inteligente multilíngue',
      'email': 'E-mail',
      'password': 'Senha',
      'login': 'Entrar',
      'register': 'Criar conta',
      'noAccount': 'Ainda não tem uma conta?',
      'hasAccount': 'Já tem uma conta?',
      'chat': 'Chat',
      'history': 'Histórico',
      'profile': 'Perfil',
      'settings': 'Configurações',
      'newChat': 'Nova conversa',
      'type': 'Digite sua mensagem...',
      'hello': 'Olá! 👋 Como posso ajudar hoje?',
      'demo': 'Esta é uma versão inicial do PBulaAssistantt. A ligação a um provedor de IA pode ser adicionada no backend.',
      'language': 'Idioma',
      'theme': 'Tema escuro',
      'about': 'Sobre o PBulaAssistantt',
      'logout': 'Sair',
    },
    'pt-PT': {
      'welcome': 'Bem-vindo ao PBulaAssistantt',
      'subtitle': 'O seu assistente inteligente multilingue',
      'email': 'E-mail',
      'password': 'Palavra-passe',
      'login': 'Entrar',
      'register': 'Criar conta',
      'noAccount': 'Ainda não tem uma conta?',
      'hasAccount': 'Já tem uma conta?',
      'chat': 'Conversa',
      'history': 'Histórico',
      'profile': 'Perfil',
      'settings': 'Definições',
      'newChat': 'Nova conversa',
      'type': 'Escreva a sua mensagem...',
      'hello': 'Olá! 👋 Como posso ajudar hoje?',
      'demo': 'Esta é uma versão inicial do PBulaAssistantt. A ligação a um provedor de IA pode ser adicionada no backend.',
      'language': 'Idioma',
      'theme': 'Tema escuro',
      'about': 'Sobre o PBulaAssistantt',
      'logout': 'Sair',
    },
    'en': {
      'welcome': 'Welcome to PBulaAssistantt',
      'subtitle': 'Your multilingual intelligent assistant',
      'email': 'Email',
      'password': 'Password',
      'login': 'Sign in',
      'register': 'Create account',
      'noAccount': "Don't have an account?",
      'hasAccount': 'Already have an account?',
      'chat': 'Chat',
      'history': 'History',
      'profile': 'Profile',
      'settings': 'Settings',
      'newChat': 'New chat',
      'type': 'Type your message...',
      'hello': 'Hello! 👋 How can I help today?',
      'demo': 'This is an initial PBula version. An AI provider can be connected through the backend.',
      'language': 'Language',
      'theme': 'Dark theme',
      'about': 'About PBula',
      'logout': 'Log out',
    },
    'fr': {
      'welcome': 'Bienvenue sur PBulaAssistantt',
      'subtitle': 'Votre assistant intelligent multilingue',
      'email': 'E-mail',
      'password': 'Mot de passe',
      'login': 'Se connecter',
      'register': 'Créer un compte',
      'noAccount': 'Vous n’avez pas de compte ?',
      'hasAccount': 'Vous avez déjà un compte ?',
      'chat': 'Discussion',
      'history': 'Historique',
      'profile': 'Profil',
      'settings': 'Paramètres',
      'newChat': 'Nouvelle discussion',
      'type': 'Écrivez votre message...',
      'hello': 'Bonjour ! 👋 Comment puis-je vous aider ?',
      'demo': 'Ceci est une première version de PBula. Un fournisseur d’IA peut être connecté via le backend.',
      'language': 'Langue',
      'theme': 'Thème sombre',
      'about': 'À propos de PBula',
      'logout': 'Se déconnecter',
    },
    'es': {
      'welcome': 'Bienvenido a PBulaAssistantt',
      'subtitle': 'Tu asistente inteligente multilingüe',
      'email': 'Correo electrónico',
      'password': 'Contraseña',
      'login': 'Entrar',
      'register': 'Crear cuenta',
      'noAccount': '¿No tienes una cuenta?',
      'hasAccount': '¿Ya tienes una cuenta?',
      'chat': 'Chat',
      'history': 'Historial',
      'profile': 'Perfil',
      'settings': 'Ajustes',
      'newChat': 'Nueva conversación',
      'type': 'Escribe tu mensaje...',
      'hello': '¡Hola! 👋 ¿Cómo puedo ayudarte hoy?',
      'demo': 'Esta es una versión inicial de PBula. Un proveedor de IA puede conectarse mediante el backend.',
      'language': 'Idioma',
      'theme': 'Tema oscuro',
      'about': 'Acerca de PBulaAssistantt',
      'logout': 'Cerrar sesión',
    },
  };

  static String get(String lang, String key) =>
      data[lang]?[key] ?? data['pt-AO']![key] ?? key;
}

class AuthPage extends StatefulWidget {
  final String language;
  final ValueChanged<String> onLanguageChanged;
  final void Function(bool) onThemeChanged;

  const AuthPage({
    super.key,
    required this.language,
    required this.onLanguageChanged,
    required this.onThemeChanged,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool register = false;
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final c = Theme.of(context).colorScheme;
    final lang = widget.language;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(
                      'assets/pbula_logo.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    T.get(lang, 'welcome'),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    T.get(lang, 'subtitle'),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: c.onSurfaceVariant),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: T.get(lang, 'email'),
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 14),
                  TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: T.get(lang, 'password'),
                      prefixIcon: const Icon(Icons.lock_outline),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(
                              language: lang,
                              onLanguageChanged: widget.onLanguageChanged,
                              onThemeChanged: widget.onThemeChanged,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        register
                            ? T.get(lang, 'register')
                            : T.get(lang, 'login'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () => setState(() => register = !register),
                    child: Text(
                      register
                          ? T.get(lang, 'hasAccount')
                          : T.get(lang, 'noAccount'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  DropdownButton<String>(
                    value: lang,
                    items: const [
                      DropdownMenuItem(value: 'pt-AO', child: Text('🇦🇴 Português (AO)')),
                      DropdownMenuItem(value: 'pt-BR', child: Text('🇧🇷 Português (BR)')),
                      DropdownMenuItem(value: 'pt-PT', child: Text('🇵🇹 Português (PT)')),
                      DropdownMenuItem(value: 'en', child: Text('🇬🇧 English')),
                      DropdownMenuItem(value: 'fr', child: Text('🇫🇷 Français')),
                      DropdownMenuItem(value: 'es', child: Text('🇪🇸 Español')),
                    ],
                    onChanged: (v) {
                      if (v != null) widget.onLanguageChanged(v);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final String language;
  final ValueChanged<String> onLanguageChanged;
  final void Function(bool) onThemeChanged;

  const HomePage({
    super.key,
    required this.language,
    required this.onLanguageChanged,
    required this.onThemeChanged,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final List<Map<String, String>> messages = [];
  final input = TextEditingController();

  @override
  void initState() {
    super.initState();
    messages.add({
      'role': 'assistant',
      'text': T.get(widget.language, 'hello'),
    });
  }

  void send() {
    final text = input.text.trim();
    if (text.isEmpty) return;
    setState(() {
      messages.add({'role': 'user', 'text': text});
      messages.add({
        'role': 'assistant',
        'text': T.get(widget.language, 'demo'),
      });
      input.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final lang = widget.language;
    final pages = [
      _chat(lang),
      _history(lang),
      _profile(lang),
      _settings(lang),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/pbula_logo.jpg', width: 36, height: 36),
            const SizedBox(width: 10),
            const Text('PBula', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) => setState(() => index = i),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.chat_bubble_outline),
            selectedIcon: const Icon(Icons.chat_bubble),
            label: T.get(lang, 'chat'),
          ),
          NavigationDestination(
            icon: const Icon(Icons.history),
            label: T.get(lang, 'history'),
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            label: T.get(lang, 'profile'),
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            label: T.get(lang, 'settings'),
          ),
        ],
      ),
    );
  }

  Widget _chat(String lang) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: messages.length,
            itemBuilder: (_, i) {
              final m = messages[i];
              final user = m['role'] == 'user';
              return Align(
                alignment: user ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 330),
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: user
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(m['text'] ?? ''),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: input,
                  onSubmitted: (_) => send(),
                  decoration: InputDecoration(
                    hintText: T.get(lang, 'type'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              FloatingActionButton.small(
                onPressed: send,
                child: const Icon(Icons.send),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _history(String lang) {
    final examples = [
      'Processamento de gás natural',
      'Diferença entre petróleo e gás',
      'Geração de energia',
      'Como estudar melhor?',
    ];
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          T.get(lang, 'history'),
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        for (final item in examples)
          Card(
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.chat_outlined)),
              title: Text(item),
              subtitle: const Text('Conversa PBula'),
              onTap: () => setState(() => index = 0),
            ),
          ),
      ],
    );
  }

  Widget _profile(String lang) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Center(
          child: CircleAvatar(
            radius: 52,
            backgroundImage: const AssetImage('assets/pbula_logo.jpg'),
          ),
        ),
        const SizedBox(height: 18),
        const Center(
          child: Text(
            'Utilizador PBula',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 6),
        const Center(child: Text('Conta local de demonstração')),
        const SizedBox(height: 30),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Nome',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 14),
        const TextField(
          decoration: InputDecoration(
            labelText: 'E-mail',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _settings(String lang) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          T.get(lang, 'settings'),
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 18),
        ListTile(
          leading: const Icon(Icons.language),
          title: Text(T.get(lang, 'language')),
          subtitle: Text(lang),
          trailing: DropdownButton<String>(
            value: lang,
            underline: const SizedBox(),
            items: const [
              DropdownMenuItem(value: 'pt-AO', child: Text('🇦🇴')),
              DropdownMenuItem(value: 'pt-BR', child: Text('🇧🇷')),
              DropdownMenuItem(value: 'pt-PT', child: Text('🇵🇹')),
              DropdownMenuItem(value: 'en', child: Text('🇬🇧')),
              DropdownMenuItem(value: 'fr', child: Text('🇫🇷')),
              DropdownMenuItem(value: 'es', child: Text('🇪🇸')),
            ],
            onChanged: (v) {
              if (v != null) {
                widget.onLanguageChanged(v);
                setState(() {});
              }
            },
          ),
        ),
        SwitchListTile(
          secondary: const Icon(Icons.dark_mode_outlined),
          title: Text(T.get(lang, 'theme')),
          value: Theme.of(context).brightness == Brightness.dark,
          onChanged: widget.onThemeChanged,
        ),
        ListTile(
          leading: const Icon(Icons.info_outline),
          title: Text(T.get(lang, 'about')),
          subtitle: const Text('PBula 1.0.0'),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: Text(T.get(lang, 'logout')),
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => AuthPage(
                language: lang,
                onLanguageChanged: widget.onLanguageChanged,
                onThemeChanged: widget.onThemeChanged,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
