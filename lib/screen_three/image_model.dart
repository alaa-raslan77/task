class ImageModel {
  String image;
  String num;
  String lable;

  ImageModel({required this.image, required this.num, required this.lable});


}

List <ImageModel>imageModel =[
  ImageModel(
      image: "assets/images/topLeft.png",
      num: "#14415",
      lable: "\nHypebest Apes B"
  ),
  ImageModel(
      image: "assets/images/topRight.png",
      num: "#15315",
      lable: "\nHypebest Apes D"
  ),
  ImageModel(
      image: "assets/images/bottomLeft.png",
      num: "#14415",
      lable: "\nHypebest Apes B"
  ),
  ImageModel(
      image: "assets/images/bottomRight.png",
      num: "#14415",
      lable: "\nHypebest Apes B"
  ),

];

