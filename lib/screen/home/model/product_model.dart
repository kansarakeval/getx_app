class ProductModel
{
  String? title,image,cate,desc;
  int? id;
  num? price;

  ProductModel(
      {this.title, this.image, this.cate, this.desc, this.id, this.price});


  factory ProductModel.mapToModel(Map m1)
  {
      return ProductModel(id: m1['id'],title:m1['title'] ,image: m1['image'],cate: m1['category'],desc: m1['description'],price: m1['price']);
  }

}