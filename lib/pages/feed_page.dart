import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super (key:key);
  
  get child => null;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '投稿'
        )    
      ),
      body: SingleChildScrollView(
        child: Column(
          //よせる位置を設定する(この場合は左寄せ)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
            
            //Rowは横並びにするもの
            child: Row(
              children: [
                //写真を挿入する
                Image.network(
                  'https://static-00.iconduck.com/assets.00/instagram-icon-1024x1024-8qt57uwd.png',
                  width: 25,
                  height: 25,
                 ),
                //文字を入れたりする
                const SizedBox(
                  width: 18
                ),
                const Column(
                  children: [
                   Text(
                    'ユーザー',
                    //フォントを変更、サイズも変更する
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                   ),
                   Text('location',),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
          Image.network(
            'https://getnews.jp/img/archives/2014/07/pakutaso_03.jpg',
            fit:BoxFit.cover
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  icon:const Icon(Icons.favorite_border_outlined), 
                  onPressed: () {},
                  ),
                IconButton(
                  icon: const Icon(Icons.message_outlined),
                  onPressed: () {},
                  ),
                IconButton(
                  icon: const Icon(Icons.send_outlined),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_outline_outlined),
                  iconSize: 30,
                  onPressed: (){}
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '「いいね！」 77,777件',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
              )
            ),
          const Padding(
            padding:EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('flutter テスト',),
                Text('あああああああああああああああああああああああああああああああああああaああああああああああああああああ')
              ],
              ),
            ),
          Image.network(
            'https://user0514.cdnw.net/shared/img/thumb/TSU1994105_TP_V.jpg',
            fit:BoxFit.cover
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  icon:const Icon(Icons.favorite_border_outlined), 
                  onPressed: () {},
                  ),
                IconButton(
                  icon: const Icon(Icons.message_outlined),
                  onPressed: () {},
                  ),
                IconButton(
                  icon: const Icon(Icons.send_outlined),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_outline_outlined),
                  iconSize: 30,
                  onPressed: (){}
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '「いいね！」 77,777件',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
              )
            ),
          const Padding(
            padding:EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('flutter テスト',),
                Text('あああああああああああああああああああああああああああああああああああaああああああああああああああああ')
              ],
              )
            )
          ],
        ),
      ),    
    );
  }
}

//iiiii