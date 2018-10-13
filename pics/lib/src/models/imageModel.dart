/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-10 22:43:04
 * @modify date 2018-10-10 22:43:04
 * @desc class of ImageModel wrt JSON
*/


class ImageModel {
  int id;
  String title;
  String url;

  ImageModel(this.id,this.title, this.url);

  ImageModel.fromJson(Map<String, dynamic> parsedJson){
    this.id = parsedJson["id"];
    this.url = parsedJson["url"];
    this.title = parsedJson["title"];
  }
}