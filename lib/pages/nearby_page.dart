import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/tool_bar.dart';
import 'package:flutter_application_2/config/app-icons.dart';
import 'package:flutter_application_2/config/app_strings.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.nearby),
      body: FlutterMap(

        options: MapOptions(
          center: LatLng(51.509364, -0.238928),
          zoom: 10,
        ),

        children: [

          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            // userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            userAgentPackageName: 'dev.ces.flutter',
          ),
            
            // es se uperwala naqsha show krny k liye hota bs
          
          MarkerLayer //marker layer se naqshy k uper icons or writing likhny k liye
          (
            markers: [

            //   Marker(
            //   point: LatLng(51.509364, -0.238928), 
            //   height: 100,//ye jo wo black color ka box hai us ki width or height hai
            //   width: 50,

            //   builder:(context) {
            //     return Container(
            //       // ye marker ki width and height hai jese black color ka marker jisy me abih remove kr k icon or user name lkho a shyd
            //       color: Colors.black,
            //     );
            //   },
            // ),

              Marker(
                width: 100,//ye jo white color ka container bna hoowa hai na ye us ki width hai
                height: 50,//pixel overflow ki wajah se esy height di ja rahi hai
                point: LatLng(51.509364, -0.238928), builder: (context) {
                return Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),

                      child: Text('UserName',style: TextStyle(color: Colors.black),),
                    ),
                    SvgPicture.asset(AppIcons.location3,
                    colorFilter:ColorFilter.mode(
                      Colors.black, BlendMode.srcIn
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ],
                );
              },
            ),

         ],
       )
    ],

      ),
    );
  }
}
