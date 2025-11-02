import 'package:firebase_ai/firebase_ai.dart';

class FirebaseAIRepo {
  static getRecommendations({
    required String mood,
    required int moodIntensity,
    required String requestedMedia,
    required String additionalContext,
}) async {
    final model = FirebaseAI.googleAI().generativeModel(
      model: 'gemini-2.5-flash',
    );

    final prompt = [Content.text("""
      Act as a sophisticated media recommendation engine focused on 
      emotional well-being. Based only on the provided user parameters, 
      generate a list of exactly five (5) distinct media recommendations 
      (Music track, Podcast episode, Movie, Documentary, etc.). The final 
      output MUST be a JSON array of strings, where each string is a concise 
      recommendation formatted as: [Media Type] - [Title] - [Brief Rationale 
      explaining how it matches the mood/context].
    """)];

    final response = await model.generateContent(prompt);
    print(response.text);
  }
}
