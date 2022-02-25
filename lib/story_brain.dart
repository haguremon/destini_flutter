import 'story.dart';

class StoryBrain {
  int storyNumber = 0;

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

  String getStory(int storyNumber) => _storyData[storyNumber].storyTitle;
  String getChoice1(int storyNumber) => _storyData[storyNumber].choice1;
  String getChoice2(int storyNumber) => _storyData[storyNumber].choice2;

}


//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
