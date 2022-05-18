class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Bishal Subedi",
    source: "Linkedin",
    text:
        "I have had the pleasure of working with Anup on two flutter projects and what strikes me the most about his work is his ability to write clean and reusable codes with best practices. He is hardworking and makes it so easy to transcribe ideas into beautiful and testable flutter apps.",
  ),
  Recommendation(
    name: "Sahid Ali",
    source: "Facebook",
    text:
        "Anup has become the great assets for our project. He had helped me for the firebase implementation in flutter.",
  ),
  Recommendation(
    name: "Asif Tej",
    source: "Messenger",
    text:
        "I like your way you doing your project. After I watch this I like and that you are learning from me and helping other for the projects",
  ),
  Recommendation(
    name: "Roshan Shetty",
    source: "YouTube",
    text:
        "Very straightforward, intermediate brother! It will be great if you add some statemanagement knowledge in your book",
  ),
];
