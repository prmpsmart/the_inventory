class Chat {
  final bool isMe;
  final String message;
  Chat(this.isMe, this.message);
}

List<Chat> chats = [
  Chat(
    false,
    'Thanks Babatoye. I need to get 3 cartons of Peak milk for my store',
  ),
  Chat(
    true,
    'Awesome! Thanks. We can deliver to your door step as soon as possible',
  ),
  Chat(
    false,
    'Hello, Babatoye. Good day.',
  ),
  Chat(
    false,
    'Good day, James',
  ),
  Chat(
    false,
    'I hope you’re good? Can we schedule a quick meeting?',
  ),
  Chat(
    false,
    'Sure, what time?',
  ),
  Chat(
    false,
    'Looking forward to meeting you.',
  ),
  Chat(
    false,
    'Alright, Thanks!',
  ),
];
