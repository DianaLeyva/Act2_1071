class ProductModel {
  String name;
  String imageUrl;
  int price;
  String manufacturer;
  String description;
  String fabricColor;
  int rating;
  String style;
  String madeIn;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.manufacturer,
    required this.description,
    required this.fabricColor,
    required this.rating,
    required this.style,
    required this.madeIn,
  });
}

List<ProductModel> productItems = [
  ProductModel(
    name: 'Escritorio',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/escritorio.webp',
    price: 2000,
    fabricColor: 'Madera',
    description: 'Amplio escritorio ideal para oficina o estudio.',
    madeIn: 'México',
    rating: 5,
    style: 'Moderno',
  ),
  ProductModel(
    name: 'Hojas',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/hojas.jpg',
    price: 150,
    fabricColor: 'Blanco',
    description: 'Paquete de hojas tamaño carta, 500 piezas.',
    madeIn: 'México',
    rating: 4,
    style: 'Clásico',
  ),
  ProductModel(
    name: 'Impresora',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/impresora.webp',
    price: 4500,
    fabricColor: 'Negro',
    description: 'Impresora multifuncional inalámbrica.',
    madeIn: 'China',
    rating: 5,
    style: 'Tecnología',
  ),
  ProductModel(
    name: 'Lapicera',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/lapicera.webp',
    price: 250,
    fabricColor: 'Negro',
    description: 'Lapicera organizadora con múltiples compartimentos.',
    madeIn: 'México',
    rating: 3,
    style: 'Moderno',
  ),
  ProductModel(
    name: 'Marcadores',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/marcadores.webp',
    price: 120,
    fabricColor: 'Varios',
    description: 'Set de marcadores permanentes de colores.',
    madeIn: 'China',
    rating: 4,
    style: 'Escolar',
  ),
  ProductModel(
    name: 'Mochila',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/mochila.webp',
    price: 890,
    fabricColor: 'Negro',
    description: 'Mochila resistente con múltiples compartimentos.',
    madeIn: 'México',
    rating: 5,
    style: 'Escolar',
  ),
  ProductModel(
    name: 'Pegamento',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/pegamento.webp',
    price: 35,
    fabricColor: 'Transparente',
    description: 'Pegamento en barra ideal para papel.',
    madeIn: 'México',
    rating: 4,
    style: 'Escolar',
  ),
  ProductModel(
    name: 'Silla de Escritorio',
    manufacturer: 'Office Depot',
    imageUrl: 'https://raw.githubusercontent.com/DianaLeyva/OfficeDepot_imagenes_app_flutter/refs/heads/main/silla_escritorio.webp',
    price: 2100,
    fabricColor: 'Negro',
    description: 'Silla ergonómica con respaldo de malla.',
    madeIn: 'China',
    rating: 5,
    style: 'Oficina',
  ),
];

List<String> categoryList = [
  'Oficina',
  'Escolar',
  'Tecnología',
  'Muebles',
  'Organización'
];
