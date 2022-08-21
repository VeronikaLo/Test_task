import 'package:flutter/material.dart';
import '../data/colors.dart';


class MenuPage extends StatelessWidget {
  const MenuPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: menuBg,
      body: SizedBox(
        width:165,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/home") ,
              child: Container(
                  height: 40,
                  padding: const EdgeInsets.only(left:25),
                  decoration:  const BoxDecoration(
                    borderRadius:  BorderRadius.only(topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white,              
                  ),
                  child: Row(children:  [
                    Image.asset('assets/icons/home.png', width: 16,),
                    const SizedBox(width: 20,),
                    Text("Home", style: TextStyle(fontSize: 16, color: menuBg, fontWeight: FontWeight.w500)),
                  ]),
                ),
            ),

            const SizedBox(height: 15,),
            const MenuItem(
              title: 'Profile',
              icon: 'assets/icons/profile.png',
            ),
            const SizedBox(height: 15,),
            const MenuItem(
              title: 'Nearby',
              icon: 'assets/icons/nearby.png',
            ),

            SizedBox( height: 40, child: Divider(color: divider, thickness: 1,)),

            const MenuItem(
              title: 'Bookmark',
              icon: 'assets/icons/bookmark.png',
            ),
            const SizedBox(height: 15,),
            const MenuItem(
              title: 'Notification',
              icon: 'assets/icons/notification.png',
            ),
            const SizedBox(height: 15,),
            const MenuItem(
              title: 'Message',
              icon: 'assets/icons/message.png',
            ),
            
            SizedBox( height: 40, child: Divider(color: divider, thickness: 1,)),

            const MenuItem(
              title: 'Setting',
              icon: 'assets/icons/setting.png',
            ),
            const SizedBox(height: 15,),
            const MenuItem(
              title: 'Help',
              icon: 'assets/icons/help.png',
            ),
            const SizedBox(height: 15,),
            const MenuItem(
              title: 'Logout',
              icon: 'assets/icons/logout.png',
            ),
          ],
        ), 
        
      ),
    );
  }
}



//MenuItem:

class MenuItem  extends StatelessWidget {
  const MenuItem({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left:25),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
      color: menuBg,              
      ),
      
      child: Row(children: [
        Image.asset(icon, width: 16,),
        const SizedBox(width: 20,),
        Text(title, style: const TextStyle(fontSize: 16, color: Colors.white,)),
      ]),
    );
  }
}