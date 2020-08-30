import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        appBar: AppBar(
            title: Text('Home'),
            centerTitle: true,
            backgroundColor: Colors.indigo[700],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    promoCard(
                        'assets/one.jpg', 'Dhol Baje', 'KMC Green', 'ghgj'),
                    promoCard('assets/two.jpg', 'DiwaliCeleb', 'Hockey Ground',
                        'hhg'),
                    promoCard(
                        'assets/one.jpg', 'Dhol Baje', 'KMC Green', 'gfh'),
                    promoCard('assets/two.jpg', 'DiwaliCeleb',
                        'Football Ground', 'hg'),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 3.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 155,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue[400],
                        image: DecorationImage(
                            image: AssetImage('assets/places.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120.0, left: 15.0),
                        child: Text(
                          "Places to visit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 155,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue[400],
                        image: DecorationImage(
                            image: AssetImage('assets/cab.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120.0, left: 15.0),
                        child: Text(
                          "Cab Share",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 3.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 155,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blue[400],
                        image: DecorationImage(
                            image: AssetImage('assets/chat.png'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.darken)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120.0, left: 15.0),
                        child: Text(
                          "Community Chat",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 155,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue[400],
                          image: DecorationImage(
                              image: AssetImage('assets/places.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3.0,
                                blurRadius: 5.0)
                          ],
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 120.0, left: 15.0),
                          child: Text(
                            "Places to visit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(
      String image, String event, String description, String desc) {
    return AspectRatio(
        aspectRatio: 5.5 / 3,
        child: Stack(
          children: <Widget>[
            Container(height: 300.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 300.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken))),
              ),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 120.0),
                  child: Text(
                    'Coming Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, top: 80.0),
                      child: Text(event,
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0, top: 90.0),
                          child: Text(description,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0, top: 10),
                          child: Text(desc,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ))
          ],
        ));
  }
}
