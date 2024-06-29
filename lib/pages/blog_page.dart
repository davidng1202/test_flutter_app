import 'package:demo_app_1/components/article_card.dart';
import 'package:demo_app_1/models/article.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    List<Article> articles = [
      Article(
        title: 'How covid changed my life, in a better way',
        content: 'Content for the first article',
        createdDate: '2024-06-30',
        authorName: 'John Doe',
        authorAvatarPath: 'assets/images/cat1.jpg',
        articleCoverImage: 'assets/images/covid.jpg',
      ),
      Article(
        title: 'My mom has too many pets',
        content: '', // Empty content
        createdDate: '2024-03-10',
        authorName: 'Jane Doe',
        authorAvatarPath: 'assets/images/cat2.jpg',
        articleCoverImage: 'assets/images/pet.jpg',
      ),
      Article(
        title: 'First time to the beach',
        content: '', // Empty content
        createdDate: '2024-05-02',
        authorName: 'David Nguyen',
        authorAvatarPath: 'assets/images/cat3.jpg',
        articleCoverImage: 'assets/images/beach.jpg',
      ),
      Article(
        title: 'Life in a massive old-tradition western family',
        content: '', // Empty content
        createdDate: '2024-06-22',
        authorName: 'Thinh Nguyen',
        authorAvatarPath: 'assets/images/cat4.jpg',
        articleCoverImage: 'assets/images/family.jpg',
      ),
      Article(
        title: 'Can money buy happiness? Yes, it does',
        content: '', // Empty content
        createdDate: '2024-05-30',
        authorName: 'Quan Le',
        authorAvatarPath: 'assets/images/cat5.jpg',
        articleCoverImage: 'assets/images/money.jpg',
      ),
      Article(
        title: 'Should I quit my job and be a freelancer',
        content: '', // Empty content
        createdDate: '2024-06-20',
        authorName: 'Xay Trong',
        authorAvatarPath: 'assets/images/cat6.jpg',
        articleCoverImage: 'assets/images/work.jpg',
      ),
    ];
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                  child: Image.asset(
                'assets/images/cat1.jpg',
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              )),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome back,',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(45, 149, 150, 1),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 40,
                    color: Color.fromRGBO(45, 149, 150, 1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(45, 149, 150, 1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(38, 80, 115, 1),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Search...",
              hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
              // prefixIcon: Icon(
              //   Icons.search,
              //   color: Color.fromRGBO(45, 149, 150, 1),
              //   size: 40,
              // ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(45, 149, 150, 1),
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            style: TextStyle(
              decoration: TextDecoration.none,
              decorationThickness: 0,
              color: Color.fromRGBO(45, 149, 150, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Trending Articles',
                style: TextStyle(
                  color: Color.fromRGBO(45, 149, 150, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black54,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                Article article = articles[index];
                return ArticleCard(article: article);
              },
            ),
          ),
        ],
      ),
    );
  }
}
