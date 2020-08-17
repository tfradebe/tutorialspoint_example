class Product {
  final String name;
  final String description;
  final int price;
  final String image;
  Product({this.name,this.description,this.price,this.image});

  static List<Product> getProducts(){
    List<Product> items = <Product>[];
    items.add(Product(name:'Pixel',description:'Pixel is the most feature-full phone ever',price:800,image: 'images.jfif'));
    items.add(Product(name:'Pixel',description:'Pixel is the most feature-full phone ever',price:800,image: 'images.jfif'));
    items.add(Product(name:'Pixel',description:'Pixel is the most feature-full phone ever',price:800,image: 'images.jfif'));
    items.add(Product(name:'Pixel',description:'Pixel is the most feature-full phone ever',price:800,image: 'images.jfif'));
    items.add(Product(name:'Pixel',description:'Pixel is the most feature-full phone ever',price:800,image: 'images.jfif'));
    return items;
  } 

}