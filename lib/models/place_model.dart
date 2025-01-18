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
      description:
          "Interact with long-tailed macaques in their natural habitat in the peaceful ambience of Bali’s lush forests. The Sacred Monkey Forest Sanctuary is home to over 1,200 monkeys. As you walk alongside them, you can also check out all the elaborate temples in the area. While guides are always on watch, keep an eye on your belongings and avoid bringing both food and water bottles along. The sanctuary is open daily and an entrance fee is required. You might want to combine your visit to the sanctuary with other attractions in Ubud, including the rice terraces and ancient landmarks. – Tripadvisor",
      review: 35532,
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
      description:
          "Exciting water slides slice through 3.8 hectares of landscaped tropical parks providing hours of fun and entertainment for the young and young at heart! World-class slides and rides are built and maintained to strict international safety standards. The advanced salt chlorination technique is soft on the environment and on your skin. The ultimate escape to relaxation or thrills… Whatever satisfies the soul most! A globally acclaimed waterpark that guarantees a day of fun!!",
      review: 17409,
      price: 37.43,
      rate: 4.5),
  Place(
      id: 2,
      name: "Sanur Beach",
      category: "popular",
      location: "Denpasar, Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/9d/70/be/photo4jpg.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/be/22/ac/sunrise-at-sanur.jpg?w=900&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/6b/34/05/sanur-beach.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/71/de/a3/local-art-shop-on-the.jpg?w=1000&h=-1&s=1"
      ],
      description:
          "The Sanur Beach Promenade is lined with brightly painted outrigger boats along the water's edge, and good restaurants and cafes opposite. Treat yourself to a massage offered by one of the many masseuses with divans on the sand.",
      review: 8316,
      price: 19.00,
      rate: 4.0),
  Place(
      id: 3,
      name: "Seminyak Beach",
      category: "popular",
      location: "Seminyak, Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/3d/95/61/20181008-183403-largejpg.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/b1/22/66/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/92/24/b9/sunset.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/39/d0/24/caption.jpg?w=1000&h=-1&s=1"
      ],
      description:
          "Seminyak Beach is a beautiful white sandy beach situated in north of Legian Beach. The white sand stretching 3 km from Tuban area has made it a fascination for tourists to visit this place. Seminyak Beach is favored by the great wave that is ideally for surfing adventures hence many surfers visit this beach to conquer the waves and enjoy the surf adventures.",
      review: 5737,
      price: 25.00,
      rate: 4.0),
  Place(
      id: 11,
      name: "Best of Ubud Full-Day Tour with Jungle Swing",
      category: "recomend",
      location: "Ubud, Bali, Indonesia",
      photos: [
        "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/06/6a/e9/be.jpg",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/82/b1/94/caption.jpg?w=1000&h=-1&s=1",
        "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/09/aa/6e/a5.jpg",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/7e/08/b7/caption.jpg?w=1000&h=-1&s=1"
      ],
      description:
          "Hit the Ubud highlights in just a day, without the self-drive risks or group delays, on this private guided tour. Traveling direct from your door, see Ubud Monkey Forest, with its cheeky macaques, stroll through Tegalalang Rice Terrace, admire Tegenungan Waterfall, and soar on a jungle swing.",
      review: 6907,
      price: 59.00,
      rate: 5.0),
  Place(
      id: 12,
      name: "Bali Instagram Tour: The Most Famous Spots",
      category: "recomend",
      location: "Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/81/4e/bf/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/81/4e/be/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/7a/5e/70/caption.jpg?w=900&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/7a/5e/72/caption.jpg?w=900&h=-1&s=1"
      ],
      description:
          "Hit the Ubud highlights in just a day, without the self-drive risks or group delays, on this private guided tour. Traveling direct from your door, see Ubud Monkey Forest, with its cheeky macaques, stroll through Tegalalang Rice Terrace, admire Tegenungan Waterfall, and soar on a jungle swing.",
      review: 2363,
      price: 114.00,
      rate: 5.0),
  Place(
      id: 13,
      name: "Nusa Penida All-Inclusive Day Trip",
      category: "recomend",
      location: "Bali, Indonesia",
      photos: [
        "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/0c/ea/ed.jpg",
        "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/03/7f/d8.jpg",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/72/d0/11/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/72/cf/3a/caption.jpg?w=1000&h=-1&s=1"
      ],
      description:
          "Penida Island is hard to miss. See the best of this undeveloped isle in just a day on this convenient all-inclusive package, with private transfers from your hotel to the fast boat, and a private driver on Penida. Capture Broken Beach (Pasih Uug), Angel’s Billabong, and Kelingking Beach, and enjoy lunch and lounging time on the white sands of Crystal Bay.",
      review: 4921,
      price: 96.98,
      rate: 5.0),
  Place(
      id: 14,
      name: "Purpa Fine Art Gallery Seminyak",
      category: "recomend",
      location: "Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/0f/b2/98/photo0jpg.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/4a/ac/16/photo2jpg.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/4a/ac/14/photo0jpg.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/03/e9/2e/our-beautiful-art-from.jpg?w=1000&h=-1&s=1"
      ],
      description:
          "Purpa Fine Art Gallery offers a unique collection of contemporary art by both established and emerging artists. We have represented most of the artists, not only Indonesian artists but artists of all nationalities who live in Bali or spend time here. Some of the artists are now recognized worldwide such as Walter Spies, Antonio Blanco, Hans Snell, I Gusti Nyoman Lempad, Miguel Covarrubias, Arie Smit, Krijono and many others. It has been our goal to work with our artists for the long term, assisting them through their careers by exhibiting their works at our gallery and placing them in prominent collections. We strive to present works by emerging and mid career artists that inspire, excite, and intrigue our diverse clientele.",
      review: 132,
      price: 32.65,
      rate: 5.0),
  Place(
      id: 15,
      name: "Nyaman Gallery",
      category: "recomend",
      location: "Bali, Indonesia",
      photos: [
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/d2/73/b7/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/d2/73/bb/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/d2/73/bc/caption.jpg?w=1000&h=-1&s=1",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/d2/73/b6/caption.jpg?w=1000&h=-1&s=1"
      ],
      description:
          "Nyaman Gallery is the first international contemporary art gallery in Bali. Located in the buzzing heart of Seminyak, one of the busiest areas on the island, it represents both local and international artists, all carefully selected and uniquely talented. Nyaman Gallery combines modern and traditional vibes, exhibiting an eclectic range of artworks: from street art and urban photography to traditional sculptures, from enchanting surrealism to experimental arts. 'Nyaman' means comfortable in the Indonesian language. Carrying this word as our philosophy, we offer an authentic experience in enjoying the Indonesian and contemporary arts.",
      review: 164,
      price: 28.34,
      rate: 4.5),
];

List<Place> popular =
    placeDestination.where((element) => element.category == "popular").toList();

List<Place> recomend = placeDestination
    .where((element) => element.category == "recomend")
    .toList();
