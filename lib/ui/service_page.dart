import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/color.dart';

import '../theme/app_theme.dart';
import '../theme/size.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  int selectedIndex = -1;
   var scrollController = ScrollController();
  double top = 0.0;

  List<String> priceUsd = [
    '5 USD',
    '10 USD',
    '20 USD',
    '25 USD',
    '35 USD',
    '50 USD',
    '75 USD',
    '85 USD',
    '100 USD',
    '5 USD',
    '10 USD',
    '20 USD',
    '25 USD',
    '35 USD',
    '50 USD',
    '75 USD',
    '85 USD',
    '100 USD',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
    scrollController.addListener(() {
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: 
        Stack(children: [
           CustomScrollView(
          controller: scrollController,
          slivers: [
         SliverAppBar(
          //  floating: false,
           pinned: true,
          // snap: false,
           expandedHeight: 250,
          foregroundColor: Colors.white,
    
           flexibleSpace: LayoutBuilder(
             
             builder: (ctx, cons) {
               top = cons.biggest.height;
               
               return Container(
                 color: AppColor.burlyWood,
                 child: FlexibleSpaceBar(
                  
                  centerTitle: false,
                  
                  
                 
                   
                   title:  AnimatedOpacity(
                    
                     duration: Duration(milliseconds: 300),
                     opacity: top <= 130 ?1.0 :0.0,
                     child: Padding(
                       padding: const EdgeInsets.only(bottom: 8.0),
                       child: Text(
                         'Valorant (US)',
                         style: AppTheme.titleText,
                       ),
                     ),
                   ),
                 
                 
                 background: SizedBox(
                   
                 
                       width: size.width,
                       height: 250,
                       child: Image.asset(
                         'assets/images/valorant_bg.png',
                         fit: BoxFit.cover,
                       ),
                     ),
                            ),
               );
               
             },
           
           ),
    
         ),
         SliverToBoxAdapter(
    
           child:
            Padding(
              padding: pdAll12,
              child: Column(
                children: [
                  top <= 130 ?
                 SizedBox(height: 0,):h30,
                  ListView.builder(
                         shrinkWrap: true,
                         itemCount:priceUsd.length,
                         itemBuilder: (context, index) {
                           return Padding(
                             padding: const EdgeInsets.only(bottom: 8.0),
                             child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                 elevation: 0,
                                 minimumSize: const Size(double.infinity, 40),
                                 backgroundColor: AppColor.white,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30),
                                   side: BorderSide(
                                     color: selectedIndex == index
                                         ? AppColor.burlyWood
                                         : AppColor.white,
                                   ),
                                 ),
                               ),
                               // btnWhiteStyle,
                               onPressed: () {
                                 setState(() {});
                                 selectedIndex = index;
                               },
                               child: Align(
                                 alignment: Alignment.centerLeft,
                                 child: Text(
                                   priceUsd[index],
                                   style: AppTheme.txtSize11,
                                 ),
                               ),
                             ),
                           );
                         },
                       ),
                       Align(
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Phone Number',
                     style: AppTheme.titleText,
                   ),
                 ),
                 h10,
                 TextFormField(
                   decoration: inputDecoration,
                 ),
                 h30,
                 ElevatedButton(
                   style: btnStyle,
                   onPressed: () {
                     context.pushNamed(serviceConfirm);
                   },
                   child: Text(
                     'Next',
                     style: AppTheme.btnText,
                   ),
                 ),
                   
                 // SizedBox(height: kBottomNavigationBarHeight,),
                ],
                
              ),
            ),
    
         ),
    
          
          ],
        ),
        _buildFab(),
       
        ],),
       
       
      
      ),
    );
  }

Widget _buildFab(){

  double defaultMargin =216;
  double defaultStart =230;
  double defaultEnd = defaultStart/2;
  double top = defaultMargin;
  double scale =1;
  if (scrollController.hasClients){
  double offset = scrollController.offset;
  top -= offset;
  if(offset<defaultMargin-defaultStart){
    scale =1;
  }else if(offset<defaultStart-defaultEnd){
    scale = (defaultMargin - defaultEnd-offset)/defaultEnd;
  }
  else{
    scale = 0;

  }
  }

  
  return Positioned(
          top: top,
          left: 16,
          child: Transform(
          transform: Matrix4.identity()..scale(scale),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
                            
                            children: [
                              SizedBox(
                                width: 90,
                                height: 75,
                                child: Image.asset(
                                  'assets/images/valorant.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              w8,
                              Padding(
                                padding: const EdgeInsets.only(bottom:10.0),
                                child: Text(
                                  'Valorant (US)',
                                  style: AppTheme.titleText,
                                ),
                              ),
                            ],
                          ),
          ),
        );

}



}


// SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 width: size.width,
//                 height: size.height * 0.25,
//                 // color: AppColor.burlyWood,
//                 child: Stack(
//                   children: [
//                     SizedBox(
//                       width: size.width,
//                       height: size.height * 0.2,
//                       child: Image.asset(
//                         'assets/images/valorant_bg.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       left: 10,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           SizedBox(
//                             width: 90,
//                             height: 75,
//                             child: Image.asset(
//                               'assets/images/valorant.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           w8,
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 8.0),
//                             child: Text(
//                               'Valorant (US)',
//                               style: AppTheme.titleText,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       top: 10,
//                       left: 10,
//                       child: GestureDetector(
//                         onTap: () {
//                           context.pop();
//                         },
//                         child: Icon(
//                           CupertinoIcons.left_chevron,
//                           color: AppColor.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: pdAll12,
//                 child: Column(
//                   children: [
//                     ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: priceUsd.length,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               elevation: 0,
//                               minimumSize: const Size(double.infinity, 40),
//                               backgroundColor: AppColor.white,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                                 side: BorderSide(
//                                   color: selectedIndex == index
//                                       ? AppColor.burlyWood
//                                       : AppColor.white,
//                                 ),
//                               ),
//                             ),
//                             // btnWhiteStyle,
//                             onPressed: () {
//                               setState(() {});
//                               selectedIndex = index;
//                             },
//                             child: Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 priceUsd[index],
//                                 style: AppTheme.txtSize11,
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         'Phone Number',
//                         style: AppTheme.titleText,
//                       ),
//                     ),
//                     h10,
//                     TextFormField(
//                       decoration: inputDecoration,
//                     ),
//                     h30,
//                     ElevatedButton(
//                       style: btnStyle,
//                       onPressed: () {
//                         context.pushNamed(serviceConfirm);
//                       },
//                       child: Text(
//                         'Next',
//                         style: AppTheme.btnText,
//                       ),
//                     ),
//                     h10,
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
