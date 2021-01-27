import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_some_news/helper/data.dart';
import 'package:flutter_app_some_news/models/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();

  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "NEWS",
              style: TextStyle(color: Colors.white),
            )
          ],

        ),

        elevation: 0.0,
      ),

      body: Container(

        child: Column(

          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              height: 70,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    categoryName: categories[index].categoryName,
                    imgUrl: categories[index].imgUrl,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imgUrl;
  final categoryName;

  CategoryTile({this.imgUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),

        child: Stack(
          children: <Widget>[

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imgUrl,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 120, height: 60,
                alignment: Alignment.center,
                child: Text(
              categoryName,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  BlogTile({this.title,this.description,this.imageUrl});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget>
        [
          Image.asset(imageUrl),
          Text(title),
          Text(description)

        ],
      ),
    );
  }
}

