
class screen {

  int count = 2;

  int[] x2 = {width/2,width/2};
  int[] y = {height/2,height/2};
  int[] dx = {30,30};
  int[] dy = {30,30};
  int faceSizeX = 50;
  int faceSizeY = 100;
  int bodySizeX = 70;
  int bodySizeY = 100;
  int eyeSize = 10;
  int legSize = 250;

  int flag1 = 0;
  int flag2 = 0;
  int flag3 = 0;

  int [] key3=new int[100];
  int [] key32=new int[100];

  int Q3cnt=0;
  boolean answer31=false;
  boolean hit=false;

  int Q32cnt=0;
  boolean answer32=false;
  boolean hit2=false;

  int x=width/2;



  String quesEasy[] = {"右のコードはｘというへんすうに入った「apple」というたんごをひょうじするものです。かくされているところに入るのはどれでしょう？", "右のコードでひょうじが「1」となるようにするにはprintln()の中はどうすればいいでしょう？", "右のプログラムで四角形だけを黒くぬりつぶすにはどこにfill(0);を入れればいいでしょうか？"};
  String quesNormal[] = {"へんすう x が２けたの時は「２けた！」とひょうじして、\nそれいがいの時は x の数字をそのままひょうじするには、どのコードが正しいかえらぼう", "charかたのへんすうｘに!が代入されています。\nひきすうとしてへんすうｘをうけとると、「!!!!!」(!が5こ)とひょうじしてくれる\nかんすうはどれだろう？", "intかたはいれつarrayのさいごのようそ n とそえ字 i を\n「array[i] : n」のかたちでひょうじできるのはどれだろう？\nはいれつのようそ数はランダムに決められていて、分からない。。。"};
  String quesHard[] = {"上級問題１個目（仮）", "上級問題２個目（仮）"};
  String exEasy[] = {"へんすうとは？\nプログラミングではいろいろなデータをつかって\nコンピュータにけいさんやめいれいをしてもらうことになります！\nそこで，そのデータをおぼえておくためのいれものをへんすうといいます！", "けいさんをするときにひつようなきごうは？\nコンピュータにけいさんしてもらいたいときは，とくべつなきごうをつかいます！\n\n+　たしざんができます\n-　ひきざんができます\n*　かけざんができます\n/　わりざんができます", "描画"};
  String exNormal[] = {"じょうけんぶんきってなに？\n「じぶんてきめたルールにあっているならこのめいれいをしてね」ということをコンピュータにめいれいすることができるよ！", "かんすうってなに？\nへんすうなど，なにかしらのデータをわたしたら，そのデータをつかってめいれいをして，めいれいしたけっかをかえすといったことができるものがかんすうです！\nそのかんすうにわたすデータのことをひきすうといいます！", "はいれつってなに？\nいろいろなデータのあつまりをひょうげんするためにつかうものが，はいれつです！\n\nでーたがた[] なまえ=new でーたがた[こすう];\n\nこのようにしょきかすることができます！こすうのなかにはでーたをなんこあつめるのかをきめることができます！\nまた、なかみをきめたあとは「はいれつ名.length」でこすうを数としてあつかえます！"};
  int easyflag1 = 0;
  int easyflag2 = 0;
  int easyflag3 = 0;
  int normalflag1 = 0;
  int normalflag2 = 0;
  int normalflag3 = 0;
  PImage imgeasyQ1;
  PImage imgeasyQ2;
  PImage imgeasyQ3;

  void setup() {
    for (int i=0; i<x2.length; i++) {
      x2[i] = width*(i+1)/(count+1);
      y[i] = height*(i+1)/(count+1);
      dx[i] = 1;
      dy[i] = 1;
    }
  }

  void start_scene() {
    background(0, 0, 255);

    textSize(100);
    text("プログラミング学習ソフト", width/2-500, height/2);
    textSize(30);
    text("クリックしてはじめよう", width/2-130, height/2+100);
  }

  void quesDraw(String format, String[] choice) {
    background(144, 215, 236);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    fill(0);
    textSize(20);
    text(format, width/40, height/4);
    textSize(20);
    fill(0);
    text(choice[0], width/40, height/2);
    text(choice[1], width*10/40, height/2);
    text(choice[2], width*20/40, height/2);
  }


  void question() {

    fill(255);
    rect(0+300, height/3+100, 300, 300);
    rect(width/3*1+300, height/3+100, 300, 300);
    rect(width/3*2+300, height/3+100, 300, 300);
    textSize(50);
    fill(0);
    text("初級", width/3-510, height/3+250);
    text("中級", width/3*2-510, height/3+250);
    text("上級", width/3*3-510, height/3+250);
  }
  void question1() {
    background(255);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    for (int i=0; i<3; i++) {
      line(0, height/3*i, width, height/3*i);
    }
    fill(0);
    textSize(100);
    text("変数", width/2-50, 300);
    text("計算", width/2-50, height/3*1+300);
    text("描画", width/2-50, height/3*2+300);
    fill(0);
    textSize(50);
    text("初級問題", 0, 70);
  }
  void question2() {
    background(255);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    for (int i=0; i<3; i++) {
      line(0, height/3*i, width, height/3*i);
    }
    fill(0);
    textSize(100);
    text("条件分岐", width/2-50, 300);
    text("関数", width/2-50, height/3*1+300);
    text("配列", width/2-50, height/3*2+300);
    fill(0);
    textSize(50);
    text("中級問題", 0, 70);
  }
  void question3() {
    background(255);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    line(0, height/2, width, height/2);
    fill(0);
    textSize(100);
    text("アニメーション", width/2-50, 300);
    text("座標", width/2-50, height/2*1+300);
    fill(0);
    textSize(50);
    text("上級問題", 0, 70);
  }
  //初級説明表示
  void Q1q1draw() {
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    fill(0);
    textSize(100);
    text("変数に値をだいにゅうしてみよう！\n floatでは実数、charでは文字、\n Stringでは文字列のかくのう、だいにゅうができるよ", width/2-1200, 100);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }
  void Q1q2draw() {
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    fill(0);
    textSize(100);
    text("計算をしてみよう！\n +で足し算、-で引き算、\n*ではかけざん、/では割り算ができるよ！", width/2-1200, 100);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }
  void Q1q3draw() {
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    fill(0);
    textSize(100);
    text("描画してみよう！\n fill関数ではfillかんすうの後の図形をえがくellipseなどのメソッドで\nえがく図形の色をかえられるよ！\n", width/2-1200, 100);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }


  //中級説明表示
  void Q2q1draw() {
    fill(0);
    textSize(100);
    text("条件分岐をしてみよう！\n　ifの()でじょうけんをつくってそのじょうけんにあてはまったら\n下の文をじっこうするというようにできるよ", width/2-1200, 300);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }
  void Q2q2draw() {
    fill(0);
    textSize(80);
    text("関数について！\n関数ではひきちにあたいをだいにゅうさせて\nその値をつかってなにかをじっこうさせることができるよ！", width/2-1200, 300);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }
  void Q2q3draw() {
    fill(0);
    textSize(80);
    text("配列をおぼえよう！\nはいれつでは作成してからi番目をしていして主力させたりひきだせたりするよ\nはいれつは0番目から作成、していができ、\nlengthではいれつの長さをしていできるよ！", width/2-1200, 300);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }


  //上級説明表示
  void Q3q1draw() {
    fill(0);
    textSize(100); 
    text("アニメーション", 130, 100);
    textSize(50);
    text("Activeモード", 130, 200);
    textSize(50);
    text("Activeモードはつねにくりかえしがおこっているむげんループのじょうたいです！", 130, 300);
    textSize(50);
    text("せっていした数字を変えながらくりかえさせることでアニメーションがえがけるよ！", 130, 400);
    textSize(50);
    text("setup()とdraw()かんすう", 130, 500);
    text("setup()とdraw()はActiveモードでつかうかんすうです！", 130, 600);
    text("setup()ではプログラムでめいれいするじゅんびをするばしょで，", 130, 700);
    text("draw()ではむげんループがつづいているじょうたいです！", 130, 800);
    text("setup()では背景の色、大きさをせっていできるよ！", 130, 900);
    text("draw()では変数の値をかえながら、描く関数を正しい順番でつかうことでアニメーションをえがける！", 130, 1000);
    text("background()で背景の色elippse()で円をえがくことができるよ！", 130, 1100);




    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }
  void Q3q2draw() {
    fill(0);
    textSize(100);
    text("アニメーションをさらに知ろう", 130, 100);
    textSize(50);
    text("壁のしょうとつはんてい", 130, 200);
    textSize(50);
    text("壁のしょうとつはんていはぶったいのざひょうがかべのざひょうになった時に、", 130, 200);
    textSize(50);
    text("うごくあたいを逆にすることでまるで跳ね返っているかのようにできるよ！", 130, 300);
    fill(255);
    rect(width-200, 0, 200, 100);
    textSize(50);
    fill(0);
    text("戻る", width-150, 70);
    rect(width-200, height-100, 200, 100);
    textSize(50);
    fill(255);
    text("問題へ", width-150, height-50);
  }

  //問題表示
  void Q1q1Qdraw() {
    char answer = '2';//正解の選択肢 (添え字式)
    String choice[] = {"①\nfloat", "②\nchar", "③\nString"};
    String explain ="floatかたは小数、charかたは１文字しかいれられないよ！\n";
    quesDraw(quesEasy[0], choice);
    imgeasyQ1=loadImage("変数.png");
    image(imgeasyQ1, 2*width/3, height/4, width/3, height/2);
    if (keyPressed) {
      easyflag1 = check(answer);
    }
    if (easyflag1 == 1) {
      textSize(40);
      text("〇　せいかい！！", width/40, height*7/10);
      textSize(20);
      //text(explain,width/40,height*4/5);
    } else if (easyflag1 == 2) {
      textSize(40);
      text(":x_黒太字:　ざんねん！\n"+explain, width/40, height*4/5);
    }
  }
  void Q1q2Qdraw() {
    char answer = '1';//正解の選択肢 (添え字式)
    String choice[] = {"①\nn/m", "②\nm-n", "③\nn-m"};
    String explain ="n/mはわり算、m-nとn-mはひき算をあらわしているよ！";
    quesDraw(quesEasy[1], choice);
    imgeasyQ2=loadImage("計算.png");
    image(imgeasyQ2, 2*width/3, height/4, width/3, height/2);
    if (keyPressed) {
      easyflag2 = check(answer);
    }
    if (easyflag2 == 1) {
      textSize(40);
      text("〇　せいかい！！", width/40, height*7/10);
      textSize(20);
      //text(explain,width/40,height*4/5);
    } else if (easyflag2 == 2) {
      textSize(40);
      text(":x_黒太字:　ざんねん！\n"+explain, width/40, height*4/5);
    }
  }
  void Q1q3Qdraw() {
    char answer = '1';//正解の選択肢 (添え字式)
    String choice[] = {"①\nellipse(width/2,height/2,100,100);の上", "②\nellipse(width/2,height/2,100,100);と\nrect(width/4,height/4,100,100);のあいだ", "③\nrect(width/4,height/4,100,100);の下"};
    String explain ="プログラムは上の方からじゅんばんにしょりされていくよ！";
    quesDraw(quesEasy[2], choice);
    imgeasyQ3=loadImage("描画.png");
    image(imgeasyQ3, 2*width/3+40, height/4, width/3-40, height/2);
    if (keyPressed) {
      easyflag3 = check(answer);
    }
    if (easyflag3 == 1) {
      textSize(40);
      text("〇　せいかい！！", width/40, height*7/10);
      textSize(20);
      //text(explain,width/40,height*4/5);
    } else if (easyflag2 == 2) {
      textSize(40);
      text(":x_黒太字:　ざんねん！\n"+explain, width/40, height*4/5);
    }
  }
  void Q2q1Qdraw() {
    char answer = '0';//正解の選択肢
    String choice[] = {"①\nif(10 <= x && x <= 99){\n  println(\"2けた！\");\n} else {\n  println(x);\n}", "②\nif(10 <= x && x <= 99){\n  println(\"2けた！\");\n} else if(x < = 9 || 100 <= x){\n  println(x);\n}", "③\nif(x){\n  println(\"2けた！\");\n}\nprintln(x);"};
    String explain ="２けたのかずはいいかえると「10いじょう99いかのかず」になるよ！";
    quesDraw(quesNormal[0], choice);
    if (keyPressed) {
      normalflag1 = check(answer);
    }
    if (normalflag1 == 1) {
      textSize(40);
      text("〇　せいかい！！", width/40, height*7/10);
      textSize(20);
      //text(explain,width/40,height*4/5);
    } else if (normalflag1 == 2) {
      textSize(40);
      text(":x_黒太字:　ざんねん！\n"+explain, width/40, height*4/5);
    }
  }
  void Q2q2Qdraw() {
    char answer = '2';
    String choice[] = {"①\nvoid func1(String x){\n  for(int i=0;i<5;i++){\n    println(x);\n  }\n}", "②\nvoid func2(char x){\n  x = x * 5;\n  println(x);\n}", "③\nvoid func3(char x){\n  for(int i=0;i<5;i++){\n    println(x);\n  }\n}"};
    String explain = "ひきすうとしてうけとるデータはcharかただよ！charかたはきほんてきに計算はできないよ！";
    quesDraw(quesNormal[1], choice);
    if (keyPressed) {
      normalflag2 = check(answer);
    }
    if (normalflag2 == 1) {
      textSize(40);
      text("〇　せいかい！！", width/40, height*7/10);
      textSize(20);
      //text(explain,width/40,height*4/5);
    } else if (normalflag2 == 2) {
      textSize(40);
      text(":x_黒太字:　ざんねん！\n"+explain, width/40, height*4/5);
    }
  }
  void Q2q3Qdraw() {
    char answer = '1';
    String choice[] = {"①\nint n=array[array.length];\n  int i=array.length;\n  println(\"array[\"+i+\"]:\"+n);", "②\nint n=array[array.length-1];\n  int i=array.length-1;\n println(\"array[\"+i+\"]:\"+n);", "③\nint n=array[length-1];\n  int i=length-1;\n  println(\"array[\"+i+\"]:\"+n);"};
    String explain = "はいれつのようそ数は「はいれつめい.length」であらわせるよ！\nなにかをかぞえる時、コンピューターは0からかぞえるよ！";
    quesDraw(quesNormal[2], choice);
    if (keyPressed) {
      normalflag3 = check(answer);
    }
    if (normalflag3 == 1) {
      textSize(40);
      text("〇　せいかい！！", width/40, height*7/10);
      textSize(20);
      //text(explain,width/40,height*4/5);
    } else if (normalflag3 == 2) {
      textSize(40);
      text(":x_黒太字:　ざんねん！\n"+explain, width/40, height*4/5);
    }
  }

  void Q3q1Qdraw() {
    fill(0);
    textSize(40);
    text("今回の問題では実際にコードを選択して組んでみよう！", 130, 100);

    text("いちばんしたにあるコードのあいているところにあてはまるコードをしたの３つから", 130, 250);
    text("じゅんばんにただしく動くようキーボードでせんたくしよう！", 130, 400);
    text("円を横にまっすぐみぎに動くようにしよう！", 130, 600);
    textSize(30);
    color(0, 255, 255);
    text("1 x+=10(えがくばしょを右に１０移動); ", 130, 700);
    text("2  background(255,255,255);", 130, 800);
    text("3  ellipse(x,y,40,40)", 130, 900);
    answer31=true;
    if (keyPressed) {
      if (key=='1') {
        key3[Q3cnt]=1;
      } else if (key=='2') {
        key3[Q3cnt]=2;
      } else if (key=='3') {
        key3[Q3cnt]=3;
      }
      Q3cnt+=1;
    }
    if (key3[0]==1) {
      textSize(30);
      color(0, 255, 255);
      text("1 x+=10; ", 130, 1600);
    } else if (key3[0]==2) {
      textSize(30);
      color(0, 255, 255);
      text("2  background(255,255,255);", 130, 1600);
    } else if (key3[0]==3) {
      textSize(30);
      color(0, 255, 255);
      text("3  ellipse(x,y,40,40)", 130, 1600);
    }
    if (key3[1]==1) {
      textSize(30);
      color(0, 255, 255);
      text("1 x+=10; ", 130, 1700);
    } else if (key3[1]==2) {
      textSize(30);
      color(0, 255, 255);
      text("2  background(255,255,255);", 130, 1700);
    } else if (key3[1]==3) {
      textSize(30);
      color(0, 255, 255);
      text("3  ellipse(x,y,40,40)", 130, 1700);
    }
    if (key3[2]==1) {
      textSize(30);
      color(0, 255, 255);
      text("1 x+=10; ", 130, 1800);
    } else if (key3[2]==2) {
      textSize(30);
      color(0, 255, 255);
      text("2  background(255,255,255);", 130, 1800);
    } else if (key3[2]==3) {
      textSize(30);
      color(0, 255, 255);
      text("3  ellipse(x,y,40,40)", 130, 1800);
    }
    if (key3[0]==2&&key3[1]==3&&key3[2]==1) {
      hit=true;
    }

    if (hit) {
      fill(139, 0, 0);
      textSize(100);
      text("正解！！", 1700, 200);
      fill(0);
      text("実行結果", 1700, 350);
      PImage img2=loadImage("haikei.jpg");
      image(img2, width/2, 400);
      fill(0);
      ellipse(x, height/2, 40, 40);
      x += 10;
    } else if (Q3cnt==3) {
      fill(139, 0, 0);
      textSize(150);
      text("不正解！！", 1700, 700);
      fill(0);
      textSize(100);
      text("解説", 1800, 1300);
      fill(0);
      textSize(50);
      text("はいけいをぬって、えんをえがいてから、", 1450, 1400);
      text("つぎの円の場所を変えるようにしよう！", 1450, 1500);
    }





    PImage img = loadImage("prop.jpg");
    image(img, 100, 1000);
  }

  void Q3q2Qdraw() {
    fill(0);
    textSize(30);
    text("今回の問題でも実際にコードを選択して組んでみよう！", 130, 100);

    text("いちばんしたにあるコードのあいているところにあてはまるコードをしたの8つから", 130, 200);
    text("じゅんばんにただしく動くようキーボードでせんたくしよう！", 130, 250);
    text("キャラが上下左右に移動し壁に当たったらバウンドするようにしてみよう！", 130, 300);
    textSize(30);
    color(0, 255, 255);

    text("1  dx[i]=1;", 130, 400);
    text("2  dx[i]=-1;", 130, 500);
    text("3  }else if(width<x[i]+35){", 130, 600);
    text("4 if(x[i]-35<0){", 130, 650);
    text("5 }else if(height<y[i]+250){", 630, 400);
    text("6  dy[i]=1;", 630, 500);
    text("7 dy[i]=-1;", 630, 600);
    text("8  if(y[i]-50<0){", 630, 650);
    answer32=true;
    if (keyPressed) {
      if (key=='1') {
        key32[Q32cnt]=1;
      } else if (key=='2') {
        key32[Q32cnt]=2;
      } else if (key=='3') {
        key32[Q32cnt]=3;
      } else if (key=='4') {
        key32[Q32cnt]=4;
      } else if (key=='5') {
        key32[Q32cnt]=5;
      } else if (key=='6') {
        key32[Q32cnt]=6;
      } else if (key=='7') {
        key32[Q32cnt]=7;
      } else if (key=='8') {
        key32[Q32cnt]=8;
      }
      Q32cnt+=1;
    }
    for (int i=0; i<8; i++) {
      if (key32[i]==1) {
        textSize(30);
        color(0, 255, 255);
        text("1 dx[i]=1; ", 630, 1000+i*100);
      } else if (key32[i]==2) {
        textSize(30);
        color(0, 255, 255);
        text("2  dx[i]=-1;", 630, 1000+i*100);
      } else if (key32[i]==3) {
        textSize(30);
        color(0, 255, 255);
        text("3  }else if(width<x[i]+35){", 630, 1000+i*100);
      } else if (key32[i]==4) {
        textSize(30);
        color(0, 255, 255);
        text("4 if(x[i]-35<0){", 630, 1000+i*100);
      } else if (key32[i]==5) {
        textSize(30);
        color(0, 255, 255);
        text("5 }else if(height<y[i]+250){", 630, 1000+i*100);
      } else if (key32[i]==6) {
        textSize(30);
        color(0, 255, 255);
        text("6  dy[i]=1;", 630, 1000+i*100);
      } else if (key32[i]==7) {
        textSize(30);
        color(0, 255, 255);
        text("7 dy[i]=-1;", 630, 1000+i*100);
      } else if (key32[i]==8) {
        textSize(30);
        color(0, 255, 255);
        text("8  if(y[i]-50<0){", 630, 1000+i*100);
      }
    }

    if (key32[0]==4&&key32[1]==1&&key32[2]==3&&key32[3]==2&&key32[4]==8&&key32[5]==6&&key32[6]==5&&key32[7]==7) {
      hit2=true;
    }

    if (hit2) {
      fill(139, 0, 0);
      textSize(100);
      text("正解！！", 1700, 200);
      fill(0);
      text("実行結果", 1700, 350);
      
      
      for (int i = 0; i<x2.length; i++) {
        body(x2[i], y[i]);


        //x bouud
        if (x2[i]-35<width/2) {
          dx[i] = 30;
        } else if (width<x2[i]+35) {
          dx[i] = -30;
        }

        //y bound
        if (y[i]-50<height/3) {
          dy[i] = 30;
        } else if (height*2/3<y[i]+250) {
          dy[i] = -30;
        }

        x2[i] += dx[i];
        y[i] += dy[i];
      }
    } else if (Q32cnt==8) {
      fill(139, 0, 0);
      textSize(150);
      text("不正解！！", 1700, 700);
      fill(0);
      textSize(100);
      text("解説", 1800, 1300);
      fill(0);
      textSize(50);
      text("もしキャラクターが壁のむこうにいったら", 1450, 1400);
      text("逆に動くというようにしよう！", 1450, 1500);
    }






    PImage img2 = loadImage("prop2.jpg");
    image(img2, 100, 700);
    PImage img3 = loadImage("prop3.jpg");
    image(img3, 100, 1300);
    PImage img4 = loadImage("prop4.jpg");
    image(img4, 550, 700);
  }
  void body(int x, int y) {
    fill(255);
    ellipse(x, y, faceSizeX, faceSizeY);//face

    ellipse(x-10, y, eyeSize, eyeSize);//eye left
    ellipse(x+10, y, eyeSize, eyeSize);//eye right

    rect(x-35, y+50, bodySizeX, bodySizeY);//body

    line(x-20, y+150, x-20, y+legSize);//leg left
    line(x+20, y+150, x+20, y+legSize);//leg right
  }
  int check(char ans) {//不正解だったら説明を表示
    if (ans+1 == key) {
      return 1;
    } else {
      return 2;
    }
  }
}
