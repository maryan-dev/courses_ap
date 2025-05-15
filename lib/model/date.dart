class Course {
  final String image;
  final String title;
  final String text;
  final String howManyCourses;
  final int price;

  Course({
    required this.image,
    required this.title,
    required this.text,
    required this.howManyCourses,
    required this.price,
  });
}

List<Course> courses = [
  Course(
    title: "Arts & Drawing",
    text: "Drawing And Point Arts",
    howManyCourses: "36 videos",
    price: 40,
    image: "assets/prog-removebg-preview.png",
  ),
  Course(
    title: "Mobile Apps",
    text: "Dart & Flutter courses",
    howManyCourses: "60 videos",
    price: 40,
    image: "assets/user-experience-concept-ux-ui-wireframe.png",
  ),
  Course(
    title: "Finance",
    text: "Financial Management ",
    howManyCourses: "45 videos",
    price: 50,
    image: "assets/Medium web image-03 .jpg", // Replace with actual image
  ),
  Course(
    title: "Java Programming",
    text: "Java &Programming",
    howManyCourses: "72 videos",
    price: 55,
    image: "assets/mbielapp.png", // Replace with actual image
  ),
  Course(
    title: "Graph Design",
    text: "UI/ux & vidoe editing ",
    howManyCourses: "50 videos",
    price: 45,
    image: "assets/flat-university-concept.png", // Replace with actual image
  ),
];
