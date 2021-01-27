import 'package:flutter/material.dart';
import 'package:flutter_app_some_news/helper/news.dart';
import 'package:flutter_app_some_news/models/article_model.dart';

import 'home.dart';

class Categories extends StatefulWidget {
  final String category;
  Categories({@required this.category});


  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<ArticleModel>articles = new List<ArticleModel>();
bool _loading =true;

@override
void initState(){
  super.initState();
  getCategorieNews();

}
  getCategorieNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "NEWS",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save))
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body:_loading ? Center(
        child: SingleChildScrollView(
          child: Container(
            child:CircularProgressIndicator(),
          ),
        ),): Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 16),
              child: ListView.builder(
                itemCount: articles.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return BlogTile(
                    imageUrl: articles[index].urlToImage,
                    title: articles[index].title,
                    description: articles[index].description,
                    url: articles[index].url,
                  );
                },
              ),
            ),
          ],
        ),
    ),
      );

  }
}
