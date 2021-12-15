import 'package:flutter/material.dart';
import 'package:ict_appdevelopment_batch_1/data/productData.dart';

class ListProduct extends StatelessWidget {
  
  var proList = new productdata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Lists'),
      ),
      body: ListView.builder(
          itemCount: proList.productlist.length,
          itemBuilder: (context, i) {
            return Card(
                child: ListTile(
              title: Text('${proList.productlist[i].title}'),

              leading: Image.network(proList.productlist[i].imageUrl),
              trailing: Icon(Icons.account_tree_outlined),
            ));
          }),
    );
  }
}
