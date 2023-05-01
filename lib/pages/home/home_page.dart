import 'package:cric_update/utils/dimensions.dart';
import 'package:cric_update/widgets/big_text.dart';
import 'package:cric_update/widgets/small_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cric Update'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index)=> SizedBox(height: Dimensions.height20,),
          itemCount: 20,
          itemBuilder: (context, index){
        return Container(
          padding: EdgeInsets.all(Dimensions.padding20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 3),
                blurRadius: 8
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.sports_cricket),
                  SmallText(text: 'Bangladesh')
                ],
              ),
              Column(
                children: [
                  BigText(text: 'ODI', size: Dimensions.font14,),
                  BigText(text: '106/9', size: Dimensions.font14, fontWeight: FontWeight.bold,),
                  SmallText(text: '27.3', fontWeight: FontWeight.bold,),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sports_cricket),
                  SmallText(text: 'Bangladesh')
                ],
              )
            ],
          ),
        );
      })
    );
  }
}
