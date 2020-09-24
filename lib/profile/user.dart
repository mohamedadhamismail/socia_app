class User{
  String name;
  String address;
  String about;
  User({this.name,this.about,this.address});

}
class Profile{
  User user;
  int follower,following,friends;
  Profile({this.user,this.follower,this.following,this.friends});

}
