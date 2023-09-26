enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUrl;
  final String timestamp;
  final FromWho fromWho;

  Message(
      {required this.text,
      this.imageUrl,
      required this.timestamp,
      required this.fromWho});
}
