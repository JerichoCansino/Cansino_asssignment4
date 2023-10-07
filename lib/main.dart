import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.orange,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showBio = false;

  void toggleBio() {
    setState(() {
      showBio = !showBio;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstApp'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('lib/assets/me.jpg'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: toggleBio,
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: Text(
                  showBio ? 'VIEW MY BIO' : 'VIEW MY BIO',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              if (showBio)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'I am Jericho Cansino, a 22-year-old student at Pangasinan State University (PSU), pursuing a Bachelor of Science in Information Technology (BSIT). My life revolves around the simplicity of being a student and my love for gaming, travel vlogs, and food vlogs.\n\n'
                    'I am often described as humorous, and I find joy in making people laugh. My friends often say that I have a talent for turning everyday situations into comedic moments. Whether it\'s cracking a joke or sharing funny anecdotes, I believe that laughter is a universal language that brings people together.\n\n'
                    'At PSU, I am an average student, and that is perfectly okay with me. I approach my studies with dedication, even if I am not at the top of my class. My goal is to gain knowledge and skills that will prepare me for a future career in IT. While I may not be the highest achiever academically, I believe that learning is a journey, not a race. Every day, I strive to improve my understanding of the complex world of information technology. I am committed to putting in the effort needed to succeed and to eventually contribute to the IT field.\n\n'
                    'When I\'m not in class or studying, you can often find me immersed in the world of gaming. Gaming is not just a hobby for me; it\'s a passion. I enjoy exploring virtual worlds, solving puzzles, and competing with friends in multiplayer games. Gaming has taught me valuable skills like strategic thinking, teamwork, and problem-solving. These skills are crucial in the gaming world, but they also have real-world applications. My passion for gaming has shaped my creative thinking and enhanced my ability to work effectively in teams.\n\n'
                    'Apart from gaming, I have a keen interest in travel and food. I find myself watching travel vlogs and food documentaries, dreaming of exploring different cuisines and cultures around the world. Traveling allows me to broaden my horizons, experience new things, and meet people from diverse backgrounds. Food, in particular, has a special place in my heart. I love trying new dishes and savoring unique flavors. Whether it\'s street food or fine dining, I appreciate the artistry and creativity that chefs bring to their craft. My fascination with travel and food has inspired me to document my own culinary adventures and share them with others through my own vlogs.\n\n'
                    'Looking ahead, I see a future where I can combine my IT skills, sense of humor, passion for gaming, and love for travel and food. Whether it\'s developing innovative gaming experiences, creating entertaining content, or contributing to technological advancements, I am excited about the possibilities that lie ahead. My journey as a student is just the beginning, and I eagerly anticipate the adventures and challenges that await me.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
