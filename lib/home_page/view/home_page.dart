import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_book/home_page/model/story_model.dart';
import 'package:story_book/home_page/widgets/home_page_image_clipper.dart';
import 'package:story_book/read_story_page/view/read_story_page.dart';
import 'package:story_book/saved_stories/view/saved_stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: SizedBox(
          width: 50,
          child: Column(
            children: [
              Image.asset(
                "assets/images/pricay_policy.png",
                height: 40,
                width: 40,
              ),
              Text(
                "Privacy policy",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 6),
              ),
            ],
          ),
        ),
        title: Text(
          "Fairy Tales",
          style:
              GoogleFonts.epilogue(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_outlined),
            color: const Color(0xFFFF6B61),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const SavedStories();
                },
              ));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Upcoming",
                style: GoogleFonts.epilogue(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 300,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  itemCount: storyData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipPath(
                        clipper: HomePageImageClipper(cornerRadius: 25),
                        child: SizedBox(
                            width: 280,
                            height: 280,
                            child: Stack(
                              children: [
                                Image.asset(
                                  storyData[index].storyImagePath,
                                  fit: BoxFit.fill,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: 280,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Read time: 5 min",
                                            style: GoogleFonts.epilogue(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "The House Party",
                                            style: GoogleFonts.epilogue(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  },
                )),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Recommended for you",
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 185,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipPath(
                      clipper: HomePageImageClipper(cornerRadius: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ReadStoryPage(
                                storyData: storyData[index],
                              );
                            },
                          ));
                        },
                        child: SizedBox(
                          width: 185,
                          height: 185,
                          child: Image.asset(
                            storyData[index].storyImagePath,
                            fit: BoxFit.fill,
                            height: 180,
                            width: 180,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "New Stories",
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 185,
              child: ListView.builder(
                itemCount: storyData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipPath(
                      clipper: HomePageImageClipper(cornerRadius: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ReadStoryPage(
                                storyData: storyData[index],
                              );
                            },
                          ));
                        },
                        child: SizedBox(
                          width: 185,
                          height: 185,
                          child: Image.asset(
                            storyData[index].storyImagePath,
                            fit: BoxFit.fill,
                            height: 180,
                            width: 180,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Short Stories",
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 185,
              child: ListView.builder(
                itemCount: storyData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipPath(
                      clipper: HomePageImageClipper(cornerRadius: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ReadStoryPage(
                                storyData: storyData[index],
                              );
                            },
                          ));
                        },
                        child: SizedBox(
                          width: 185,
                          height: 185,
                          child: Image.asset(
                            storyData[index].storyImagePath,
                            fit: BoxFit.fill,
                            height: 180,
                            width: 180,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
