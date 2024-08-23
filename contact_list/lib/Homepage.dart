import 'package:contact_list/Contact_View.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  List<Map<String, dynamic>> users = [
    {
      "id": 0,
      "username": "user1",
      "email": "user1@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User1 is a software engineer with a passion for developing innovative programs. Skilled in problem-solving and dedicated to creating efficient code, they enjoy collaborating with others to achieve goals."
    },
    {
      "id": 1,
      "username": "user2",
      "email": "user2@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User2 is a graphic designer who loves turning ideas into visual reality. With a strong eye for detail, they focus on crafting designs that resonate with audiences, combining creativity with technical skill."
    },
    {
      "id": 2,
      "username": "user3",
      "email": "user3@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User3 is a project manager with expertise in leading cross-functional teams. They excel in organizing resources and guiding projects from concept to completion, ensuring timelines are met and objectives are achieved."
    },
    {
      "id": 3,
      "username": "user4",
      "email": "user4@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User4 is a digital marketer with a flair for social media strategy. They specialize in growing online presence and engaging with target audiences, utilizing data-driven tactics to maximize brand impact and reach."
    },
    {
      "id": 4,
      "username": "user5",
      "email": "user5@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User5 is a content writer with a love for storytelling. They have a knack for crafting compelling narratives that captivate readers, whether through blog posts, articles, or creative content that informs and entertains."
    },
    {
      "id": 5,
      "username": "user6",
      "email": "user6@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User6 is an IT specialist with a deep understanding of networks and systems. They focus on maintaining security and efficiency within IT infrastructure, ensuring smooth operations and minimizing downtime across platforms."
    },
    {
      "id": 6,
      "username": "user7",
      "email": "user7@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User7 is a UX/UI designer dedicated to creating intuitive user experiences. They blend artistic creativity with analytical thinking to design interfaces that are both beautiful and functional, enhancing user satisfaction."
    },
    {
      "id": 7,
      "username": "user8",
      "email": "user8@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User8 is a data analyst with a passion for numbers and patterns. They thrive on turning raw data into actionable insights, helping organizations make informed decisions and drive business success through analytics."
    },
    {
      "id": 8,
      "username": "user9",
      "email": "user9@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User9 is a customer service specialist known for their empathy and problem-solving skills. They excel in resolving issues quickly and effectively, ensuring a positive experience for customers and fostering brand loyalty."
    },
    {
      "id": 9,
      "username": "user10",
      "email": "user10@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User10 is a financial analyst with a talent for forecasting and budgeting. They are skilled at analyzing financial data to predict trends and provide strategic advice, helping businesses optimize their financial performance."
    },
    {
      "id": 10,
      "username": "user11",
      "email": "user11@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User11 is a human resources manager with a focus on talent development. They excel in recruiting, training, and retaining top talent, ensuring that the organization has the right people in the right roles to succeed."
    },
    {
      "id": 11,
      "username": "user12",
      "email": "user12@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User12 is a software developer specializing in mobile applications. They enjoy creating apps that are not only functional but also user-friendly, bringing ideas to life on both Android and iOS platforms with precision."
    },
    {
      "id": 12,
      "username": "user13",
      "email": "user13@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User13 is a business consultant with experience in strategic planning. They help companies identify opportunities for growth and efficiency, providing tailored advice and solutions that drive success and long-term sustainability."
    },
    {
      "id": 13,
      "username": "user14",
      "email": "user14@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User14 is a photographer with a passion for capturing moments. Whether through portrait, landscape, or event photography, they aim to tell stories through their lens, creating visual art that resonates with viewers."
    },
    {
      "id": 14,
      "username": "user15",
      "email": "user15@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User15 is an architect with a focus on sustainable design. They are dedicated to creating buildings that are both functional and environmentally friendly, incorporating green practices into their design process."
    },
    {
      "id": 15,
      "username": "user16",
      "email": "user16@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User16 is a teacher with a love for education and inspiring students. They are committed to creating engaging learning environments that encourage curiosity and academic growth, tailoring their approach to individual needs."
    },
    {
      "id": 16,
      "username": "user17",
      "email": "user17@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User17 is a sales manager with a talent for building relationships. They excel in understanding customer needs and providing solutions that drive sales and satisfaction, leading their team to exceed targets consistently."
    },
    {
      "id": 17,
      "username": "user18",
      "email": "user18@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User18 is a researcher with expertise in market analysis. They gather and interpret data to identify trends and consumer behavior, helping businesses make informed decisions and stay competitive in their industry."
    },
    {
      "id": 18,
      "username": "user19",
      "email": "user19@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User19 is a healthcare professional with a focus on patient care. They are dedicated to improving the health and well-being of others, providing compassionate and effective care in a fast-paced medical environment."
    },
    {
      "id": 19,
      "username": "user20",
      "email": "user20@example.com",
      "profileImage": "https://cdn-icons-png.flaticon.com/128/2202/2202112.png",
      "about":
          "User20 is an entrepreneur with a passion for innovation. They have a track record of launching successful startups and are always looking for the next big idea, combining creativity with business acumen to drive growth."
    },
  ];

  @override
<<<<<<<<<<<<<<  ✨ Codeium Command ⭐  >>>>>>>>>>>>>>>>
<<<<<<<  60bc6cfd-b188-4e6e-b8c5-d63f744d093b  >>>>>>>
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: Colors.green[100],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactView(
                              user: users[index],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 218, 247, 220),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    leading: Container(
                      child: Image.network(users[index]["profileImage"]),
                    ),
                    title: Text(users[index]['username']),
                    subtitle: Text(users[index]['email']),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
