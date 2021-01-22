import "package:flutter/material.dart";

class HomePage extends StatelessWidget {

  String _imgUrl = 'https://avatars3.githubusercontent.com/u/40868626?s=460&u=c2bfeec0caf94d18e4c9a3ada8e90e6f81eb8f8e&v=4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('instagrame clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(8.0),
        // iphone 대머리 부분
        child: SafeArea(
          // 넘어갈수도 있으니 무조건 Scroll로 하셈
          child: SingleChildScrollView(

            child: Center(
              child: Column(
                children: <Widget>[
                  Text('instagram에 오신것을 환영합니다.',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우 하세요'),
                  Padding(padding: EdgeInsets.all(16.0)),

                  SizedBox(
                    width: 240.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        // 카드 그림자 두께
                        elevation: 4.0,
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.all(4.0)),
                            // 사진
                            SizedBox(
                              width: 80.0,
                              height: 80.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(_imgUrl),
                              ),
                            ),

                            Text('이메일주소',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('이름'),

                            Padding(padding: EdgeInsets.all(8.0)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network(_imgUrl, fit: BoxFit.cover),
                                ),
                                Padding(padding: EdgeInsets.all(1.0)),
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network(_imgUrl, fit: BoxFit.cover),
                                ),
                                Padding(padding: EdgeInsets.all(1.0)),
                                SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network(_imgUrl, fit: BoxFit.cover),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(4.0)),
                            Text('Facebook 친구'),
                            Padding(padding: EdgeInsets.all(4.0)),
                            // 팔로우버튼
                            RaisedButton(
                                child: Text('팔로우'),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                                onPressed: () {  }
                            ),
                            Padding(padding: EdgeInsets.all(4.0)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
