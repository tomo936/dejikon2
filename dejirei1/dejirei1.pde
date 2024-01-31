
screen scene;
boolean isPlay=false;
boolean one=false;
boolean two=false;
boolean three=false;
boolean mondai=false;
boolean mondai2=false;
boolean mondai3=false;

boolean Q1q1=false;
boolean Q1q2=false;
boolean Q1q3=false;
boolean Q2q1=false;
boolean Q2q2=false;
boolean Q2q3=false;
boolean Q3q1=false;
boolean Q3q2=false;

boolean Q1q1Q=false;
boolean Q1q2Q=false;
boolean Q1q3Q=false;
boolean Q2q1Q=false;
boolean Q2q2Q=false;
boolean Q2q3Q=false;
boolean Q3q1Q=false;
boolean Q3q2Q=false;


void setup() {
  fullScreen();
  scene=new screen();
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  
}

void draw() {
  if (!isPlay) {
    scene.start_scene();
  } else if (isPlay&&!mondai) {
    background(255);
    scene.question();
  }
  if (!mondai2&&!mondai3&&mondai) {
    if (!Q1q1&&!Q1q2&&!Q1q3) {
      scene.question1();
    }
    if (Q1q1&&!Q1q2&&!Q1q3) {
      background(255);
      scene.Q1q1draw();
      if (Q1q1Q) {
        background(255);

        scene.Q1q1Qdraw();
      }
    }


    if (!Q1q1&&!Q1q3&&Q1q2) {
      background(255);
      scene.Q1q2draw();

      if (Q1q2Q) {
        background(255);
        scene.Q1q2Qdraw();
      }
    }


    if (!Q1q1&&!Q1q2&&Q1q3) {
      background(255);
      scene.Q1q3draw();
      if (Q1q3Q) {
        background(255);
        scene.Q1q3Qdraw();
      }
    }
  }
  if (!mondai&&!mondai3&&mondai2) {
    if (!Q2q1&&!Q2q2&&!Q2q3) {
      scene.question2();
    }
    if (Q2q1) {
      background(255);
      scene.Q2q1draw();
      if (Q2q1Q) {
        background(255);

        scene.Q2q1Qdraw();
      }
    }

    if (Q2q2) {
      background(255);
      scene.Q2q2draw();
      if (Q2q2Q) {
        background(255);

        scene.Q2q2Qdraw();
      }
    }
    if (Q2q3) {
      background(255);
      scene.Q2q3draw();
      if (Q2q3Q) {
        background(255);

        scene.Q2q3Qdraw();
      }
    }
  }
  if (!mondai&&!mondai2&&mondai3) {
    if (!Q3q1&&!Q3q2) {
      scene.question3();
    }

    if (Q3q1) {
      background(255);
      scene.Q3q1draw();
      if (Q3q1Q) {
        background(255);

        scene.Q3q1Qdraw();
      }
    }
    if (Q3q2) {
      background(255);
      scene.Q3q2draw();
      if (Q3q2Q) {
        background(255);

        scene.Q3q2Qdraw();
      }
    }
  }
}

void mouseClicked() {
  //説明１
  //ここで範囲に戻るばーをいれてないためバグる
  if (mondai&&!Q1q2&&!Q1q3&&mouseY>0&&mouseY<=height/3) {
    Q1q1=true;
  }
  if (mondai&&!Q1q1&&!Q1q3&&mouseY>height/3&&mouseY<=height/3*2) {
    Q1q2=true;
  }
  if (mondai&&!Q1q1&&!Q1q2&&mouseY>height/3*2&&mouseY<=height) {
    Q1q3=true;
  }
  //説明２
  if (mondai2&&!Q2q2&&!Q2q3&&mouseY>0&&mouseY<=height/3) {
    Q2q1=true;
  }
  if (mondai2&&!Q2q1&&!Q2q3&&mouseY>height/3&&mouseY<=height/3*2) {
    Q2q2=true;
  }
  if (mondai2&&!Q2q1&&!Q2q2&&mouseY>height/3*2&&mouseY<=height) {
    Q2q3=true;
  }
  //説明３
  if (mondai3&&!Q3q2&&mouseY>0&&mouseY<=height/3) {
    Q3q1=true;
  }
  if (mondai3&&!Q3q1&&mouseY>height/2&&mouseY<=height) {
    Q3q2=true;
  }
  //画面表示
  if (!isPlay) {
    isPlay = true;
  } else if (isPlay&&((mouseX>300)&&mouseX<600)&&(mouseY>=height/3+100)&&(mouseY<=height/3+100+300)) {
    mondai=true;
  } else if (isPlay&&((mouseX>width/3+300)&&mouseX<width/3+600)&&(mouseY>=height/3+100)&&(mouseY<=height/3+100+300)) {
    mondai2=true;
  } else if (isPlay&&((mouseX>width/3*2+300)&&mouseX<width/3*2+600)&&(mouseY>=height/3+100)&&(mouseY<=height/3+100+300)) {
    mondai3=true;
  }
  //戻る
  if (mondai&&Q1q1&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=0&&mouseY<=100)) {
    mondai=false;
    Q1q1=false;
    Q1q2=false;
    Q1q3=false;
    Q1q1Q=false;
    Q1q2Q=false;
    Q1q3Q=false;
  }
  if (mondai2&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=0&&mouseY<=100)) {
    mondai2=false;
    Q2q1=false;
    Q2q2=false;
    Q2q3=false;
    Q2q1Q=false;
    Q2q2Q=false;
    Q2q3Q=false;
  }
  if (!Q1q1&&mondai3&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=0&&mouseY<=100)) {
    mondai3=false;
    Q3q1=false;
    Q3q2=false;
    Q3q1Q=false;
    Q3q2Q=false;
  }
  //問題
  if (Q1q1&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q1q1Q=true;
  }
  if (Q1q2&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q1q2Q=true;
  }
  if (Q1q3&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q1q3Q=true;
  }

  if (Q2q1&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q2q1Q=true;
  }
  if (Q2q2&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q2q2Q=true;
  }
  if (Q2q3&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q2q3Q=true;
  }

  if (Q3q1&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q3q1Q=true;
  }
  if (Q3q2&&(mouseX>=width-200&&mouseX<=width)&&(mouseY>=height-100&&mouseY<=height)) {
    Q3q2Q=true;
  }
}
