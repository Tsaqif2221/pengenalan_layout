import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apip"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green, Colors.blue])),
        ),
        actions: [
          Icon(Icons.share),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Info()));
              },
              icon: Icon(Icons.info)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/gambar.png",
              width: 200,
              height: 200,
            ),
            Text(
              "Running Activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text("Tsaqif Afif"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.book,
                  size: 50,
                ),
                Icon(
                  Icons.share,
                  size: 50,
                ),
                Icon(
                  Icons.people,
                  size: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: [Colors.blue, Colors.green],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Running",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  "Tsaqif Afif",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text(
            "41",
          ),
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: LinearGradientMask(
              child: Icon(icon, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue),
            ),
          )
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;
    Widget buttonsection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, "call"),
        _buildButtonColumn(color, Icons.near_me, "Route"),
        _buildButtonColumn(color, Icons.share, "share")
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot.Running is a type of gait characterized by an aerial phase in which all feet are above the ground (though there are exceptions).This is in contrast to walking, where one foot is always in contact with the ground, the legs are kept mostly straight and the center of gravity vaults over the stance leg or legs in an inverted pendulum fashion. A feature of a running body from the viewpoint of spring-mass mechanics is that changes in kinetic and potential energy within a stride co-occur, with energy storage accomplished by springy tendons and passive muscle elasticity. The term running can refer to any of a variety of speeds ranging from jogging to sprinting.Running in humans is associated with improved health and life expectancy.It is hypothesized that the ancestors of humankind developed the ability to run for long distances about 2.6 million years ago, probably to hunt animals. Competitive running grew out of religious festivals in various areas. Records of competitive racing date back to the Tailteann Games in Ireland between 632 BCE and 1171 BCE, while the first recorded Olympic Games took place in 776 BCE. Running has been described as the world's most accessible sport.",
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.green, Colors.blue]),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/pixel.jpg",
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonsection,
            textSection,
          ],
        ),
      ),
    );
  }
}
