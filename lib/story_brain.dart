import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
        storyTitle:
            'あなたの車は、携帯電話の電波が届かない人里離れたワインディングロードでタイヤをパンクさせてしまいました。あなたはヒッチハイクをすることにした。錆びたピックアップトラックがあなたの横でゴロゴロと音を立てて停まります。つばの広い帽子をかぶり、魂のない目をした男が、あなたのために助手席のドアを開け、尋ねてきた。「乗らないか？」',
        choice1: ' 私は飛び乗る。助けてくれてありがとう。',
        choice2: ' 彼が殺人者であるかどうか最初に聞いた方がいい'),
    Story(
        storyTitle: '彼はその質問に動じることなく、ゆっくりと頷く。',
        choice1: '少なくとも彼は正直だ。乗り込む。',
        choice2: '待って、タイヤの交換はできるんだ'),
    Story(
        storyTitle:
            '運転し始めると、見知らぬ男は母親との関係について話し始める。彼は刻々と怒りを募らせていく。彼はあなたにグローブボックスを開けるように頼む。中には血のついたナイフ、切断された2本の指、そしてエルトン・ジョンのカセットテープが入っている。彼はグローブボックスに手を伸ばす。',
        choice1: 'エルトン・ジョン大好き! カセットテープを渡せ',
        choice2: '彼か私かだ！ナイフで彼を刺せ'),
    Story(
        storyTitle: 'え？そんなお門違いな！？交通事故は、ほとんどの成人の年齢層で、事故による死亡原因の第2位であることをご存知ですか？',
        choice1: 'リスタート',
        choice2: ''),
    Story(
        storyTitle:
            'ガードレールを突き破り、眼下のギザギザの岩に突っ込みながら、自分が乗っている車を運転しているときに人を刺すというのはいかがなものかと考えてしまうのだ。',
        choice1: 'リスタート',
        choice2: ''),
    Story(
        storyTitle:
            '"Can you feel the love tonight"を口ずさみながら、殺人犯と結ばれる。彼はあなたを次の町で降ろしてくれる。行く前に彼は、死体を捨てるのにいい場所を知らないか、と聞いてくる。君は答える。『桟橋はどうだ？』',
        choice1: 'リスタート',
        choice2: '')
  ];

  String getStory() => _storyData[_storyNumber].storyTitle;

  String getChoice1() => _storyData[_storyNumber].choice1;

  String getChoice2() => _storyData[_storyNumber].choice2;

  void nextStory(int choiceNumber) {
    // switch (_storyNumber) {
    //   case 3:
    //     restart();
    //     break;
    //   case 4:
    //     restart();
    //     break;
    //   case 5:
    //     restart();
    //     break;

    //   default:
    // }
    if (_storyNumber > 2) {
      restart();
      return;
    }
    if (choiceNumber == 1) {
      _storyNumber++;
    } else {
      _storyNumber++;
      _storyNumber++;
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber < 3) {
      return true;
    } else {
      return false;
    }
  }
}
