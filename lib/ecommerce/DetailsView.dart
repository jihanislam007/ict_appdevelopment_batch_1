import 'package:flutter/material.dart';

import 'modelClass/productListmodel.dart';

class DetailsView extends StatefulWidget {

final productListModel proDetails;


DetailsView(this.proDetails);

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.proDetails.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Flexible(
              flex: 1,
              child: Container(
                child: Image.network(
                    widget.proDetails.imageUrl,fit: BoxFit.fill,),
              ),
            ),

            Flexible(
              flex: 3,
              child: Column(
                children: [
                  Text("Product title"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price : \$ ${widget.proDetails.price}"),
                        Text("Discount : ${widget.proDetails.discount} %"),

                      ],
                    ),
                  ),

                  Text(widget.proDetails.desc, maxLines: 2,),
                ],
              )
            ),

            Flexible(
              flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.indigo,)
                    ),
                    height: MediaQuery.of(context).size.height/10,

              child: Row(
                  children: [

                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Center(child: Text('-',style: TextStyle(color: Colors.black,fontSize: 20))),
                          VerticalDivider(thickness: 1,),
                          Center(child: Text('0')),
                          VerticalDivider(thickness: 1,),
                          Center(child: Text('+',style: TextStyle(color: Colors.black,fontSize: 20))),

                        ],
                      ),
                    ),

                    //VerticalDivider(thickness: 1,color: Colors.indigo,),
                    Flexible(
                      flex: 1,

                      child: Container(
                        color: Colors.indigo,
                        child: Center(child: Text('Add To Cart',style: TextStyle(color: Colors.white,fontSize: 20),)),
                      )
                    )

                  ],
              ),
            ),
                ))
          ],
        ));
  }
}
