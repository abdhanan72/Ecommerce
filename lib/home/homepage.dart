import 'package:flip/drawer/drawer.dart';
import 'package:flip/product/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
     DefaultTabController(
        length: 4,
        initialIndex: 2,
       
        child: SafeArea(
          child: Scaffold(
            
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
            
              
              toolbarHeight: 90,
              
              
              backgroundColor: Colors.black,
              title: const Text(
                'GENX',
                style: TextStyle(color: Colors.white,
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
              
              bottom: TabBar( indicatorColor: Colors.black,
               
                
                tabs: [

                  Padding(padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://i.pinimg.com/originals/d1/db/02/d1db02a86745c6c3fdd10bf605837520.jpg'),
                        
                      ),
                      Text('MENS',
                      style: TextStyle(
                        fontSize: 8
                      ),
                      )
                    ],
                  ),
                  ),

                  Padding(padding:const EdgeInsets.only(bottom: 10),
                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/2/28/Zendaya_-_2019_by_Glenn_Francis.jpg'),
                        
                      ),
                      Text('WOMEN',
                      style: TextStyle(
                        fontSize: 8
                      ),
                      )
                    ],),
                  ),
                  Padding(padding:const EdgeInsets.only(bottom: 10),
                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://i.pcmag.com/imagery/lineups/067nHL7x7FLjB28RuLvKFzS-1..v1569470817.jpg'),
                        
                      ),
                      Text('ELECTRONICS',
                      style: TextStyle(
                        fontSize: 8
                      ),
                      )
                    ],),
                  ),
                  Padding(padding:const EdgeInsets.only(bottom: 10),
                  child: Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://childdevelopment.com.au/wp-content/uploads/what-is-child-development.jpg'),
                        
                      ),
                      Text('BABY CARE',

                      style: TextStyle(
                        fontSize: 8
                      ),
                      )
                    ],),
                  )
                  
                
              ]),
            ),
            drawer: const MyDrawer(),
            body:  TabBarView(children: [
              const Text('mens'),
              const Text('women'),
              ProductGrid(),
              const Text('BABY'),

            
            ]),

            
          ),
        ));
  }
}
