import 'package:get/get.dart';

import '../../../resource/app_constant/import_list.dart';

class SearchDataController extends GetxController {
  final searchController = TextEditingController();

  var filteredSuggestions = <String>[].obs;

  void filterSearch(String query) {
    final lower = query.toLowerCase();
    filteredSuggestions.value = allSuggestions
        .where((item) => item.toLowerCase().contains(lower))
        .toList();
  }

  @override
  void onInit() {
    super.onInit();
    filteredSuggestions.value = allSuggestions;
  }
}


final allSuggestions = [
  // Adidas-related suggestions
  "Adidas Trainers",
  "Adidas trousers",
  "Adidas",
  "Adidas Originals",
  "Adidas Gazelle",
  "Women Adidas",

  // Other brands and categories
  "Nike Running Shoes",
  "Nike Air Max",
  "Nike T-Shirts",
  "Nike Sportswear",
  "Nike Sneakers",
  "Women Nike Apparel",

  // Sports and fitness
  "Basketball Shoes",
  "Gym Equipment",
  "Sports Wear for Women",
  "Football Cleats",
  "Yoga Mats",

  // Fashion and accessories
  "Leather Jackets",
  "Vintage Sunglasses",
  "Women Handbags",
  "Men's Wristwatch",
  "Men's Suits",
  "Fashion Accessories",

  // Tech and gadgets
  "Smartphones",
  "Laptop Bags",
  "Bluetooth Headphones",
  "Apple Watch",
  "Wireless Earbuds",

  // Food and beverages
  "Organic Food",
  "Protein Supplements",
  "Coffee Beans",
  "Tea Collection",
  "Healthy Snacks",

  // Home and kitchen
  "Home Decor",
  "Smart Home Devices",
  "Kitchen Appliances",
  "Bedroom Furniture",
  "Living Room Sets",

  // Kids and toys
  "Kids Shoes",
  "Toys for Toddlers",
  "Kids Books",
  "Baby Clothes",
  "Children's Playsets",

  // Travel and adventure
  "Camping Gear",
  "Travel Backpacks",
  "Adventure Sports Gear",
  "Portable Chargers",
  "Travel Accessories",

  // Pet supplies
  "Pet Food",
  "Dog Toys",
  "Cat Litter",
  "Pet Beds",
  "Pet Grooming Products",

  // Home improvement
  "DIY Tools",
  "Furniture Sets",
  "Gardening Supplies",
  "Home Lighting",
  "Wall Art"
];
