class cors {
  final String image;
  final String title;
  final String text;
  final String howManyCourses;
  final int price;

  cors({
    required this.image,
    required this.title,
    required this.text,
    required this.howManyCourses,
    required this.price,
  });
}

List<cors> mycourses = [
  cors(
    title: "Arts & Drawing",
    text: "Drawing And Point Arts",
    howManyCourses: "69 videos",
    price: 40,
    image: "assets/graphics.png",
  ),
  cors(
    title: "Drawing ",
    text: " vidieo editing  courses",
    howManyCourses: "60 videos",
    price: 40,
    image: "assets/prog-removebg-preview.png",
  ),
  cors(
    title: "Huamntoin ",
    text: "Huamntoin Management ",
    howManyCourses: "45 videos",
    price: 50,
    image: "assets/Medium web image-03 .jpg", // Replace with actual image
  ),
  cors(
    title: "editong  ",
    text: "  point video  editing   ",
    howManyCourses: "79 videos",
    price: 55,
    image: "assets/mbielapp.png", // Replace with actual image
  ),
  cors(
    title: "Graph Design",
    text: "UI/ux & vidoe editing ",
    howManyCourses: "50 videos",
    price: 45,
    image: "assets/flat-university-concept.png", // Replace with actual image
  ),
];
