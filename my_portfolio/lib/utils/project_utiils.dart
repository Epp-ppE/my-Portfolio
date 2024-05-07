class ProjectUtils{
  final String image;
  final String title;
  final String subtitle;
  final String? url;
  final String? githubUrl;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.url,
    required this.githubUrl,

  });
}

List<ProjectUtils> teamProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/SEweb.png', 
    title: 'KMITL Software Engineering Website(Not official)', 
    subtitle: """A Featureful website for KMITL Software Engineering students that includes Assignment&Submission,Grade Checking,Meeting Rooms and User Customization.""", 
    url: 'https://seweb.kasitphoom.com',
    githubUrl: 'https://github.com/Kasitphoom/SEWeb'
  ),
  ProjectUtils(
    image: 'assets/projects/smartwallet.png', 
    title: 'Smart Wallet Banking application', 
    subtitle: """Smart Wallet is a mobile banking app help users  manage finances securely, addressing challenges like expense tracking and budget maintenance. It offers a user-friendly interface and strong features to refine financial management.""", 
    url: null,
    githubUrl: 'https://github.com/Kasitphoom/SmartWallet'
  ),
  ProjectUtils(
    image: 'assets/projects/vibinStudio.png', 
    title: 'Simple Pong Game',
    subtitle: """Vibin Studio is a user-friendly software for playing and managing music on computers, offering diverse features like audio format support, playlist management, playback controls, and customizable audio effects.""", 
    url: null,
    githubUrl: 'https://github.com/Kasitphoom/Audio_EQ'
  ),
];

List<ProjectUtils> singleProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/javaChess.png', 
    title: 'Chess Game in Java', 
    subtitle: """A chess game made in Java with GUI, it has all the basic rules of chess and can be played by 2 players.""", 
    url: null,
    githubUrl: 'https://github.com/Epp-ppE/Chess-Java'
  ),
  ProjectUtils(
    image: 'assets/projects/pong.png', 
    title: 'Simple Pong Game',
    subtitle: """A simple pong game made in Python with Pygame, it can be played by 2 players. or 1 player against AI""", 
    url: null,
    githubUrl: 'https://github.com/Epp-ppE/SimplePongGame'
  ),
];