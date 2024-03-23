import 'package:flutter/material.dart';

class InterestsScreen extends StatefulWidget {
  InterestsScreen({Key? key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  late int n;
  var categories = [
    'Food',
    'India',
    'Sports',
    'Technology',
    'Business & Finance',
    'Science & Learning',
    'Travel & Outdoors',
    'Animals & Awwws',
    'Hobbies'
  ];
  var subCategories = {
    'Food': [
      'Indian Food',
      'Vegetarian Food',
      'Vegan Food',
      'Healthy Food',
      'Easy cooking',
      'Food hacks',
    ],
    'India': [
      'Maharashtra',
      'Hyderabad',
      'Delhi',
      'Kerala',
      'Karnataka',
      'Assam',
      'Tripura',
      'Ayodhya',
      'Ahammedabad',
      'Haryana',
      'Chennai',
      'Bihar',
      'West Bengal',
      'Rajasthan',
      'Lucknow',
    ],
    'Sports': [
      'M S Dhoni',
      'Mumbai Indians',
      'Cricket',
      'Hockey',
      'Indian Cricket',
      'Badminton',
      'Indian Worldcup',
      'Football',
      'Indian Premier League',
      'Sports',
      'Virat Kohli',
      'Sachin Tendulkar',
    ],
    'Technology': [
      'Gadgets',
      'Futurology',
      'Programming',
      'Virtual Reality',
      'Artificial Intelligence',
      'Web Development',
      'Tech News'
    ],
    'Business & Finance': [
      'Investing',
      'Business',
      'Finance tips',
      'Crypto',
      'Entrepreneurship',
      'Startups',
      'NFT',
      'Savings',
      'Debit'
    ],
    'Science & Learning': [
      'Biology',
      'Chemistry',
      'Psychology',
      'Sociology',
      'Anthropology',
      'Economics',
      'Political Science',
      'Mathematics',
      'Computer Science',
      'Logic',
      'Behaviorism',
      'Constructivism',
      'Cognitive Learning Theories',
      'Experiential Learning',
      'Inquiry-Based Learning'
    ],
    'Travel & Outdoors': [
      'Mountaineering',
      'Trekking',
      'Rock Climbing',
      'Rafting',
      'Skiing/Snowboarding',
      'Hiking',
      'Camping',
      'Birdwatching',
      'Wildlife Photography',
      'Botanical Exploration',
    ],
    'Animals & Awwws': [
      'Dogs',
      'Cats',
      'Rabbits',
      'Hamsters',
      'Birds',
      'Fish',
      'Reptiles',
      'Rodents',
      'Puppies',
      'Kittens',
      'Ducklings',
      'Chicks',
      'Fawns',
      'Cubs',
      'Playful animals',
      'Animal friendships',
      'Heartwarming interactions',
      'Animals showing affection',
    ],
    'Hobbies': [
      'Hiking',
      'Camping',
      'Fishing',
      'Gardening',
      'Birdwatching',
      'Photography',
      'Drawing',
      'Painting',
      'Sculpting',
      'Pottery',
      'Crafting',
      'Knitting',
      'Crocheting',
      'Sewing',
      'Woodworking',
      'DIY projects',
      'Playing a musical instrument',
      'Singing',
      'Acting',
      'Dancing',
      'Running',
      'Cycling',
      'Yoga',
      'Swimming',
      'Tennis',
      'Martial arts'
    ],
  };

  @override
  void initState() {
    super.initState();
    n = categories.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 100),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back, size: 35, color: Colors.black),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Image.asset(
                'assets/images/reddit_icon.png',
                height: 40,
              ),
              SizedBox(height: 10),
              Text(
                'Interests',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: n,
                itemBuilder: (BuildContext context, int index) {
                  String category = categories[index];
                  List<String>? subCategoryList = subCategories[category];

                  return Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(height: 10),
                        if (subCategoryList != null)
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: subCategoryList
                                .map((subCategory) => Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        subCategory,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
