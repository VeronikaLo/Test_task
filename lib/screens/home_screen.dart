import 'package:flutter/material.dart';
import '../data/colors.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  SafeArea(child: Container(
      padding: const EdgeInsets.only(left: 20, top: 24, ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            LocationSection(),
            SearchSection(),
            FiltersList(),
            HeadlineSection(title: "Near from you"),
            HousesGallery(),
            HeadlineSection(title: "Best for you"),
            HouseCardList(),
          ],
        ),
      ),
    ),),
    );
  }
}







// Location section:

class LocationSection extends StatelessWidget {
  const LocationSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.only(right: 5 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Location", style: TextStyle(fontSize: 12, color: grey ),),
            Expanded(  //Dropdown, only for demonstration!
              child: DropdownButton(
              value: "Jakarta" ,
              icon: Image.asset("assets/icons/down.png"),
              items: <String>["Jakarta", "Berlin", "Paris"].map(( String value) => DropdownMenuItem(
                child: Row(
                  children: [
                    Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black) ),
                    const SizedBox(width: 11,)],),
                value: value,
              )).toList(),
              onChanged: null,
              underline: Container(),),
            ), 
          ],),
          
          Stack(
            children:[
              IconButton(
              iconSize: 16,
              icon: Image.asset("assets/icons/notification_black.png"),
              onPressed: () {},
            ),
            Positioned(
              top: 13,
              left: 25,
              child: Container(
                padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: notification),)),
            ], 
          ),
      ]) ,
    );
  }
}

// Search section:

class SearchSection extends StatelessWidget {
  const SearchSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(  //Searchfield
              width: 280,
              height: 48,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: lightGrey,),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Image.asset("assets/icons/search.png"),
                  hintText: "Search address, or near you" ,
                  hintStyle: const TextStyle(fontSize: 12,),
                ),
              ) ,),
          ),
          Container(  //Button - filter
            width: 48,
            height: 48,
            margin: const EdgeInsets.only(left: 8, right: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [menuBg, gradient],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                ),
              borderRadius:  const BorderRadius.all(Radius.circular(10)),
              color: menuBg,
            ),
            child: ElevatedButton(
              onPressed: null,
              child: Image.asset("assets/icons/filter.png", width: 16,),
              style: ElevatedButton.styleFrom(
                        primary:  Colors.transparent,
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
              ),
          ),
        ]) ,
    );
  }
} 


// Filters section

class FiltersList extends StatelessWidget {
  const FiltersList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          
          // pressed Button:
          PressedFilterButton(),
          SizedBox(width: 12,),
          FilterItem(title:"Appartment"),
          SizedBox(width: 12,),
          FilterItem(title:"Hotel"),
          SizedBox(width: 12,),
          FilterItem(title:"Villa"),
          SizedBox(width: 12,),
          FilterItem(title:"Apps"),
          
        ],
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem ({ Key? key, required this.title }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ElevatedButton(
      child: Text(title, style:  TextStyle(fontSize: 12, color: grey),),
      style: ElevatedButton.styleFrom(
        primary: lightGrey,
        elevation: 0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
    onPressed: () {},
  ),
    );
  }
}


class PressedFilterButton extends StatelessWidget {
  const PressedFilterButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
            height: 48,
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
              child:  Text("House", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: white ) ),
              style: ElevatedButton.styleFrom(
                        //primary:  Colors.transparent,
                        elevation: 0.0,
                        shadowColor: buttonShadow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
              ),
          );
  }
}


// Headline section

class HeadlineSection extends StatelessWidget {
  const HeadlineSection({ Key? key, required this.title }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        TextButton(
          onPressed: (){},
          child:  Text("See more", style: TextStyle(fontSize: 12, color: grey)),)
      ]),
    );
  }
}

//Houses section:

class House extends StatelessWidget {
  const House ({ Key? key, required this.title, required this.location, required this.onMap, required this.image   }) : super(key: key);

  final String title;
  final String location;
  final String onMap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, "/details_screen"),
      child: Stack(
        children: [ 
          Container(
          width: 222,
          height: 272,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,  ),
            borderRadius: const BorderRadius.all(Radius.circular(20)),),),
    
          Container(
          width:222,
          height: 272,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              colors: [gradient3, gradient2],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,),
          ),
            ),
    
            SizedBox(
              width: 222,
              child: Align(
                alignment: const FractionalOffset(0.9, 0.1),
                child: SizedBox(
                  width:85,
                  height: 24,
                  child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Image.asset("assets/icons/map.png", width:10),
                        const SizedBox(width:6),
                        Text(onMap, style: TextStyle(fontSize: 12, color: white),),
                      ]),
                      style: ElevatedButton.styleFrom(
                        primary: darkGreyButton,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
    
            SizedBox(
              width: 222,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 175,
                  height: 60,
                  child: Column(
                    children:  [
                      Text(title, style: TextStyle(fontSize: 16, color: white, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 8,),
                      Text(location, style: TextStyle(fontSize: 12, color:white,) ),
                      const SizedBox(height: 16,),
                    ],
                  ),
                ),
              ),
            ),
    
            ]
      ),
    );
  }
}


//HousesGallery

class HousesGallery extends StatelessWidget {
  const HousesGallery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 272,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          House(
            title:"Dreamsville House",
            location:"Jl. Sultan Iskandar Muda",
            onMap: "1.8 km",
            image: "assets/images/dream_house.png",
          ),
          SizedBox(width: 20,),
          House(
            title:"Ascot House",
            location:"Jl. Cilandac Tengah",
            onMap: "2.2 km",
            image: "assets/images/ascot_house.png",
          )
          
        ],
      ),
    );
  }
}


class HouseCard extends StatelessWidget {
  const HouseCard({ Key? key, required this.title, required this.price, required this.image, required this.beds, required this.bathes }) : super(key: key);

  final String title;
  final String price;
  final String image;
  final int beds;
  final int bathes;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
              child: Image.asset(image, width: 74, height: 70,),
              borderRadius: BorderRadius.circular(10),),
          const SizedBox( width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(title, style: const TextStyle( fontSize: 16, fontWeight: FontWeight.w600),),
              Text(price, style: TextStyle( fontSize: 12, color: activeOption ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/icons/bedroom_grey.png"),
                  const SizedBox( width: 12),
                  Text("$beds Bedrooms", style: const TextStyle( fontSize: 12, ),),
                  const SizedBox( width: 20),
                  Column(
                    children: [
                      Image.asset("assets/icons/bathroom_grey_2.png"),
                      Image.asset("assets/icons/bathroom_grey1.png"),
                    ],
                  ),
                  const SizedBox( width: 12),
                  Text("$bathes Bathrooms", style: const TextStyle( fontSize: 12, ),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class HouseCardList extends StatelessWidget {
  const HouseCardList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    //physics: const BouncingScrollPhysics(),
    children: const [
      HouseCard(
        title:"Orchad House",
        price:"Rp. 2.500.000.000 / Year",
        image: "assets/images/house_image1.png",
        beds: 6,
        bathes: 4,
      ),
      SizedBox(height: 10,),
      HouseCard(
        title:"The Hollies House",
        price:"Rp. 2.000.000.000 / Year",
        image: "assets/images/house_image2.png",
        beds: 5,
        bathes: 2,
      ),
      SizedBox(height: 10,),
      HouseCard(
        title:"Orchad House",
        price:"Rp. 2.500.000.000 / Year",
        image: "assets/images/house_image1.png",
        beds: 6,
        bathes: 4,
      ),
    ],
    );
  }
}

