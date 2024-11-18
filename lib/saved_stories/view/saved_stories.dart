import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_book/home_page/model/story_model.dart';

class SavedStories extends StatelessWidget {
  const SavedStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: savedStories.isEmpty
              ? Center(
                  child: Text(
                    "No saved story",
                    style: GoogleFonts.epilogue(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                )
              : ListView.builder(
                  itemCount: savedStories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 2, right: 2),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              savedStories[index].storyImagePath,
                              width: 65,
                              height: 65,
                              fit: BoxFit.fill,
                            ),
                            Text(savedStories[index].storyTitle,
                                style: GoogleFonts.epilogue(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                            IconButton(
                                onPressed: () {
                                  savedStories.remove(savedStories[index]);
                                },
                                icon:
                                    const Icon(Icons.bookmark_outline_outlined))
                          ],
                        ),
                      ),
                    );
                  },
                )),
    );
  }
}
