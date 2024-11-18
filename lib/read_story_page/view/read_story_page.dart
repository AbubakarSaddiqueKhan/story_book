import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_book/home_page/model/story_model.dart';
import 'package:story_book/saved_stories/view/saved_stories.dart';

class ReadStoryPage extends StatelessWidget {
  const ReadStoryPage({super.key, required this.storyData});
  final StoryModel storyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 400,
                child: Stack(
                  children: [
                    Image.asset(
                      storyData.storyImagePath,
                      fit: BoxFit.fill,
                      width: MediaQuery.sizeOf(context).width,
                      height: 400,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 65,
                        width: MediaQuery.sizeOf(context).width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {
                                  savedStories.add(storyData);
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return const SavedStories();
                                    },
                                  ));
                                },
                                icon: const Icon(
                                  Icons.bookmark_outline_outlined,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                storyData.storyReadTime,
                                style: GoogleFonts.epilogue(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                storyData.storyTitle,
                                style: GoogleFonts.epilogue(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  storyData.storyDescription,
                  style: GoogleFonts.epilogue(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
