import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Best Casino Hotels in Canada',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://your-site-url.com'); // Replace with your actual URL
    if (!await launchUrl(url, mode: LaunchMode.platformDefault)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top image section with 1200px spacing
            GestureDetector(
              onTap: _launchURL,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.network(
                  'https://i.postimg.cc/kXtKysW5/freepik-a-popup-window-with-the-question-are-you-18-or-old-72225.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: 200,
                      color: Colors.grey[800],
                      child: const Center(
                        child: Text(
                          'Image not available',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            
            // Spacing of approximately 1200px
            const SizedBox(height: 1200),
            
            // Content section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    'Best Casino hotels in Canada',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // ABOUT Section
                  const Text(
                    'ABOUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Casino hotels in Canada blend excitement, luxury, and outstanding hospitality, attracting guests seeking both entertainment and relaxation. These casino hotels provide a premier gaming experience with a variety of slot machines, poker tables, and roulette games set in a lively and upscale atmosphere. The hospitality at casino hotels is top-tier, ensuring that visitors receive exceptional service, stylish accommodations, and a stay to remember. Designed for elegance and comfort, casino hotels in Canada feature spacious rooms with modern amenities, allowing guests to unwind while staying close to the casino action. Many casino hotels boast gourmet dining options, where exquisite cuisine enhances the overall luxury of the experience. Wellness and spa facilities in casino hotels provide the perfect escape for relaxation after an exciting evening of gaming. Entertainment plays a significant role in casino hotels, with live shows, concerts, and special events creating an unforgettable atmosphere. Whether casual players or high rollers, guests at casino hotels can enjoy a gaming environment tailored to their preferences.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Fallsview Resort Casino
                  const Text(
                    'Fallsview Resort Casino- Niagara Falls, Ontario',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Gaming: Fallsview Resort boasts an impressive gaming experience, with over 3,000 slot machines and 130 table games. From classic favorites like blackjack and roulette to modern variations and specialty games, there is something for every taste and skill level. The lively atmosphere of the upstairs and attentive staff create an immersive gaming experience that will keep visitors coming back for more. Casino Hotel Amenities: Accommodations at Fallsview Resort are nothing short of luxurious, with spacious rooms and suites offering stunning views of Niagara Falls. Guests can enjoy a variety of amenities, including a full-service spa, fitness center, and indoor pool, providing the perfect blend of relaxation and fun during their stay. Dining Options: With more than a dozen on-site dining options, Fallsview Resort offers a culinary experience for every taste. From fine dining restaurants serving gourmet dishes to casual eateries offering quick bites and comfort food, guests can sample a variety of flavors and cuisines without leaving the resort. General Atmosphere: Located in the heart of Niagara Falls, Fallsview Resort exudes an atmosphere of excitement and sophistication. Whether you\'re exploring the bustling upstairs, relaxing in the spa, or dining at one of the resort\'s acclaimed restaurants, you\'ll be surrounded by the natural beauty and vibrant energy that makes Niagara Falls a world-renowned destination.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // River Rock Casino Resort
                  const Text(
                    'River Rock Casino Resort- Richmond, British Columbia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Gaming: River Rock Resort offers a wide variety of gaming options, with over 1,100 slot machines and 39 table games to choose from. From classic games like blackjack and poker to modern variations and electronic slots, there is something for every type of player. The spacious layout and lively atmosphere create an exciting gaming environment for all ages. Casino Hotel Amenities: River Rock Resort accommodations are designed to provide guests with the utmost comfort and luxury. The casino hotel offers stylishly appointed rooms and suites, along with a variety of amenities, including a fitness center, indoor pool, and spa. Guests can also take advantage of the resort\'s convenient location, which provides easy access to shopping, dining, and entertainment in Richmond and beyond. Dining Options: River Rock Resort offers a variety of on-site dining options to suit every taste and occasion. From fine dining restaurants serving gourmet cuisine to casual eateries serving international flavors and local favorites, guests can choose from a variety of dining options without ever leaving the resort. General Atmosphere: Located along the scenic Fraser River, River Rock Resort offers a tranquil retreat from the hustle and bustle of everyday life. Whether you\'re exploring the playground, relaxing in the spa, or dining at one of the resort\'s acclaimed restaurants, you\'ll be surrounded by the natural beauty and laid-back atmosphere that makes British Columbia a sought-after destination for travelers from around the world. world. world.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // The Montreal Casino
                  const Text(
                    'The Montreal Casino- Montreal, Quebec',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Gaming: De Montréal offers a wide range of gaming options, with over 3,000 slot machines and 100 gaming tables. From classic games like blackjack and roulette to modern variations and specialty games, there is something for every taste and skill level. The lively atmosphere and attentive staff create an immersive gaming experience that will keep visitors entertained throughout their stay. Casino Hotel Amenities: Although De Montréal does not have an on-site casino hotel, it is conveniently located near a number of downtown Montreal accommodations. Visitors can easily access nearby casino hotels and enjoy the city\'s vibrant nightlife, dining, and cultural attractions. Many casino hotels in the area offer special packages and deals for guests, making it easy to plan a memorable Montreal stay. Dining options: With a variety of restaurants and bars on site, De Montréal offers a diverse culinary experience for its guests. From gourmet to casual dining, visitors can enjoy a variety of delicious dishes prepared by skilled chefs using fresh, local ingredients. Dining options range from upscale restaurants with panoramic city views to cozy cafes and lounges, perfect for a quick bite or a relaxing drink. General Atmosphere: Located in the heart of Montreal on the picturesque Île Notre-Dame, De Montréal offers a dynamic and immersive gaming experience in a stunning waterfront setting. With its spacious gaming floor, upscale dining options and world-class entertainment, it attracts visitors from near and far who are looking for excitement and adventure. Whether exploring the gaming tables, savoring gourmet cuisine or admiring the stunning city views, De Montréal offers an unforgettable experience for all ages.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Rama Casino Resort
                  const Text(
                    'Rama Casino Resort -Orillia, Ontario Gaming',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Nestled amidst the scenic Lake Country of Ontario, Rama Resort offers a wide range of gaming options, with over 2,500 slot machines and over 100 table games. From classic games like blackjack and roulette to modern variations and specialty games, there is something for every type of player. The spacious gaming floor and lively atmosphere create an exciting environment for visitors to test their luck and skills. Casino Hotel Amenities: Guests at Rama Resort can enjoy comfortable accommodations in the casino hotel\'s modern rooms and suites, featuring plush bedding and contemporary furnishings. The resort also features amenities such as a fitness center, indoor pool and spa, providing guests with the opportunity to relax and unwind during their stay. Conveniently located near Orillia\'s attractions and outdoor activities, Rama Resort offers the perfect blend of excitement and relaxation for all ages. Dining Options: With multiple on-site dining options, Rama Resort offers a culinary experience for every taste. From gourmet dining to casual dining, guests can enjoy a variety of delicious dishes prepared by skilled chefs using locally sourced ingredients. Whether it\'s a steak dinner, a sushi platter, or a classic pub meal, Rama Resort has something for everyone. General Atmosphere: Located in the heart of Ontario\'s Lake District, Rama Resort offers a calm and inviting atmosphere for rest and relaxation. Whether you\'re exploring the playground, relaxing in the spa, or dining at one of the resort\'s restaurants, you\'ll be surrounded by the beauty of nature and the tranquil atmosphere that makes Rama Resort a sought-after destination for travelers from near and far.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Additional content
                  const Text(
                    'The architectural design of casino hotels blends contemporary and classic elements, enhancing the overall ambiance of sophistication. Business travelers also benefit from casino hotels, as many provide high-end conference spaces and event venues. The professional staff at casino hotels is committed to delivering seamless service, ensuring a comfortable and hassle-free stay. Exclusive VIP sections in casino hotels cater to those who prefer private, high-stakes gaming experiences. With all-inclusive services, casino hotels offer everything from entertainment and fine dining to relaxation in one convenient location. Canada casino hotels draw visitors from around the world, combining gaming excitement with the country\'s rich cultural appeal. Many casino hotels provide attractive promotions and special packages, adding extra value to the guest experience. The design of casino hotels ensures a seamless mix of comfort, elegance, and thrilling gaming options, making them a preferred choice for travelers. These casino hotels contribute significantly to Canada tourism industry, bringing in visitors who appreciate both luxury and first-class service. The gaming areas in casino hotels feature state-of-the-art technology, ensuring an enjoyable and fair gaming session. Guests can explore nearby attractions while enjoying the convenience and opulence of a casino hotel stay. By combining dining, entertainment, gaming, and relaxation, casino hotels create an all-in-one destination for an exceptional travel experience. Whether for a short getaway or an extended vacation, casino hotels in Canada offer an unmatched level of hospitality.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  // Copyright
                  const Center(
                    child: Text(
                      'Copyright © 2025 Canada Guides | All rights reserved',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  // Disclaimer
                  const Text(
                    'Disclaimer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'This site contains information about hotels that include casino services. The content is intended exclusively for individuals aged 21 or over. We encourage responsible gambling and recommend that you be well-informed before participating in any gambling activities.\n\nThe information is provided for general informational purposes only. We do not assume responsibility for any losses or consequences resulting from the use of the content published on this site.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}