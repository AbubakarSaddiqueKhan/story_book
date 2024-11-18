// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StoryModel {
  int storyId;
  String storyReadTime;
  String storyTitle;
  String storyDescription;
  String storyImagePath;
  StoryModel({
    required this.storyId,
    required this.storyReadTime,
    required this.storyTitle,
    required this.storyDescription,
    required this.storyImagePath,
  });

  StoryModel copyWith({
    int? storyId,
    String? storyReadTime,
    String? storyTitle,
    String? storyDescription,
    String? storyImagePath,
  }) {
    return StoryModel(
      storyId: storyId ?? this.storyId,
      storyReadTime: storyReadTime ?? this.storyReadTime,
      storyTitle: storyTitle ?? this.storyTitle,
      storyDescription: storyDescription ?? this.storyDescription,
      storyImagePath: storyImagePath ?? this.storyImagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storyId': storyId,
      'storyReadTime': storyReadTime,
      'storyTitle': storyTitle,
      'storyDescription': storyDescription,
      'storyImagePath': storyImagePath,
    };
  }

  factory StoryModel.fromMap(Map<String, dynamic> map) {
    return StoryModel(
      storyId: map['storyId'] as int,
      storyReadTime: map['storyReadTime'] as String,
      storyTitle: map['storyTitle'] as String,
      storyDescription: map['storyDescription'] as String,
      storyImagePath: map['storyImagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryModel.fromJson(String source) =>
      StoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StoryModel(storyId: $storyId, storyReadTime: $storyReadTime, storyTitle: $storyTitle, storyDescription: $storyDescription, storyImagePath: $storyImagePath)';
  }

  @override
  bool operator ==(covariant StoryModel other) {
    if (identical(this, other)) return true;

    return other.storyId == storyId &&
        other.storyReadTime == storyReadTime &&
        other.storyTitle == storyTitle &&
        other.storyDescription == storyDescription &&
        other.storyImagePath == storyImagePath;
  }

  @override
  int get hashCode {
    return storyId.hashCode ^
        storyReadTime.hashCode ^
        storyTitle.hashCode ^
        storyDescription.hashCode ^
        storyImagePath.hashCode;
  }
}

List<StoryModel> storyData = <StoryModel>[
  StoryModel(
      storyId: 1,
      storyReadTime: "Read time: 4 min",
      storyTitle: "The Enchanted Garden and the Brave Little Mouse",
      storyDescription:
          "Once upon a time, in a magical forest, lived a brave little mouse named Milo. Milo dreamed of visiting the enchanted garden, where it was said any wish could come true. One sunny morning, he decided to find the garden. Along the way, he met a wise owl, a kind frog, and a gentle deer who helped him overcome different challenges. Finally, Milo reached the enchanted garden's gate and entered with excitement. But soon, a fierce dragon named Draco appeared, guarding the garden. Milo bravely told Draco that his greatest wish was to share the garden’s magic with all the forest creatures so everyone could be happy. Draco was touched by Milo’s kind wish and decided to grant it. With a wave of his claw, he lifted the enchantment, allowing all the animals to enter and enjoy the garden’s beauty. From that day on, the enchanted garden was filled with laughter and joy, thanks to the bravery of little Milo. The forest creatures celebrated him as a hero. And so, they all learned that true happiness comes from sharing and caring for others. The End",
      storyImagePath: "assets/images/lady.png"),
  StoryModel(
      storyId: 2,
      storyReadTime: "Read time: 4 min",
      storyTitle: "**Milo and the Great Cheese Caper**",
      storyDescription:
          "Once upon a time, in a cozy little house at the edge of a bustling village, lived a tiny mouse named Milo. Milo was a curious little creature with soft gray fur and bright eyes that sparkled with mischief. He loved exploring his surroundings and dreaming of delicious cheese. One day, he overheard the humans talking about the Grand Cheese Festival, where the biggest, tastiest cheese wheel would be displayed in the village square. Milo's heart raced with excitement at the thought of tasting the legendary cheese. Determined to get a piece for himself, he hatched a plan. He gathered his friends—a clever squirrel named Sammy and a cheerful rabbit named Rosie. Together, they would sneak into the village square during the festival and enjoy the cheese feast. On the day of the festival, Milo and his friends set off on their adventure. They scurried through the tall grass, dodging the feet of bustling villagers. When they finally reached the square, they saw the gigantic cheese wheel gleaming in the sunlight. It was even more magnificent than they had imagined! But as they approached, they noticed that the cheese was surrounded by a group of hungry cats, who were eyeing the cheese with hungry gazes. \"Oh no, how will we get to the cheese now?\" whispered Rosie, trembling a little. Milo thought hard and came up with a clever idea. \"Let’s create a distraction!\" he exclaimed. Milo found a shiny button on the ground and rolled it toward the cats. As the cats chased after the shiny button, Milo and his friends quickly scurried to the cheese wheel. They each took a small piece and squeaked with joy. Just then, they heard a loud \"MEOW!\" The cats were coming back! Thinking quickly, Milo led his friends under a nearby table. They watched as the cats searched everywhere but couldn’t find them. When the coast was clear, Milo and his friends dashed out, giggling with excitement. They had successfully tasted the delicious cheese! After their thrilling adventure, Milo and his friends returned home, their tiny bellies full and their hearts happy. They realized that with a little creativity and teamwork, they could overcome any challenge. From that day on, they became the best of friends and went on many more adventures together, always looking for more cheese and fun along the way. **The End**",
      storyImagePath: "assets/images/bear.png"),
  StoryModel(
      storyId: 3,
      storyReadTime: "Read time: 4 min",
      storyTitle: "**Whiskers and the Magic Bell**",
      storyDescription:
          "Once upon a time, in a small, peaceful village, lived a cute little cat named Whiskers. Whiskers had a soft, orange coat and the biggest, greenest eyes you could ever see. He loved playing in the fields, chasing butterflies, and napping in the warm sunlight. One day, while exploring a new part of the village, he stumbled upon an old, dusty shop filled with all sorts of curious items. Inside the shop, Whiskers found a shiny, golden bell hanging from a ribbon. As he touched the bell, it began to glow, and an old, gentle voice spoke, \"Greetings, little one. I am the Bell of Wishes. Ring me, and I shall grant you one wish.\" Whiskers' eyes widened with excitement. He had always dreamed of having an adventure beyond the village. Whiskers thought carefully and then rang the bell. \"I wish to go on a grand adventure and help those in need,\" he said. Suddenly, the bell's glow surrounded him, and in a flash, he found himself in a faraway land filled with talking animals and magical creatures. As Whiskers explored this new land, he met a worried squirrel named Squeaky. \"Oh, Whiskers, thank goodness you're here! Our magical acorns have been stolen by a mischievous fox named Fidget, and without them, our tree won't grow its special leaves,\" Squeaky explained. Whiskers, always ready to help, promised to find the acorns. Whiskers followed the trail of tiny paw prints until he found Fidget hiding in a hollow tree. \"Please give back the acorns, Fidget,\" Whiskers said kindly. \"The forest needs them to grow.\" Fidget looked guilty and said, \"I only took them because I was lonely and wanted friends to play with.\" Understanding Fidget's feelings, Whiskers invited him to return the acorns together. Fidget agreed, and they both carried the acorns back to Squeaky and the other forest animals. The tree quickly grew its magical leaves, and the forest was filled with joy and color once more. The animals cheered for Whiskers and welcomed Fidget into their group of friends, showing him kindness and understanding. With his mission accomplished, Whiskers felt a warm glow inside him. The Bell of Wishes appeared once more and said, \"You have shown great bravery and kindness, Whiskers. You may now return home.\" In a flash of light, Whiskers found himself back in his village, the golden bell still in his paw. From that day on, Whiskers remembered his adventure and the friends he made. He learned that helping others and showing kindness could make any adventure truly magical. **The End**",
      storyImagePath: "assets/images/cato.png"),
  StoryModel(
      storyId: 4,
      storyReadTime: "Read time: 4 min",
      storyTitle: "**Ruby and the Magic Carrot**",
      storyDescription:
          "Once upon a time, in a lush green meadow, lived a little rabbit named Ruby. Ruby had soft, fluffy fur and the most adorable twitchy nose. She loved hopping through the meadow, smelling the flowers, and playing with her friends. But what Ruby loved most was exploring the secrets of the forest that bordered her home. One sunny morning, while hopping through the meadow, Ruby stumbled upon a bright orange carrot that shimmered in the sunlight. \"Wow! That carrot looks magical!\" she exclaimed. Curious and excited, Ruby picked up the carrot and noticed it had a golden glow. She felt a tingling sensation in her paws as she held it. As Ruby took a bite of the carrot, something incredible happened! Suddenly, she could hear the whispers of the flowers and the songs of the birds. They were all talking about a hidden treasure deep within the forest. \"Follow the path of daisies to find the treasure!\" the flowers sang. Ruby’s heart raced with excitement. She decided to follow their advice and see what kind of adventure awaited her. With her magical carrot in tow, Ruby hopped down the path of daisies, listening carefully to the creatures around her. She met a wise old tortoise named Timmy who said, \"I can help you, little one. The treasure is protected by a tricky fox named Felix, who loves riddles.\" Ruby nodded, determined to solve any riddle that came her way. As Ruby ventured deeper into the forest, she soon encountered Felix, the sly fox, lounging on a rock. \"Well, well, a little rabbit seeking treasure? You’ll need to solve my riddle to pass,\" he said with a mischievous grin. Ruby listened closely as Felix posed his riddle: \"I have keys but open no locks. I have space but no room. You can enter, but you can’t go outside. What am I?\" Ruby thought hard, her little nose twitching. Then, she remembered how she often saw her friends playing music. \"A piano!\" she exclaimed, her eyes sparkling with joy. Felix was taken aback. \"You’re right! You may pass,\" he said, grudgingly impressed. Ruby thanked the fox and continued along the path. Finally, she arrived at a beautiful clearing filled with colorful flowers and sparkling lights. In the center, she found a treasure chest! With her heart pounding, she opened the chest to find not gold or jewels, but something even more precious—seeds for the most beautiful flowers in the world. With her magical carrot still glowing, Ruby realized that she could use these seeds to create a beautiful garden that would bring joy to all her friends. She carefully gathered the seeds and thanked the magical forest for the wonderful adventure. When Ruby returned home, she planted the seeds in her meadow. As they grew, the garden bloomed with vibrant colors, attracting all the animals of the forest. They played and laughed together, enjoying the beauty around them. And so, Ruby learned that the true treasure was not gold but the joy of sharing beauty and happiness with friends. **The End**",
      storyImagePath: "assets/images/bunny.png"),
  StoryModel(
      storyId: 5,
      storyReadTime: "Read time: 4 min",
      storyTitle: "The Adventure of Whiskers the Brave Cat",
      storyDescription:
          "Once upon a time, in a cozy little village, lived a cute and curious cat named Whiskers. Whiskers had a fluffy white coat and bright blue eyes that sparkled with curiosity. Every day, he would explore the village, making new friends and discovering new places. But there was one place Whiskers had never been—the mysterious forest at the edge of the village. The villagers said it was enchanted and full of wonders. One sunny morning, Whiskers decided it was time to explore the enchanted forest. He packed his favorite toy mouse and a little bag of treats and set off on his adventure. As he entered the forest, he marveled at the tall trees, the colorful flowers, and the sound of birds singing high above. As Whiskers ventured deeper into the forest, he came across a wise old turtle named Toby. \"Hello, little cat,\" Toby said. \"If you wish to find the heart of the forest, follow the path of golden leaves.\" Whiskers thanked Toby and followed the shimmering path until he reached a sparkling stream. At the stream, a friendly frog named Felix greeted Whiskers. \"To cross the stream, you must hop across the lily pads,\" Felix explained. With Felix’s help, Whiskers carefully hopped from one lily pad to another, reaching the other side safely. There, he saw a beautiful clearing filled with the most extraordinary flowers. In the clearing, a gentle unicorn named Ula appeared. \"Welcome, Whiskers,\" Ula said with a warm smile. \"You have shown great bravery and kindness on your journey. As a reward, I will grant you one wish.\" Whiskers thought for a moment and said, \"I wish for all the animals in the forest and the village to be friends and live happily together.\" Ula was touched by Whiskers' selfless wish. With a flick of her horn, she cast a magical spell that spread friendship and joy throughout the land. From that day on, the forest and the village were filled with laughter and harmony, and Whiskers was celebrated as a hero. Whiskers returned home, his heart full of joy. He had not only discovered the wonders of the enchanted forest but also learned that true bravery comes from kindness and thinking of others. The End",
      storyImagePath: "assets/images/cat.png"),
];

List<StoryModel> savedStories = <StoryModel>[];
