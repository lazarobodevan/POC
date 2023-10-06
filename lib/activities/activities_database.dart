import 'package:poc/models/Task_Step.dart';

class ActivitiesDatabase{
  static String BASE_PATH = "assets/atividades";
  static List<TaskStep> BrushTeeth = [
    TaskStep(image: "$BASE_PATH/EscovarDentes/1.png", description: "Pegar a escova"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/2.png", description: "Colocar creme dental na escova"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/3.png", description: "Escovar o lado superior esquerdo"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/4.png", description: "Escovar o lado superior direito"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/5.png", description: "Escovar o lado inferior esquerdo"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/6.png", description: "Escovar o lado inferior direito"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/7.png", description: "Escovar a Língua"),
    TaskStep(image: "$BASE_PATH/EscovarDentes/8.png", description: "Enxaguar a boca"),
  ];

  static List<TaskStep> Study = [
    TaskStep(image: "$BASE_PATH/Estudar/1.png", description: "Pegar o caderno"),
    TaskStep(image: "$BASE_PATH/Estudar/2.png", description: "Pegar o livro texto da matéria"),
    TaskStep(image: "$BASE_PATH/Estudar/3.png", description: "Baixar o material no Moodle"),
    TaskStep(image: "$BASE_PATH/Estudar/4.png", description: "Ler, anotar e fazer exercícios"),
  ];

  static List<TaskStep> DoLaundry = [
    TaskStep(image: "$BASE_PATH/LavarRoupa/1.png", description: "Pegar as roupas sujas"),
    TaskStep(image: "$BASE_PATH/LavarRoupa/2.png", description: "Colocar as roupas na máquina"),
    TaskStep(image: "$BASE_PATH/LavarRoupa/3.png", description: "Colocar sabão no compartimento da máquina"),
    TaskStep(image: "$BASE_PATH/LavarRoupa/4.png", description: "Colocar amaciante no compartimento da máquina"),
    TaskStep(image: "$BASE_PATH/LavarRoupa/5.png", description: "Ligar a máquina e esperar"),
    TaskStep(image: "$BASE_PATH/LavarRoupa/6.png", description: "Estender a roupa no varal e esperar secar"),
    TaskStep(image: "$BASE_PATH/LavarRoupa/7.png", description: "Dobrar e guardar"),
  ];

  static List<TaskStep> GoToClass = [
    TaskStep(image: "$BASE_PATH/Aula/1.png", description: "Verificar o horário no Sapiens ou UFV Mobile"),
    TaskStep(image: "$BASE_PATH/Aula/2.png", description: "Identificar a sala"),
    TaskStep(image: "$BASE_PATH/Aula/3.png", description: "Juntar o material necessário"),
    TaskStep(image: "$BASE_PATH/Aula/4.png", description: "Atente-se ao horário"),
    TaskStep(image: "$BASE_PATH/Aula/5.png", description: "Ir até o local"),
  ];
}