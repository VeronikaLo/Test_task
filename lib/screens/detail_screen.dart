import 'package:flutter/material.dart';
import '../data/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 24, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                House(),
                SizedBox(
                  height: 15,
                ),
                Description(),
                SizedBox(
                  height: 5,
                ),
                OwnerInfo(),
                SizedBox(
                  height: 40,
                ),
                Gallery(),
                SizedBox(
                  height: 20,
                ),
                Map(),
                SizedBox(height: 20,)

            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// House section
class House extends StatelessWidget {
  const House({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 304,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/dream_house2.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      Container(
        height: 304,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            colors: [iconGradient2, iconGradient1],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
      
      Container(  //icons top
        height: 34,
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 34,
              decoration: BoxDecoration(
                color: iconTop,
                shape: BoxShape.circle,
              ) ,
              child: TextButton(
                onPressed: () { Navigator.pop(context);  },
                child: Image.asset('assets/icons/back.png'),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),),
            ),
            Container(
              width: 34,
              decoration: BoxDecoration(
                color: iconTop,
                shape: BoxShape.circle,
              ) ,
              child: TextButton(
                onPressed: () {  },
                child: Image.asset('assets/icons/bookmark.png'),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),),
            ),
        ]),
      ),
      Container(  
            height: 97,
            margin: const EdgeInsets.only(top: 190, left: 20 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dreamsville House",
                  style: TextStyle(
                      fontSize: 19, color: white, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text("Jl. Sultan Iskandar Muda, Jakarta selalan",
                    style: TextStyle(
                      fontSize: 12,
                      color: white,
                    )),
                const SizedBox(
                  height: 16,
                ),

                Row( //bedroom icon + info
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      child: Image.asset('assets/icons/bedroom_white.png'),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(5),
                        color: iconDown,
                      ),
                    ),
                    const SizedBox(width: 12,),
                    Text("6 Bedroom", style: TextStyle( fontSize: 12, color: iconDownFont) ),
                    const SizedBox(width: 32),

                    Container(//bathroom icon + info
                      width: 28,
                      height: 28,
                      child: Image.asset('assets/icons/bathroom_white.png'),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(5),
                        color: iconDown,
                      ),
                    ),
                    const SizedBox(width: 12,),
                    Text("4 Bathroom", style: TextStyle( fontSize: 12, color: iconDownFont) ),
                  ],
                ),

              ],
            ),
          ),
      
    ]);
  }
}

//Description section:

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            text:
                'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... ',
            style: TextStyle(
                fontSize: 12, color: grey, fontFamily: 'Raleway', height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'Show More ',
                  style: TextStyle(fontSize: 12, color: menuBg)),
            ],
          ),
        )
      ],
    );
  }
}

//Owner information section

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
        leading: CircleAvatar(
          child: Image.asset("assets/images/owner.png"),
          backgroundColor: ownerAvatarBg,
        ),
        title: const Text(
          "Garry Allen",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Owner",
          style: TextStyle(fontSize: 12, color: grey),
        ),
        trailing: SizedBox(
          width: 72,
          child: Row(children: [
            Container(
              width: 28,
              height: 28,
              child: Image.asset(
                "assets/icons/phone.png",
                width: 40,
                height: 40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: iconBg,
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 28,
              height: 28,
              child: Image.asset("assets/icons/message_white.png"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: iconBg,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

// Gallery section:

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Gallery",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const GaleryItem(image: "assets/images/item1.png"),
            const GaleryItem(image: "assets/images/item2.png"),
            const GaleryItem(image: "assets/images/item3.png"),

            //chosen Item:
            Stack(
              children: [
                SizedBox(
                  width: 72,
                  height: 72,
                  child: ClipRRect(
                    child: Image.asset("assets/images/item4.png"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: filterColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 72,
                  width: 72,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "+5",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class GaleryItem extends StatelessWidget {
  const GaleryItem({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 72,
      child: ClipRRect(
        child: Image.asset(image),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}


//Map section

class Map extends StatelessWidget {
  const Map({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/maap.png"),
                      fit: BoxFit.cover,  ),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                    colors: [white, whiteGradient],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,),  
                  ),
                ),

                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                    colors: [white, whiteGradient],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,),  
                  ),
                ),

                Container(
                  height: 43,
                  margin: const EdgeInsets.only(top: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price", style: TextStyle(fontSize: 12, color: grey,),),
                        const Text("Rp. 2.500.000.000 / Year", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
                      ],
                    ),
                    Container( 
                            height: 43,
                            width: 122,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [menuBg, gradient],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                ),
                              borderRadius:  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: const <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(16, 142, 233, 0.57),
                              blurRadius: 3,
                              offset: Offset(1, 3),)
                        ],
                              color: menuBg,
                            ),
                            child: ElevatedButton(
                              onPressed: null,
                              child:  Text("Rent Now", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: white ) ),
                              style: ElevatedButton.styleFrom(
                        elevation: 2,
                        shadowColor: buttonShadow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                              ),
                          )
                  
                  ]),
                ),
              ],
            );
  }
}
