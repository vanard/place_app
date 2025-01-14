class OnboardModel {
  String image, name, description;

  OnboardModel({required this.image, required this.name, required this.description});
}

List<OnboardModel> onboarding = [
   OnboardModel(
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/fc/fd/denpasar.jpg?w=1000&h=500',
    name: 'Explore Bali with us.',
    description: description,
  ),
  OnboardModel(
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/9b/2f/be/kuta.jpg?w=1000&h=500',
    name: "Natural Beauty of Bali",
    description: description,
  ),
  OnboardModel(
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/59/d9/1c/caption.jpg?w=1000&h=500',
    name: 'Peacefull Mind in Nature',
    description: description,
  ),
  OnboardModel(
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/ae/df/98/prana-spa.jpg?w=1000&h=500',
    name: 'Cultural Diversity of Bali',
    description: description,
  ),
];

const description = "We Travelin are ready to help you on\nvacation around Bali";