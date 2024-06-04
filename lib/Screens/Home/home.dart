import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/Utils/Quotes_List.dart';

import '../../Utils/Quotes_Model.dart';

QuotesModel? quotesModel;

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    // TODO: implement initState
    quotesModel = QuotesModel.toList(quoteList);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Quotes App',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ...List.generate(quoteList.length, (index) {
              setState(() {
                i++;
                if(colorList.length==i)
                {
                  i=0;
                  i++;
                }
              });
              return Card(
                color: colorList[i]['color'],
                child: ListTile(
                  title: Text(quotesModel!.QuoteModalList[index].quote!),
                  subtitle: Text(quotesModel!.QuoteModalList[index].author!),
                ),
              );
            },),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random=Random();
          int x=random.nextInt(quoteList.length);
          int y=random.nextInt(colorList.length);
          setState(() {
            color=y;
          });
          // print(x);
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text(quotesModel!.QuoteModalList[x].quote!),
              content: Text(quotesModel!.QuoteModalList[x].author!),
              backgroundColor: colorList[y]['color'],
              actions: [
                TextButton(onPressed: () {
                  setState(() {
                    x=random.nextInt(quoteList.length);
                  });
                }, child: const Text('Next',style: TextStyle(color: Colors.black),)),
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: const Text('Back',style: TextStyle(color: Colors.black),))
              ],
            );
          },);
        },
        child: const Icon(Icons.color_lens_rounded),
      ),
    );
  }
}

int color=0,i=0;