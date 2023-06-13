import 'dart:io';

void main() {
  print(
      '\n\n\n\t\t\t\t\u{269C}   \u{269C}   \u{269C}   ДОБРО ПОЖАЛОВАТЬ В ИГРУ FANTAZY WORLD!   \u{269C}   \u{269C}   \u{269C}\n\nЧтобы начать игру, введите свое имя:');
  String name = stdin.readLineSync()!;
  print(
      '\nОтлично   \u{2663}  $name  \u{2663}! \n\nТеперь нужно создать персонажа. Кем вы хотите быть в игре?');
  print(
      '\nВыберите рассу персонажа по номеру из списка:\n\n\t \u{2460}   Орк\n\n\t \u{2461}   Эльф\n\n\t \u{2462}   Человек\n\n\t \u{2463}   Гном');
  int raceChoice = int.parse(stdin.readLineSync()!);

  String race;
  switch (raceChoice) {
    case 1:
      race = 'Орк';
      break;
    case 2:
      race = 'Эльф';
      break;
    case 3:
      race = 'Человек';
      break;
    case 4:
      race = 'Гном';
      break;
    default:
      race = 'Неизвестно';
      break;
  }
  print(
      '\nПревосходно! Вы выбрали рассу персонажа $race. \n\nТеперь нужно выбрать класс персонажа.');
  print(
      '\nВыберите класс по номеру из списка:\n\n\t \u{2460}   Маг\n\n\t \u{2461}   Вор\n\n\t \u{2462}   Танк\n\n\t \u{2463}   Рыцарь');
  int classChoice = int.parse(stdin.readLineSync()!);

  String characterClass;
  switch (classChoice) {
    case 1:
      characterClass = 'Маг';
      break;
    case 2:
      characterClass = 'Вор';
      break;
    case 3:
      characterClass = 'Танк';
      break;
    case 4:
      characterClass = 'Рыцарь';
      break;
    default:
      characterClass = 'Неизвестно';
      break;
  }

  String ability;
  if (characterClass == 'Маг') {
    ability = 'Искажение времени';
  } else if (characterClass == 'Вор') {
    ability = 'Мастерство маскировки';
  } else if (characterClass == 'Танк') {
    ability = 'Нанесение +50% урона в ближнем бою';
  } else if (characterClass == 'Рыцарь') {
    ability = 'Гроза пехоты';
  } else {
    ability = 'Неизвестно';
  }

  String weapon;
  if (characterClass == 'Маг') {
    weapon = 'Посох с драгоценными камнями';
  } else if (characterClass == 'Вор') {
    weapon = 'Кинжал ярости';
  } else if (characterClass == 'Танк') {
    weapon = 'Адский топор';
  } else if (characterClass == 'Рыцарь') {
    weapon = 'Меч короля Артура';
  } else {
    weapon = 'Неизвестно';
  }

  print('\nВаш персонаж готов:');
  print('\n \u{2A33}  | Расса: $race');
  print('\n \u{2620}  | Класс: $characterClass');
  print('\n \u{2694}  | Доступное оружие: $weapon');
  print('\n \u{26a1}  | Суперспособность: $ability\n');

  print(
      '\nВы готовы к сражению за свободу? \nВыберите:\n\n\t \u{2460}   Да\n\n\t \u{2461}   Нет');
  int ready = int.parse(stdin.readLineSync()!);
  if (ready == 1) {
    print(
        '\nЧтобы начать сражение, Вам необходимо приобрести полную версию игры на официальном сайте FANTAZY WORLD \u{1F602}  \u{1F602}  \u{1F602}\n\n');
  } else if (ready == 2) {
    print(
        '\nВозвращайтесь в игру, когда будете готовы! \u{231B}  \u{231B}  \u{231B}\n\n');
  }
}
