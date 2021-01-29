import 'package:flutter/material.dart';

import 'create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreatePage()));
        },
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
      gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0)  ,
        itemCount: 5,
        itemBuilder: (context, index){
          return _buildListItem(context, index);
        }
    );
  }

  Widget _buildListItem(BuildContext context, int index) {

    String _imgUrl = 'https://avatars3.githubusercontent.com/u/40868626?s=460&u=c2bfeec0caf94d18e4c9a3ada8e90e6f81eb8f8e&v=4';
    return Image.network(_imgUrl, fit:BoxFit.cover);
    
  }
}
