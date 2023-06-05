class ModelDoctor {
  String imageUrlDoctors;
  String textUrlDoctors;

  ModelDoctor({required this.imageUrlDoctors, required this.textUrlDoctors});
}

List<ModelDoctor> doctors = [
  ModelDoctor(
    imageUrlDoctors: "assets/img/dr.wilson.png",
    textUrlDoctors: "Dr.Wilson",
  ),
  ModelDoctor(
    imageUrlDoctors: "assets/img/dr.cristoper.png",
    textUrlDoctors: "Dr.Christoper",
  ),
];
