// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Mypage extends StatelessWidget {
   Mypage({Key? key}) : super(key: key);

  final image =[
    'https://static-00.iconduck.com/assets.00/instagram-icon-1024x1024-8qt57uwd.png',
    'https://slp-statics.astockcdn.net/static_assets/staging/22spring/free/browse-vector-categories-collections/Card4_399895799.jpg?width=580',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
    'https://www.pakutaso.com/shared/img/thumb/TS1300_TP_V.jpg',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
    'https://user0514.cdnw.net/shared/img/thumb/kuchikomi894_TP_V.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //タイトルを中央寄せにする
        centerTitle: true,
        //タイトルをつける
        title: const Text('instagram',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          ),
        ),
      ),
      //内容を書く
      body: SingleChildScrollView(
        child: Column(
          //よせる位置を設定する(この場合は左寄せ)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
            
            //Rowは横並びにするもの
            child: Row(
              children: [
                //写真を挿入する
                Image.network(
                  'https://static-00.iconduck.com/assets.00/instagram-icon-1024x1024-8qt57uwd.png',
                  width: 60,
                  height: 60,
                 ),
                //空白をつくる
                const SizedBox(
                  width: 90
                ),
                //文字を入れたりする
                const Column(
                  children: [
                   Text(
                    '7,041',
                    //フォントを変更、サイズも変更する
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                   ),
                   Text('投稿'),
                  ],
                ),
                const SizedBox(
                  width: 16
                ),
                const Column(
                  children: [
                    Text(
                      '4.6億',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text('フォロワー'),
                  ],
                ),
                const SizedBox(
                  width: 16 
                ),
                const Column(
                  children: [
                    Text('99',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text('フォロー中'),
                  ],
                ), 
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              'Instagram',
              //フォントを変更、サイズも変更する
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Text(
              '#YoursToMake',
              //フォントを変更、サイズも変更する
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16
              ),
            ),
            Text(
              'help.instagram.com',
              //フォントを変更、サイズも変更する
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16
              ),
            ),
          ],
          ),
          ),
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children:[
                        Expanded(
                          child: OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                //枠を丸まらせる
                              borderRadius: BorderRadius.circular(0),
                              ),
                            ), 
                            child: const Text(
                              'フォロー中',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight:  FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(child: OutlinedButton(
                           onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ), 
                            child: const Text('メッセージ', 
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight:  FontWeight.bold,
                              fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  const SizedBox(width: 4),
                  OutlinedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ), 
                    child: const Icon(
                      Icons.keyboard_arrow_down, color: Colors.black
                    ),
                    
                  ),
                ],
              ),
            ),
            //画像配置
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: image.map((imageUrl) {
                return instagrampostitem(imageUrl: imageUrl);
              }).toList())
          ],
        ),
      )
    );
  }
}
class instagrampostitem extends StatelessWidget {
  const instagrampostitem({Key? key, required this.imageUrl}) : super(key:key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    
    return Image.network(
        imageUrl,
      );
  }
}