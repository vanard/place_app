class Place {
  final int id, review;
  final String name, category, location, description;
  final List<String> photos;
  final double price, rate;

  Place({
    required this.id,
    required this.photos,
    required this.name,
    required this.category,
    required this.location,
    required this.description,
    required this.review,
    required this.price,
    required this.rate,
  });
}

List<Place> placeDestination = [
  Place(
      id: 0,
      name: "Sacred Monkey Forest Sanctuary",
      category: "popular",
      location: "Ubud, Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/49/31/ed/photo5jpg.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/8e/bb/04/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/8e/bb/1a/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/35/fe/0c/feeding-time.jpg?w=1000&h=-1&s=1",
      ],
      description: "Interact with long-tailed macaques in their natural habitat in the peaceful ambience of Bali’s lush forests. The Sacred Monkey Forest Sanctuary is home to over 1,200 monkeys. As you walk alongside them, you can also check out all the elaborate temples in the area. While guides are always on watch, keep an eye on your belongings and avoid bringing both food and water bottles along. The sanctuary is open daily and an entrance fee is required. You might want to combine your visit to the sanctuary with other attractions in Ubud, including the rice terraces and ancient landmarks. – Tripadvisor",
      review: 0,
      price: 18.00,
      rate: 4.0),
  Place(
      id: 1,
      name: "Waterbom Bali",
      category: "popular",
      location: "Kuta, Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/e3/17/70/the-oasis-gardens-area.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/38/17/fc/waterbom-bali.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/38/17/dc/waterbom-bali.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/e3/17/6c/flow-rider-come-enjoy.jpg?w=1000&h=-1&s=1"
      ],
      description: "Exciting water slides slice through 3.8 hectares of landscaped tropical parks providing hours of fun and entertainment for the young and young at heart! World-class slides and rides are built and maintained to strict international safety standards. The advanced salt chlorination technique is soft on the environment and on your skin. The ultimate escape to relaxation or thrills… Whatever satisfies the soul most! A globally acclaimed waterpark that guarantees a day of fun!!",
      review: 0,
      price: 37.43,
      rate: 4.5),
];

List<Place> popular = placeDestination.where((element) => element.category == "popular").toList();

List<Place> recomend = placeDestination.where((element) => element.category == "recomend").toList();