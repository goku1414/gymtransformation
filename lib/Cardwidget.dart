import 'package:flutter/material.dart';

class TransferCard extends StatelessWidget {
  const TransferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.surfaceVariant,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Image border

                    child: Stack(
                      children: [
                        Image.network("https://img.freepik.com/premium-photo/man-does-pull-ups-horizontal-bar-gym-fitness-motivation_124865-6727.jpg?w=2000"),
                        Center(child: Text("31 Aug 2022",))
                      ],
                    )),
                SizedBox(height: 19,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Height", style: TextStyle(fontSize: 17),),Text("123",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Weight",style: TextStyle(fontSize: 17)),Text("231",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("BMi",style: TextStyle(fontSize: 17)),Text("252",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("BMR",style: TextStyle(fontSize: 17)),Text("432",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      SizedBox(height: 10,)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Image border

                    child: Image.network("https://img.freepik.com/premium-photo/fitness-sport-training-lifestyle-concept-young-man-exercising-horizontal-bar-beach-high-quality-photo_209729-2871.jpg?w=360")),
                SizedBox(height: 19,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Height", style: TextStyle(fontSize: 17),),Text("123",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Weight",style: TextStyle(fontSize: 17)),Text("231",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("BMi",style: TextStyle(fontSize: 17)),Text("252",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("BMR",style: TextStyle(fontSize: 17)),Text("432",style: TextStyle(fontSize: 17))],),SizedBox(height:  6,),
                      SizedBox(height: 10,)

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
