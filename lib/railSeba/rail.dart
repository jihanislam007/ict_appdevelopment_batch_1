import 'package:flutter/material.dart';
import 'package:ict_appdevelopment_batch_1/railSeba/custom_widget.dart';

class rail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rail Seba"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/03/05/23/02/blur-1239439_960_720.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  custom_widget('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4u81UPliV_ta4U63BFbd2tuL1sNdxi1oi0Q&usqp=CAU','Purchase'),
                  custom_widget('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/MTR_Lightrail_icon.svg/1024px-MTR_Lightrail_icon.svg.png','Sherpur'),
                  custom_widget('https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-train-icon-png-image_4260055.jpg','Dhaka'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  custom_widget('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4u81UPliV_ta4U63BFbd2tuL1sNdxi1oi0Q&usqp=CAU','Purchase'),
                  custom_widget('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/MTR_Lightrail_icon.svg/1024px-MTR_Lightrail_icon.svg.png','Sherpur'),
                  custom_widget('https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-train-icon-png-image_4260055.jpg','Dhaka'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  custom_widget('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4u81UPliV_ta4U63BFbd2tuL1sNdxi1oi0Q&usqp=CAU','Purchase'),
                  custom_widget('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/MTR_Lightrail_icon.svg/1024px-MTR_Lightrail_icon.svg.png','Sherpur'),
                  custom_widget('https://png.pngtree.com/png-clipart/20190705/original/pngtree-vector-train-icon-png-image_4260055.jpg','Dhaka'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
