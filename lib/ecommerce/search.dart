import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

var row =[];
List result = [];
String query = '';

TextEditingController serchTC = TextEditingController();

class _SearchState extends State<Search> {

  @override
  void initState() {


    row = [
      {
        'name': 'product one',
        'price': 100,
        'des': 'this is a best product ever '
      },
      {
        'name': 'product 2',
        'price': 200,
        'des': 'this is a best product ever '
      },
      {
        'name': 'product 3',
        'price': 300,
        'des': 'this is a best product ever '
      },
      {
        'name': 'product 4',
        'price': 400,
        'des': 'this is a best product ever '
      }
    ];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                controller: serchTC,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                    hintText: 'Search...'
                ),
                onChanged: (v){
                  setState(() {
                    query= v;
                    setresult(query);
                  });
                },
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [

              Container(
                child: query.isEmpty
                    ?
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: row.length,
                    itemBuilder: (_,i){
                      return Card(
                        child: ListTile(
                          title: Text(row[i]['name']),
                          onTap: (){
                            setState(() {
                              serchTC.text = row[i]['name'];
                              query = row[i]['name'];
                              setresult(query);
                            });
                          },
                        ),
                      );
                    })
                    :
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: result.length,
                    itemBuilder: (_,i){
                      return Card(
                        child: ListTile(
                          title: Text(result[i]['name']),
                          onTap: (){
                            setState(() {
                              serchTC.text = result[i]['name'];
                              query = result[i]['name'];
                              setresult(query);
                            });
                          },
                        ),
                      );
                    }),
              )

            ],
          )
        ],
      ),
    );
  }

  void setresult(String query){

    result = row.where((element) =>
    element['name'].toString().toLowerCase().contains(query.toLowerCase()) ||
        element['price'].toString().toLowerCase().contains(query.toLowerCase())).toList();


  }
}
