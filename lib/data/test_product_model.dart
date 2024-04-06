import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_product_model.freezed.dart';

@freezed
class TestProduct with _$TestProduct {
  const factory TestProduct({
    required int id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
  }) = _TestProduct;
}

List<TestProduct> exampleProduct = const <TestProduct>[
  TestProduct(
    id: 0,
    name: 'Chocolate Cake',
    description: 'A delicious chocolate cake',
    price: 120000,
    imageUrl: 'https://i1.theportalwiki.net/img/0/0a/Portal_Cake.png',
  ),
  TestProduct(
    id: 1,
    name: 'Strawberry Cake',
    description: 'A delicious strawberry cake',
    price: 150000,
    imageUrl:
        'https://preppykitchen.com/wp-content/uploads/2022/05/Strawberry-Cake-Feature.jpg',
  ),
  TestProduct(
    id: 2,
    name: 'Vanilla Cake',
    description: 'A delicious vanilla cake',
    price: 140000,
    imageUrl:
        'https://www.recipetineats.com/wp-content/uploads/2020/08/My-best-Vanilla-Cake_9.jpg?resize=650,910',
  ),
  TestProduct(
    id: 3,
    name: 'Mocha Cake',
    description: 'A delicious mocha cake',
    price: 160000,
    imageUrl:
        'https://beyondfrosting.com/wp-content/uploads/2019/03/Chocolate-Mocha-Cake-055-1-768x1152.jpg',
  ),
  TestProduct(
    id: 4,
    name: 'Cheese Cake',
    description: 'A delicious cheese cake',
    price: 220000,
    imageUrl:
        'https://sugarspunrun.com/wp-content/uploads/2023/06/Strawberry-cheesecake-recipe-5-of-8.jpg',
  ),
  TestProduct(
    id: 5,
    name: 'Red Velvet Cake',
    description: 'A delicious red velvet cake',
    price: 400000,
    imageUrl:
        'https://handletheheat.com/wp-content/uploads/2013/04/red-velvet-cake-recipe-SQUARE-1536x1536.jpg',
  ),
];
