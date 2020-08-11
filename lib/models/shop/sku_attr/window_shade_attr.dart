import 'package:taojuwu/models/zy_response.dart';

class WindowShadeAttr extends ZYResponse<List<WindowShadeAttrBean>>{
  
   WindowShadeAttr.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    List _data = json['data'] is List?json['data']:[];
   this.data =
        this.valid ? _data.map((item)=>WindowShadeAttrBean.fromJson(item)).toList() : null;
  }
 
}


class WindowShadeAttrBean{
   int id;
   String name;
   String picture;
   double price;
   int items;
  WindowShadeAttrBean({this.id,this.name,this.price,this.picture});
  
  WindowShadeAttrBean.fromJson(Map<String,dynamic> json){
    id =  json['id'].runtimeType == int
        ? json['id']
        : int.parse(json['id']);
    name = json['name']??'';
    picture = json['picture']??'';
    price = json['price'].runtimeType == double?json['price'] : double.parse(json['price']);
    items = json['items'].runtimeType == int?json['items'] : int.parse(json['items']);
  }

  Map<String, dynamic> toJson()=>{
    'id':id,
    'name':name,
    'picture':picture,
    'price':price,
    'items':items
  };

}