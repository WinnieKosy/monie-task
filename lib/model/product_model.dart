class Product {
  final String category;
  final String itemName;
  final double itemPrice;
  final double itemRating;
  final int itemViews;
  final List<String> itemPictures;
  final int totalReviews;
  final int totalSold;
  final String brand;
  final String condition;
  final bool isFavorite;
  final String heavy;
  final String color;
  final String material;
  final String description;
  final String sellerName;
  final String sellerImage;
  final String sellerAddress;
  final String timeActive;
  final String delivery;
  final String shipping;
  final String arrival;
  final List<Review> reviews;

  Product({
    required this.category,
    required this.itemName,
    required this.itemPrice,
    required this.itemRating,
    required this.itemViews,
    required this.itemPictures,
    required this.totalReviews,
    required this.totalSold,
    required this.brand,
    required this.condition,
    required this.heavy,
    required this.color,
    required this.material,
    required this.description,
    required this.sellerName,
    required this.sellerImage,
    required this.sellerAddress,
    required this.timeActive,
    required this.delivery,
    required this.shipping,
    required this.arrival,
    required this.reviews,
    required this.isFavorite,
  });
}

class Review {
  final String image;
  final String name;
  final double ratings;
  final String text;
  final String timePosted;
  final List<String> niceDescriptions;

  Review({
    required this.image,
    required this.name,
    required this.ratings,
    required this.text,
    required this.timePosted,
    required this.niceDescriptions,
  });
}


List<Product> products = [
  Product(
    category: 'T-Shirts',
    itemName: 'High Quality Italian Merino Wool',
    itemPrice: 130.99,
    itemRating: 4.3,
    itemViews: 1500,
    itemPictures: [
      'https://s.alicdn.com/@sc04/kf/A6b42d15689084824b445e20ccb4191b30.png_960x960.png',
      'https://s.alicdn.com/@sc04/kf/Aba0fc93d9d1a4dbe97a2b32f107ce8b8D.png_960x960.png',
      'https://s.alicdn.com/@sc04/kf/Ac233d97422004459864b7cffc4869ea4R.png_960x960.png',
      'https://s.alicdn.com/@sc04/kf/Ad77b3cf369764a3ba3653a643747f106Z.jpg_960x960.jpg'
    ],
    totalReviews: 3,
    totalSold: 100,
    brand: 'Lanaioli',
    condition: 'New',
    heavy: '200Kg',
    color: 'Brown',
    material: 'Merino Wool',
    description: '<p> This Nike Men\'s Legend Short Sleeve Tee is made of soft cotton material that provides all-day comfort.</p>',
    sellerName: 'Cashmere',
    sellerImage: 'https://example.com/images/nike_logo.jpg',
    sellerAddress: '123 Main Street, Latina, Italy',
    timeActive: 'Posted 2 hours ago',
    delivery: 'Free Shipping',
    shipping: 'Ships within 24 hours',
    arrival: 'Estimated arrival: 2-3 business days',
    isFavorite: false,
    reviews: [
      Review(
        image: 'https://example.com/images/user1.jpg',
        name: 'John Doe',
        ratings: 4.5,
        text: 'This T-shirt is amazing, nice material and very comfortable.',
        timePosted: 'Posted 1 day ago',
        niceDescriptions: ['Nice material', 'Great design', 'Comfortable'],
      ),
      Review(
        image: 'https://example.com/images/user2.jpg',
        name: 'Jane Smith',
        ratings: 3.0,
        text: 'The T-shirt is okay, but the material is a bit thin for my liking.',
        timePosted: 'Posted 3 days ago',
        niceDescriptions: ['Good design', 'Comfortable fit'],
      ),
    ],
  ),
  Product(
    category: 'Hoodies',
    itemName: 'High Quality Men\'s Hoodies Sweatshirts',
    itemPrice: 49.99,
    itemRating: 4.8,
    itemViews: 220,
    itemPictures: [
      'https://s.alicdn.com/@sc04/kf/H0e4d03a4de924c00ad6ad6d2ee2e1d85i.jpg_250x250.jpg',
      'https://s.alicdn.com/@sc04/kf/H0e4d03a4de924c00ad6ad6d2ee2e1d85i.jpg_250x250.jpg',
      'https://s.alicdn.com/@sc04/kf/Hdc1a1ab7739b42a59fd063e1ed7a900bz.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H919ec26af898474bb91279ded3718e99I.jpg_960x960.jpg'
    ],
    totalReviews: 12,
    totalSold: 30,
    brand: 'Adidas',
    condition: 'New',
    heavy: '200Kg',
    color: 'Grey',
    material: 'Polyester',
    description: '<p> This Adidas Men\'s Originals Trefoil Hoodie is made of soft cotton material that provides all-day comfort.</p>',
    sellerName: 'OEM Store',
    sellerImage: 'https://example.com/images/adidas_logo.jpg',
    sellerAddress: '456 Oak Street, Zhejiang, China',
    timeActive: 'Posted 1 hour ago',
    delivery: 'Free Shipping',
    shipping: 'Ships within 24 hours',
    arrival: 'Estimated arrival: 3-5 business days',
    isFavorite: true,
    reviews: [
      Review(
        image: 'https://example.com/images/user3.jpg',
        name: 'Sarah Lee',
        ratings: 5.0,
        text: 'This hoodie is awesome! Great quality and very stylish.',
        timePosted: 'Posted 2 days ago',
        niceDescriptions: ['Great quality', 'Stylish', 'Comfortable'],
      ),
      Review(
        image: 'https://example.com/images/user4.jpg',
        name: 'Tom Wang',
        ratings: 4.0,
        text: 'I love this hoodie! The material is so soft and the fit is perfect.',
        timePosted: 'Posted 5 days ago',
        niceDescriptions: ['Soft material', 'Perfect fit', 'Comfortable'],
      ),
    ],
  ),
  Product(
    category: 'T-Shirts',
    itemName: 'Plus Size T-shirts Men Casual Hiphop ',
    itemPrice: 29.99,
    itemRating: 4.6,
    itemViews: 200,
    isFavorite: false,
    itemPictures: [
      'https://s.alicdn.com/@sc04/kf/A84c6d4ccc87a4a7281cab3ae52b6b6bf5.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/Ae976afb90a8c42f7af4de189cfa491632.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/A571e06f691424a99860485ac83ba926fH.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/A3bf9d08d2da841c6a9f5582c7992c0c5I.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/A2ad71ba52f0a451ba245dc2ad2d45a93F.jpg_960x960.jpg'
    ],
    totalReviews: 12,
    totalSold: 25,
    brand: 'AMALFI',
    condition: 'New',
    heavy: '200Kg',
    color: 'White',
    material: 'Polyester',
    description: '<p> The Adidas Men\'s Performance Logo Tee is perfect for any sports activity. The lightweight material and sweat-wicking technology will keep you comfortable all day long.</p>',
    sellerName: 'Adidas Store',
    sellerImage: 'https://example.com/images/adidas_logo.jpg',
    sellerAddress: '456 High Street, Pakistan',
    timeActive: 'Posted 5 hours ago',
    delivery: 'Free Shipping',
    shipping: 'Ships within 24 hours',
    arrival: 'Estimated arrival: 2-3 business days',
    reviews: [
      Review(
        image: 'https://example.com/images/user3.jpg',
        name: 'Mark Johnson',
        ratings: 4.7,
        text: 'I love this shirt! The material is great and it fits perfectly.',
        timePosted: 'Posted 2 days ago',
        niceDescriptions: ['Great fit', 'Excellent material'],
      ),
      Review(
        image: 'https://example.com/images/user4.jpg',
        name: 'Emily Davis',
        ratings: 4.2,
        text: 'This is a good shirt for working out, but it runs a little small.',
        timePosted: 'Posted 4 days ago',
        niceDescriptions: ['Good for working out', 'Sweat-wicking technology is effective'],
      ),
    ],
  ),
  Product(
    category: 'Short',
    itemName: 'High Quality Men Shorts Summer Casual',
    itemPrice: 130.99,
    itemRating: 4.3,
    isFavorite: false,
    itemViews: 1500,
    itemPictures: [
      'https://s.alicdn.com/@sc04/kf/Hee4dfd14e5b94f86ac05e3c93d708bf2B.jpg_250x250.jpg',
      'https://s.alicdn.com/@sc04/kf/H36ac770124354fcbb871dee89ba5b875J.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H9e5f639b32914df5a6d10d869989f023I.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H4de6e879f6c94b36a3ccf926310e884bX.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/He7a67b88389c4deab62c697c8b0d0e1a2.jpg_960x960.jpg'
    ],
    totalReviews: 3,
    totalSold: 100,
    brand: 'OEM&ODM',
    condition: 'New',
    heavy: '200Kg',
    color: 'Brown',
    material: '1Nylon',
    description: "<p>Whether you're heading to the gym or running errands, our \"Short for men\" provides the perfect combination of style and comfort. Don't compromise on either and order now!</p>\n",
    sellerName: 'Cashmere',
    sellerImage: 'https://example.com/images/nike_logo.jpg',
    sellerAddress: '123 Main Street, Fujian, China',
    timeActive: 'Posted 2 hours ago',
    delivery: 'Free Shipping',
    shipping: 'Ships within 24 hours',
    arrival: 'Estimated arrival: 2-3 business days',
    reviews: [
      Review(
        image: 'https://example.com/images/user1.jpg',
        name: 'John Doe',
        ratings: 4.5,
        text: 'This T-shirt is amazing, nice material and very comfortable.',
        timePosted: 'Posted 1 day ago',
        niceDescriptions: ['Nice material', 'Great design', 'Comfortable'],
      ),
      Review(
        image: 'https://example.com/images/user2.jpg',
        name: 'Jane Smith',
        ratings: 3.0,
        text: 'The T-shirt is okay, but the material is a bit thin for my liking.',
        timePosted: 'Posted 3 days ago',
        niceDescriptions: ['Good design', 'Comfortable fit'],
      ),
    ],
  ),
  Product(
    category: 'Short',
    itemName: 'High Quality Men Shorts Summer Casual',
    itemPrice: 130.99,
    itemRating: 4.3,
    itemViews: 1500,
    isFavorite: false,
    itemPictures: [
      'https://s.alicdn.com/@sc04/kf/H2a49fe8db5ca45ee913e827f456ba0fcr.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H6404d8643d9e40868fc172153a22e8f3j.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H37622da27aee470296d4c44a68a2937eW.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H76a5378e18fd4f198ae78a899b247b7dS.jpg_960x960.jpg',
      'https://s.alicdn.com/@sc04/kf/H573403b5059b47a99fd0dffac21c377bh.jpg_960x960.jpg',
    ],
    totalReviews: 3,
    totalSold: 100,
    brand: 'Custom',
    condition: 'New',
    heavy: '200Kg',
    color: 'Accept Custom',
    material: 'Polyester',
    description: "<p> Our DK2001 Men's Shorts are the perfect choice for those looking for a versatile pair of shorts. The hot shorts pattern and mid-waist type with a drawstring closure provide a formal yet comfortable look. The sustainable material makes them an excellent choice for any kind of weather.</p>",
    sellerName: 'Xiaosen',
    sellerImage: 'https://example.com/images/nike_logo.jpg',
    sellerAddress: '123 Main Street, Guangdong, China',
    timeActive: 'Posted 2 hours ago',
    delivery: 'Free Shipping',
    shipping: 'Ships within 24 hours',
    arrival: 'Estimated arrival: 2-3 business days',
    reviews: [
      Review(
        image: 'https://example.com/images/user1.jpg',
        name: 'John Doe',
        ratings: 4.5,
        text: 'This T-shirt is amazing, nice material and very comfortable.',
        timePosted: 'Posted 1 day ago',
        niceDescriptions: ['Nice material', 'Great design', 'Comfortable'],
      ),
      Review(
        image: 'https://example.com/images/user2.jpg',
        name: 'Jane Smith',
        ratings: 3.0,
        text: 'The T-shirt is okay, but the material is a bit thin for my liking.',
        timePosted: 'Posted 3 days ago',
        niceDescriptions: ['Good design', 'Comfortable fit'],
      ),
    ],
  ),
  // Add more products here...
];
