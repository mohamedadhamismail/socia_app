import 'user.dart';

class Provider_profile1 {

  Profile getprofile() {
    return Profile(
        user: User(
            name: 'Mohamed Adham',
            address: 'Egypt Cairo',
            about:
                'You are great teacher thank you for sharing your knowledge, We need advanced topics like maps, databases, rest APi'),
        follower: 1234,
        following: 456,
        friends: 3067);
  }
}
