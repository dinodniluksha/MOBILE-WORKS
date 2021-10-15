class OnboardingContent {
  String image;
  String title;
  String text;

  OnboardingContent({this.image = "", this.text = "", this.title = ""});
}

List<OnboardingContent> onboardingContent = [
  OnboardingContent(
      title: "Find food you love",
      text:
          "Discover the best menus from over 100 cuisines and over 1000 restaurants.",
      image: "assets/images/find_your_food.png"),
  OnboardingContent(
      title: "Fast delivery",
      text:
          "Fast & free delivery to your home or office. We will deliver it, wherever you are!",
      image: "assets/images/fast_delivery.png"),
  OnboardingContent(
      title: "Enjoy the experience",
      text:
          "Craving for your favourite food? Takeaway will deliver it, wherever you are!",
      image: "assets/images/enjoy_expirience.png"),
];
