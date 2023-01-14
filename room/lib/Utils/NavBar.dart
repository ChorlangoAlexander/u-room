import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    //User? user = FirebaseAuth.instance.currentUser;
    return Drawer(
        //     child: ListView(
        //       padding: EdgeInsets.zero,
        //       children: [
        //         UserAccountsDrawerHeader(
        //           margin: EdgeInsets.all(0),
        //           accountName:
        //               Text('ejemplo'),
        //           /*(user!.displayName!),
        //           'Alexander Ruben',
        //             style: TextStyle(color: Colors.black, fontSize: 20),*/

        //           accountEmail: Text('ejemplo@ejemplo.com'),
        //           /*(user.email!),
        //           'alexander.chorlango@upec.edu.ec',
        //             style: TextStyle(
        //               color: Colors.black,
        //             ),*/

        //           currentAccountPicture: CircleAvatar(
        //             child: ClipOval(
        //               child: Image.network(
        //                 // user.photoURL!,
        //                 'https://static.vecteezy.com/system/resources/previews/005/005/788/original/user-icon-in-trendy-flat-style-isolated-on-grey-background-user-symbol-for-your-web-site-design-logo-app-ui-illustration-eps10-free-vector.jpg',
        //                 width: 90,
        //                 height: 90,
        //                 fit: BoxFit.cover,
        //               ),
        //             ),
        //           ),
        //           decoration: BoxDecoration(

        //               //color: Colors.red,

        //               image: DecorationImage(
        //             image: AssetImage(
        //               'assets/login.jpg',
        //               //'https://media.istockphoto.com/photos/travel-planning-background-picture-id1309040743?b=1&k=20&m=1309040743&s=170667a&w=0&h=eyIzT1oSW2B5gPMPqgybEseIYIUrY96cxPTE_B0ewVs=',
        //             ),
        //           )),
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.person),
        //           title: Text('Perfil'),
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => ProfileTrips()),
        //             );
        //           },
        //         ),
        //         ListTile(
        //           leading: Icon(Icons.list_alt_rounded),
        //           title: Text('Inventario'),
        //           onTap: () {
        //             /* Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => InventarioScreen(),
        //               ),
        //             );,*/

        //           },
        //         ),
        //         // ListTile(
        //         //   leading: Icon(Icons.favorite),
        //         //   title: Text('Favoritos'),
        //         //   onTap: () {},
        //         // ),
        //         ListTile(
        //           leading: Icon(Icons.logout),
        //           title: Text('Salir'),
        //           onTap: () {
        //             Navigator.push(context,
        //                 MaterialPageRoute(builder: (context) => LoginScreen()));
        //           },
        //         ),
        //       ],
        //     ),
        //   );
        // }
        );
  }
}
