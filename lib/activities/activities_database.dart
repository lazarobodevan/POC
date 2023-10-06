import 'package:poc/models/Task_Step.dart';

class ActivitiesDatabase{
  static String BASE_PATH = "assets/atividades/EscovarDentes/";
  static List<TaskStep> BrushTeeth = [
    TaskStep(image: "$BASE_PATH/1.png", description: "Pegar a escova"),
    TaskStep(image: "$BASE_PATH/2.png", description: "Colocar creme dental na escova"),
    TaskStep(image: "$BASE_PATH/3.png", description: "Escovar o lado superior esquerdo"),
    TaskStep(image: "$BASE_PATH/4.png", description: "Escovar o lado superior direito"),
    TaskStep(image: "$BASE_PATH/5.png", description: "Escovar o lado inferior esquerdo"),
    TaskStep(image: "$BASE_PATH/6.png", description: "Escovar o lado inferior direito"),
    TaskStep(image: "$BASE_PATH/7.png", description: "Escovar a Língua"),
    TaskStep(image: "$BASE_PATH/8.png", description: "Enxaguar a boca"),
  ];
}