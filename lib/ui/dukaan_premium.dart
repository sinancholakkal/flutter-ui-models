import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DukaanPremium extends StatefulWidget {
  const DukaanPremium({super.key});

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  final videoUrl = "https://youtu.be/id1E0lqnUtY?si=1uAojthiC2ZcQhJM";
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // AppBAr-------------------------------

          SizedBox(
            height: 250,
            child: AppBar(
              backgroundColor: Colors.indigo,
              iconTheme: const IconThemeData(color: Colors.white),
              title: const Text(
                "Dukaan Premium",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
            ),
          ),

          // Dukaan card----------------

          const Positioned(
            left: 16,
            top: 140,
            child: Card(
              child: SizedBox(
                width: 350,
                height: 230,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 70, top: 20),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn-1.webcatalog.io/catalog/dukaan/dukaan-icon-filled-256.webp?v=1720011496262"),
                          radius: 25,
                        ),
                        title: Text("dukaan"),
                        subtitle: Padding(
                          padding: EdgeInsets.only(left: 42),
                          child: Text(
                            "PREMIUM",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        titleTextStyle: TextStyle(
                            fontSize: 33,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Get Dukaam Premium for just\n\u{20B9}4,999/year",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "All the advanced features for scaling your\nbusiness.",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // List Items---------------------
          Padding(
            padding: const EdgeInsets.only(top: 370),
            child: SizedBox(
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Features",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvPbJrBgLawEa0i4u3tUhRRZmqMN6Wwpu31FW8unggvdx-NTkhYB16KZsdJrRrxTlkVtE&usqp=CAU'),
                      radius: 28,
                    ),
                    title: Text("Custom domain name"),
                    subtitle: Text(
                      "Get your own custom domain and build\nyour brand on the internet",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://play-lh.googleusercontent.com/q7V0wCsJ6YW16DvmkDdNgCDPim3dSB7bfBWBmsa8A7AZOemIbq-Prn403ul2hSpRZ7JT=w240-h480-rw'),
                      radius: 28,
                    ),
                    title: Text("Verifiedd seller badge"),
                    subtitle: Text(
                      "Get green verified badge under your\nstore name and build trust.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://ifoundsolutions.com/wp-content/uploads/2017/04/Icons-for-How-To-Pages-Laptop.png'),
                      radius: 28,
                    ),
                    title: Text("Dukaan for PC"),
                    subtitle: Text(
                      "Access all the exclusive premium\nfeatures on Dukaan for PC",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThOt8hGe_NuwpgDVgxD_duQfL_wb1tNgEAgljUJV2rJc0IU9Bl_MIAIrrkTyIp2SljWsI&usqp=CAU'),
                      radius: 28,
                    ),
                    title: Text("Priarity support"),
                    subtitle: Text(
                      "Get your question resolved with our\npriority customer support",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text(
                      "What is Dukaan Premium?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //You tube video
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: YoutubePlayer(
                      controller: _youtubePlayerController,
                      showVideoProgressIndicator: true,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
