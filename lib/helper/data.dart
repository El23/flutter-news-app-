

import 'package:flutter_app_some_news/models/category_model.dart';

List<CategoryModel> getCategories () {
List<CategoryModel> category = new List<CategoryModel>();
CategoryModel categoryModel = new CategoryModel();

categoryModel.categoryName = "science";
categoryModel.imgUrl = "assets/serotonin.jpg";
category.add(categoryModel);
categoryModel = new CategoryModel();

categoryModel.categoryName = "general";
categoryModel.imgUrl =  "assets/general.jpg";
category.add(categoryModel);
categoryModel = new CategoryModel();

categoryModel.categoryName = "IT news";
categoryModel.imgUrl =  "assets/simvol.jpg";
category.add(categoryModel);
categoryModel = new CategoryModel();

categoryModel.categoryName = "travel";
categoryModel.imgUrl =  "assets/pilot.jpg";
category.add(categoryModel);
categoryModel = new CategoryModel();

categoryModel.categoryName = "entertainment";
categoryModel.imgUrl =  "assets/screenshot_6.jpg";
category.add(categoryModel);
categoryModel = new CategoryModel();


return category;


}