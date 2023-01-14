import 'package:flutter/material.dart';
import 'package:room/Screens/LoginAnfitrion.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //         'https://img.freepik.com/vector-gratis/fondo-plano-aventura-montanas_23-2149045825.jpg?w=826&t=st=1660712180~exp=1660712780~hmac=322deec071fb0aeed5310929d899b331b23c7d049a0cfb4734918940e690ca06'),
        //     fit: BoxFit.cover,
        //     colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child
              //blogSnapshot != null
              //     ? blogsList()
              : Container(
                  child: Center(
            child: CircularProgressIndicator(),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginAnfitrion()));
        },
      ),
    );
  }
}

Widget buildImage(String cardImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        width: 200.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
            cardImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );

class BlogTile extends StatelessWidget {
  final String imgUrl, title, desc, author;
  BlogTile(
      {required this.author,
      required this.desc,
      required this.imgUrl,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                // child: Center(
                //   child: Text(
                //     'Comparte Tus Viajes',
                //     style: TextStyle(fontSize: 25, color: Colors.grey),
                //   ),
                // ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.black.withOpacity(0.70),
              child: ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '$desc - By $author',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: 16)),
          // Text(
          //   title,
          //   style: TextStyle(fontSize: 17),
          // ),
          // SizedBox(height: 2),
          // Text(
          //   '$desc - By $author',
          //   style: TextStyle(fontSize: 14),
          // )
        ],
      ),
    );
  }

  Widget _swiper() {
    return Container();
  }
}
