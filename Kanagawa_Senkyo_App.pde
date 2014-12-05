float[] angles1;

int PieChartPlotX;
int PieChartPlotY;
int distance = 50;
int diameter = 70;

HashMap Kuwari1; HashMap Kuwari2; HashMap Kuwari3; HashMap Kuwari4; HashMap Kuwari5;
HashMap Kuwari6; HashMap Kuwari7; HashMap Kuwari8; HashMap Kuwari9; HashMap Kuwari10;
HashMap Kuwari11; HashMap Kuwari12; HashMap Kuwari13; HashMap Kuwari14; HashMap Kuwari15;
HashMap Kuwari16; HashMap Kuwari17;HashMap Kuwari18;

HashMap Kouho1;
HashMap Kouho2;
HashMap Kouho3;
HashMap Kouho4;
HashMap Kouho5;
HashMap Kouho6;
HashMap Kouho7;
HashMap Kouho8;
HashMap Kouho9;
HashMap Kouho10;
HashMap Kouho11;
HashMap Kouho12;
HashMap Kouho13;
HashMap Kouho14;
HashMap Kouho15;
HashMap Kouho16;
HashMap Kouho17;
HashMap Kouho18;

int dataMax1 = 0;
int dataMax2 = 0;
int dataMax3 = 0;
int dataMax4 = 0;
int dataMax5 = 0;
int dataMax6 = 0;
int dataMax7 = 0;
int dataMax8 = 0;
int dataMax9 = 0;
int dataMax10 = 0;
int dataMax11 = 0;
int dataMax12 = 0;
int dataMax13 = 0;
int dataMax14 = 0;
int dataMax15 = 0;
int dataMax16 = 0;
int dataMax17 = 0;
int dataMax18 = 0;

int[][] touhyouritsu;

PShape KanagawaMap;
PFont font;
PFont TitleFont;
PFont RateFont;

// Set year
int year;
String DataTitle;
HashMap kouho2014;

String[] filename;

int type;

void setup(){
  
  year = 2012;
  type = 2;
  filename = new String[5];
  filename[0] = "kanagawa2003.csv";
  filename[1] = "kanagawa2005.csv";
  filename[2] = "kanagawa2009.csv";
  filename[3] = "kanagawa2012.csv";
  filename[4] = "kanagawa_hirei2012.csv";
  
  String[] lines = loadStrings(filename[3]); 
  KanagawaMap = loadShape("kanagawa.svg");
  
  font = createFont("SansSerif", 8);
  TitleFont = createFont("SansSerif", 28);
  RateFont = createFont("SansSerif", 14);
  
  String[] lines2 = loadStrings("touhyouritsu.csv");
  String[] lines3 = loadStrings("2014info.csv");
  
  size(1200,750);
  DataTitle = "Kanagawa Senkyo " + str(year);
  
  touhyouritsu = new int[8][8];
  for(int i=0; i< lines2.length; i++){
    
    String[] pieces = split(lines2[i], ',');
    for(int j=0; j<5; j++){
      touhyouritsu[i][j] = int(pieces[j]);
    }
    
  }
  
  println(lines3.length);
  kouho2014 = new HashMap(80);
  for(int i=0; i<lines3.length; i++){
    String[] pieces = split(lines3[i],',');
    kouho2014.put(pieces[2],pieces[1]);
  
  }
  
  
  Kuwari1 = new HashMap(); 
  Kuwari2 = new HashMap(); 
  Kuwari3 = new HashMap(); 
  Kuwari4 = new HashMap(); 
  Kuwari5 = new HashMap(); 
  Kuwari6 = new HashMap(); 
  Kuwari7 = new HashMap(); 
  Kuwari8 = new HashMap(); 
  Kuwari9 = new HashMap(); 
  Kuwari10 = new HashMap(); 
  Kuwari11 = new HashMap(); 
  Kuwari12 = new HashMap(); 
  Kuwari13 = new HashMap(); 
  Kuwari14 = new HashMap(); 
  Kuwari15 = new HashMap(); 
  Kuwari16 = new HashMap(); 
  Kuwari17 = new HashMap(); 
  Kuwari18 = new HashMap(); 
  
  Kouho1 = new HashMap(); 
  Kouho2 = new HashMap(); 
  Kouho3 = new HashMap(); 
  Kouho4 = new HashMap(); 
  Kouho5 = new HashMap(); 
  Kouho6 = new HashMap(); 
  Kouho7 = new HashMap(); 
  Kouho8 = new HashMap(); 
  Kouho9 = new HashMap(); 
  Kouho10 = new HashMap(); 
  Kouho11 = new HashMap(); 
  Kouho12 = new HashMap(); 
  Kouho13 = new HashMap(); 
  Kouho14 = new HashMap(); 
  Kouho15 = new HashMap(); 
  Kouho16 = new HashMap(); 
  Kouho17 = new HashMap(); 
  Kouho18 = new HashMap(); 
  
  dataMax1 = 0;
  
  for(int i=0; i<lines.length; i++){
    
    String[] pieces = split(lines[i],',');
    int kuwari = int(pieces[0]);
    int party  = int(pieces[1]);
    String name = pieces[2];
    int vote   = int(pieces[3]);
    
    if(kuwari == 1){ Kuwari1.put(party,vote); Kouho1.put(party,name); dataMax1 = dataMax1 + vote; }
    if(kuwari == 2){ Kuwari2.put(party,vote); Kouho2.put(party,name); dataMax2 = dataMax2 + vote; }
    if(kuwari == 3){ Kuwari3.put(party,vote); Kouho3.put(party,name); dataMax3 = dataMax3 + vote; }
    if(kuwari == 4){ Kuwari4.put(party,vote); Kouho4.put(party,name); dataMax4 = dataMax4 + vote; }
    if(kuwari == 5){ Kuwari5.put(party,vote); Kouho5.put(party,name); dataMax5 = dataMax5 + vote; }
    if(kuwari == 6){ Kuwari6.put(party,vote); Kouho6.put(party,name); dataMax6 = dataMax6 + vote; }
    if(kuwari == 7){ Kuwari7.put(party,vote); Kouho7.put(party,name); dataMax7 = dataMax7 + vote; }
    if(kuwari == 8){ Kuwari8.put(party,vote); Kouho8.put(party,name); dataMax8 = dataMax8 + vote; }
    if(kuwari == 9){ Kuwari9.put(party,vote); Kouho9.put(party,name); dataMax9 = dataMax9 + vote; }
    if(kuwari == 10){ Kuwari10.put(party,vote); Kouho10.put(party,name); dataMax10 = dataMax10 + vote; }
    if(kuwari == 11){ Kuwari11.put(party,vote); Kouho11.put(party,name); dataMax11 = dataMax11 + vote; }
    if(kuwari == 12){ Kuwari12.put(party,vote); Kouho12.put(party,name); dataMax12 = dataMax12 + vote; }
    if(kuwari == 13){ Kuwari13.put(party,vote); Kouho13.put(party,name); dataMax13 = dataMax13 + vote; }
    if(kuwari == 14){ Kuwari14.put(party,vote); Kouho14.put(party,name); dataMax14 = dataMax14 + vote; }
    if(kuwari == 15){ Kuwari15.put(party,vote); Kouho15.put(party,name); dataMax15 = dataMax15 + vote; }
    if(kuwari == 16){ Kuwari16.put(party,vote); Kouho16.put(party,name); dataMax16 = dataMax16 + vote; }
    if(kuwari == 17){ Kuwari17.put(party,vote); Kouho17.put(party,name); dataMax17 = dataMax17 + vote; }
    if(kuwari == 18){ Kuwari18.put(party,vote); Kouho18.put(party,name); dataMax18 = dataMax18 + vote; }
  }
  
  frameRate(15);

}


void UpdateSetting(int SetYear){

  String[] lines;
  if(SetYear == 2003){
    lines = loadStrings(filename[0]);
  }else if(SetYear == 2005){
    lines = loadStrings(filename[1]);
  }else if(SetYear == 2009){
    lines = loadStrings(filename[2]);
  }else if(SetYear == 2012){
    lines = loadStrings(filename[3]);
  }else{
    lines = loadStrings(filename[3]);
    
  }
  
  KanagawaMap = loadShape("kanagawa.svg");
  
  String[] lines2 = loadStrings("touhyouritsu.csv");
  String[] lines3 = loadStrings("2014info.csv");
  
  touhyouritsu = new int[8][8];
  for(int i=0; i< lines2.length; i++){
    
    String[] pieces = split(lines2[i], ',');
    for(int j=0; j<5; j++){
      touhyouritsu[i][j] = int(pieces[j]);
    }
    
  }
  
  kouho2014 = new HashMap(80);
  for(int i=0; i<lines3.length; i++){
    String[] pieces = split(lines3[i],',');
    kouho2014.put(pieces[2],pieces[1]);
  
  }
  
  
  Kuwari1 = new HashMap(); 
  Kuwari2 = new HashMap(); 
  Kuwari3 = new HashMap(); 
  Kuwari4 = new HashMap(); 
  Kuwari5 = new HashMap(); 
  Kuwari6 = new HashMap(); 
  Kuwari7 = new HashMap(); 
  Kuwari8 = new HashMap(); 
  Kuwari9 = new HashMap(); 
  Kuwari10 = new HashMap(); 
  Kuwari11 = new HashMap(); 
  Kuwari12 = new HashMap(); 
  Kuwari13 = new HashMap(); 
  Kuwari14 = new HashMap(); 
  Kuwari15 = new HashMap(); 
  Kuwari16 = new HashMap(); 
  Kuwari17 = new HashMap(); 
  Kuwari18 = new HashMap(); 
  
  Kouho1 = new HashMap(); 
  Kouho2 = new HashMap(); 
  Kouho3 = new HashMap(); 
  Kouho4 = new HashMap(); 
  Kouho5 = new HashMap(); 
  Kouho6 = new HashMap(); 
  Kouho7 = new HashMap(); 
  Kouho8 = new HashMap(); 
  Kouho9 = new HashMap(); 
  Kouho10 = new HashMap(); 
  Kouho11 = new HashMap(); 
  Kouho12 = new HashMap(); 
  Kouho13 = new HashMap(); 
  Kouho14 = new HashMap(); 
  Kouho15 = new HashMap(); 
  Kouho16 = new HashMap(); 
  Kouho17 = new HashMap(); 
  Kouho18 = new HashMap(); 
  
  dataMax1 = 0;
  dataMax2 = 0;
  dataMax3 = 0;
  dataMax4 = 0;
  dataMax5 = 0;
  dataMax6 = 0;
  dataMax7 = 0;
  dataMax8 = 0;
  dataMax9 = 0;
  dataMax10 = 0;
  dataMax11 = 0;
  dataMax12 = 0;
  dataMax13 = 0;
  dataMax14 = 0;
  dataMax15 = 0;
  dataMax16 = 0;
  dataMax17 = 0;
  dataMax18 = 0;
  
  dataMax1 = 0;
  
  for(int i=0; i<lines.length; i++){
    
    String[] pieces = split(lines[i],',');
    int kuwari = int(pieces[0]);
    int party  = int(pieces[1]);
    String name = pieces[2];
    int vote   = int(pieces[3]);
    
    if(kuwari == 1){ Kuwari1.put(party,vote); Kouho1.put(party,name); dataMax1 = dataMax1 + vote; }
    if(kuwari == 2){ Kuwari2.put(party,vote); Kouho2.put(party,name); dataMax2 = dataMax2 + vote; }
    if(kuwari == 3){ Kuwari3.put(party,vote); Kouho3.put(party,name); dataMax3 = dataMax3 + vote; }
    if(kuwari == 4){ Kuwari4.put(party,vote); Kouho4.put(party,name); dataMax4 = dataMax4 + vote; }
    if(kuwari == 5){ Kuwari5.put(party,vote); Kouho5.put(party,name); dataMax5 = dataMax5 + vote; }
    if(kuwari == 6){ Kuwari6.put(party,vote); Kouho6.put(party,name); dataMax6 = dataMax6 + vote; }
    if(kuwari == 7){ Kuwari7.put(party,vote); Kouho7.put(party,name); dataMax7 = dataMax7 + vote; }
    if(kuwari == 8){ Kuwari8.put(party,vote); Kouho8.put(party,name); dataMax8 = dataMax8 + vote; }
    if(kuwari == 9){ Kuwari9.put(party,vote); Kouho9.put(party,name); dataMax9 = dataMax9 + vote; }
    if(kuwari == 10){ Kuwari10.put(party,vote); Kouho10.put(party,name); dataMax10 = dataMax10 + vote; }
    if(kuwari == 11){ Kuwari11.put(party,vote); Kouho11.put(party,name); dataMax11 = dataMax11 + vote; }
    if(kuwari == 12){ Kuwari12.put(party,vote); Kouho12.put(party,name); dataMax12 = dataMax12 + vote; }
    if(kuwari == 13){ Kuwari13.put(party,vote); Kouho13.put(party,name); dataMax13 = dataMax13 + vote; }
    if(kuwari == 14){ Kuwari14.put(party,vote); Kouho14.put(party,name); dataMax14 = dataMax14 + vote; }
    if(kuwari == 15){ Kuwari15.put(party,vote); Kouho15.put(party,name); dataMax15 = dataMax15 + vote; }
    if(kuwari == 16){ Kuwari16.put(party,vote); Kouho16.put(party,name); dataMax16 = dataMax16 + vote; }
    if(kuwari == 17){ Kuwari17.put(party,vote); Kouho17.put(party,name); dataMax17 = dataMax17 + vote; }
    if(kuwari == 18){ Kuwari18.put(party,vote); Kouho18.put(party,name); dataMax18 = dataMax18 + vote; }
  } 
  
  
}







void draw(){
  
  PieChartPlotX = 650;
  PieChartPlotY = 60;
  
  background(0);
  

  textFont(TitleFont);
  smooth();
  fill(255);
 
  text(DataTitle, 20, 40);
  
  textFont(font);
  ButtonDraw();
  drawKanagawaMap();
  drawTouhyou(year);
  drawParty();
  
  DrawEachSenkyoku();
  

}

void UpdateDraw(int SelectYear){
  
  year = SelectYear;
  
  PieChartPlotX = 650;
  PieChartPlotY = 60;
  
  background(0);
  
  textFont(TitleFont);
  
  smooth();
  fill(255);
  DataTitle = "Kanagawa Senkyo " + str(year);
  text(DataTitle, 20, 40);
  
  textFont(font);
  ButtonDraw();
  drawKanagawaMap();
  drawTouhyou(year);
  drawParty();
  
  DrawEachSenkyoku();
  
}



void DrawEachSenkyoku(){
  
  DrawPieChart(PieChartPlotX,PieChartPlotY,Kuwari1,Kouho1,dataMax1, 1);
  DrawPieChart(PieChartPlotX + (diameter + distance), PieChartPlotY, Kuwari2,Kouho2, dataMax2, 2);
  DrawPieChart(PieChartPlotX + (diameter * 2 + distance * 2), PieChartPlotY, Kuwari3, Kouho3, dataMax3, 3);
  DrawPieChart(PieChartPlotX + (diameter * 3 + distance * 3), PieChartPlotY, Kuwari4, Kouho4, dataMax4, 4);
  DrawPieChart(PieChartPlotX + (diameter * 4 + distance * 4), PieChartPlotY, Kuwari5, Kouho5, dataMax5, 5);
  
  DrawPieChart(PieChartPlotX,PieChartPlotY + (diameter + distance * 2),Kuwari6,Kouho6,dataMax6, 6);
  DrawPieChart(PieChartPlotX + (diameter + distance), PieChartPlotY + (diameter + distance * 2), Kuwari7,Kouho7, dataMax7, 7);
  DrawPieChart(PieChartPlotX + (diameter * 2 + distance * 2), PieChartPlotY + (diameter + distance * 2), Kuwari8, Kouho8, dataMax8, 8);
  DrawPieChart(PieChartPlotX + (diameter * 3 + distance * 3), PieChartPlotY + (diameter + distance * 2), Kuwari9, Kouho9, dataMax9, 9);
  DrawPieChart(PieChartPlotX + (diameter * 4 + distance * 4), PieChartPlotY + (diameter + distance * 2), Kuwari10, Kouho10, dataMax10, 10);
  
  DrawPieChart(PieChartPlotX,PieChartPlotY + (diameter * 2 + distance * 4),Kuwari11, Kouho11, dataMax11, 11);
  DrawPieChart(PieChartPlotX + (diameter + distance), PieChartPlotY + (diameter * 2 + distance * 4), Kuwari12, Kouho12, dataMax12, 12);
  DrawPieChart(PieChartPlotX + (diameter * 2 + distance * 2), PieChartPlotY + (diameter * 2 + distance * 4), Kuwari13, Kouho13, dataMax13, 13);
  DrawPieChart(PieChartPlotX + (diameter * 3 + distance * 3), PieChartPlotY + (diameter * 2 + distance * 4), Kuwari14, Kouho14, dataMax14, 14);
  DrawPieChart(PieChartPlotX + (diameter * 4 + distance * 4), PieChartPlotY + (diameter * 2 + distance * 4), Kuwari15, Kouho15, dataMax15, 15);
  

  DrawPieChart(PieChartPlotX,PieChartPlotY + (diameter * 3 + distance * 6),Kuwari16,Kouho16, dataMax16, 16);
  DrawPieChart(PieChartPlotX + (diameter + distance), PieChartPlotY + (diameter * 3 + distance * 6), Kuwari17, Kouho17, dataMax17, 17);
  DrawPieChart(PieChartPlotX + (diameter * 2 + distance * 2), PieChartPlotY + (diameter * 3 + distance * 6), Kuwari18, Kouho18, dataMax18, 18);
  
}




void DrawPieChart(int x, int y, HashMap Kuwari, HashMap Kouho, int dataMax, int knum){

  int countHash = Kuwari.size();

  float[] angles = new float[countHash];
  color[] pattern = new color[countHash];
  String[] namelist = new String[countHash];
  
  int j=0;
  for(int i=1; i<15; i++){
    if(Kuwari.containsKey(i)){
      Integer value = (Integer) Kuwari.get(i);
      angles[j] = (float) map(value,0,dataMax,0,360);
      namelist[j] = (String) Kouho.get(i);
      
      if(i==1){ pattern[j] = #CC3333; }
      else if(i==2){ pattern[j] = #DDDD00; }
      else if(i==3){ pattern[j] = #00DD00; }
      else if(i==4){ pattern[j] = #AAAAAA; }
      else if(i==5){ pattern[j] = #DD00DD; }
      else if(i==6){ pattern[j] = #55AACC; }
      else if(i==7){ pattern[j] = #AF8080; }
      else if(i==8){ pattern[j] = #FF9933; }
      else if(i==9){ pattern[j] = #3366EE; }
      else if(i==10){ pattern[j] = #FFFFFF; }
      else if(i==11){ pattern[j] = #CC6699; }
      else if(i==12){ pattern[j] = #9933CC; }
      else{ pattern[j] = #FFFFFF; }
      j++;
      
    }
    
  }

  pieChart(diameter,angles,pattern,namelist, x,y,knum);
  
  
}

void pieChart(float diameter, float[] data, color[] pattern, String[] namelist, int ChartX, int ChartY, int knum){
  
  float lastAngle = 0;

  //String gtitle = "KANAGAWA " + str(knum); 
  //text(gtitle,ChartX - 40, ChartY - (diameter / 2 + 10));
  
  float nameTextX = ChartX - 60;
  float nameTextY = ChartY + (diameter / 2 + 10 );
  
  for(int i=0; i< data.length; i++){
    
    float percentage = (data[i] / 360) * 100;
    //float gray = map(i,0,data.length,0,255);
    fill(pattern[i]);
    noStroke();
    arc(ChartX, ChartY, diameter, diameter, lastAngle,lastAngle+radians(data[i]));
   
    lastAngle += radians(data[i]);
    
    
    rect(nameTextX, nameTextY, 8, 8);      

    
    int party = 0;
    String pname = namelist[i];
    
    pname = trim(pname);
    for(int j=0; j<kouho2014.size(); j++){
      
      if(kouho2014.containsKey(pname)){
        
        String tmp = (String) kouho2014.get(pname);
        party = int(tmp);
        
      }
    }
    
    if(party==1){ fill(#FF2222); }
    else if(party==2){ fill(#E3E300); }
    else if(party==3){ fill(#00E300); }
    else if(party==4){ fill(#AFAFAF); }
    else if(party==5){ fill(#E300E3); }
    else if(party==6){ fill(#80BBFF); }
    else if(party==7){ fill(#AF8080); }
    else if(party==8){ fill(#FF9933); }
    else if(party==9){ fill(#3399FF); }
    else if(party==10){ fill(#FFFFFF); }
    else if(party==11){ fill(#CC6699); }
    else if(party==12){ fill(#9933CC); }
    else{ fill(#FFFFFF); }
    
    textFont(font);
    
    String ptext;
    if(percentage < 10){ ptext = namelist[i] + " (" + nf(percentage,1,2) + "%)"; }
    else{ ptext = namelist[i] + " (" + nf(percentage, 2, 1) + "%)"; }
    
    text(ptext,nameTextX + 20,nameTextY + 8);
    nameTextY = nameTextY + 15;
           
  }
  fill(#000000);
  ellipse(ChartX, ChartY, diameter/3, diameter/3);
  textFont(font);
  fill(255);
  if(knum < 10){
    text(knum, ChartX-4,ChartY+5);
  }else{
    text(knum,ChartX-6,ChartY+5);
  }
  
}



void drawKanagawaMap(){
  
   int[] win = new int[18];
   win[0] = getWinList(Kuwari1);
   win[1] = getWinList(Kuwari2);
   win[2] = getWinList(Kuwari3);
   win[3] = getWinList(Kuwari4);
   win[4] = getWinList(Kuwari5);
   win[5] = getWinList(Kuwari6);
   win[6] = getWinList(Kuwari7);
   win[7] = getWinList(Kuwari8);
   win[8] = getWinList(Kuwari9);
   win[9] = getWinList(Kuwari10); 
   win[10] = getWinList(Kuwari11);
   win[11] = getWinList(Kuwari12);
   win[12] = getWinList(Kuwari13);
   win[13] = getWinList(Kuwari14);
   win[14] = getWinList(Kuwari15);
   win[15] = getWinList(Kuwari16);
   win[16] = getWinList(Kuwari17);
   win[17] = getWinList(Kuwari18);
   
  noStroke();
  KanagawaMap.disableStyle();
  
  PShape senkyoku = new PShape();
  PShape caption = new PShape();
   
   for(int i=1; i<19; i++){
     String kuwari = str(i);
     senkyoku = KanagawaMap.getChild(kuwari);
     
     color c;
     if(win[i-1] == 1){ c = #CC3333; }
     else if(win[i-1] == 2){ c = #DDDD00; }
     else if(win[i-1] == 3){ c = #00DD00; }
     else if(win[i-1] == 4){ c = #AAAAAA; }
     else if(win[i-1] == 5){ c = #DD00DD; }
     else if(win[i-1] == 6){ c = #55AACC; }
     else if(win[i-1] == 7){ c = #AF8080; }
     else if(win[i-1] == 8){ c = #FF9933; }
     else if(win[i-1] == 9){ c = #3366EE; }
     else if(win[i-1] == 11){ c = #CC6699; }
     else if(win[i-1] == 12){ c = #9933CC; }
     else{ c = #FFFFFF; }
     
     fill(c);
     stroke(255);
     //senkyoku.translate(25,100);
     shape(senkyoku);
     
   }
  caption = KanagawaMap.getChild("captions");
  //caption.translate(25,100);
  shape(caption);
  
}

int getWinList(HashMap Kuwari){
  
  int count = Kuwari.size(); 
  int max = 0;
  Integer win = 0;
  int j = 0;
  for(int i = 0; i<11; i++){
    if(Kuwari.containsKey(i)){
      j = i;
      Integer value = (Integer) Kuwari.get(i);
      if(value > max) { win = j; max = value;}      
    }
  }
  
  return win;
  
}


void drawTouhyou(int years){
  
  float vote = 0;
  float total = 0;
  float absolute = 0;
  float rate = 0;
  float rate_total = 0;
  
  for(int i = 0; i<8; i++){
    
    if(touhyouritsu[i][0] == years){
      total = touhyouritsu[i][2];
      vote  = touhyouritsu[i][3];
      absolute = touhyouritsu[i][4];
      if(touhyouritsu[i][1] == 1){
        rate_total = (vote / total) * 100;
      }else if(touhyouritsu[i][1] == 2){ 
        rate = (vote / total) * 100;
      }
    } 
  }
  
  textFont(RateFont);
  
  fill(255);
  text("Vote Rate (Country)   " + nf(rate_total,2,2) + "%", 50, 520);
  text("Vote Rate (Kanagawa)  " + nf(rate, 2, 2) + "%", 50, 540);
  
}

void drawParty(){
  
  int beginRectX = 50;
  int beginRectY = 555;
  int RectWidth = 8;
  int RectHeight = 8;
  int TextX = 70;
  int TextY = 562;
   
   noStroke();
   textFont(font);
   
   fill(#CC3333);
   rect(beginRectX,beginRectY,RectWidth,RectHeight);
   fill(#FFFFFF);
   text("自由民主党 / Liberal Democratic Party", TextX, TextY);
   
   fill(#DDDD00);
   beginRectY = beginRectY + (RectWidth *2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("公明党 / Komeito", TextX, TextY);
   
   fill(#00DD00);
   beginRectY = beginRectY + (RectWidth *2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("維新の党（日本維新の会）/ Japan Innovation Party (Japan Restration Party)", TextX, TextY);
   
   fill(#AAAAAA);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("みんなの党 / Your Party", TextX, TextY);
      
   fill(#DD00DD);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight); 
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("幸福実現党 / Happiness Realization Party", TextX, TextY);   
   
   fill(#55AACC);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("社会民主党 / Social Democratic Party", TextX, TextY);
      
   fill(#AF8080);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("日本共産党 / Japanese Communist Party", TextX, TextY);

   fill(#FF9933);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("生活の党（日本未来の党） / People's Life Party (Tomorrow Party of Japan)", TextX, TextY);   
   
   fill(#3366EE);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("民主党 / Democratic Party of Japan", TextX, TextY); 
   
   //else if(win[i-1] == 11){ c = #CC6699; }
   fill(#CC6699);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("新党日本 / New Party Nippon", TextX, TextY); 
     
     //else if(win[i-1] == 12){ c = #9933CC; }
   fill(#9933CC);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("次世代の党 / The Party for Future Generations", TextX, TextY); 
   
   
   fill(#FFFFFF);
   beginRectY = beginRectY + (RectWidth * 2);
   rect(beginRectX,beginRectY, RectWidth, RectHeight);
   fill(#FFFFFF);
   TextY = TextY + (RectWidth * 2);
   text("Others", TextX, TextY); 
   
}


void ButtonDraw(){
  
  float buttonX = 25;
  float buttonY = 55;
  
  // 2003
  fill(255);
  rect(buttonX,buttonY, 50,15);
  fill(0);
  text("2012",buttonX + 15, buttonY+10);
  
  buttonX = buttonX + 50 + 10;
  fill(255);
  rect(buttonX,buttonY, 50,15);
  fill(0);
  text("2009",buttonX + 15, buttonY+10);
  
  buttonX = buttonX + 50 + 10;
  fill(255);
  rect(buttonX,buttonY, 50,15);
  fill(0);
  text("2005",buttonX + 15, buttonY+10);
  
  buttonX = buttonX + 50 + 10;
  fill(255);
  rect(buttonX,buttonY, 50,15);
  fill(0);
  text("2003",buttonX + 15, buttonY+10);
}


void mousePressed(){
  
  // 2003
  float BeginButtonX = 25;
  float BeginButtonY = 50;
  float EndButtonX = 75;
  float EndButtonY = 65;
  
  if(mouseX > BeginButtonX && mouseX < EndButtonX){
    if(mouseY > BeginButtonY && mouseY < EndButtonY){
     int SetYear = 2012;
     type =1;
     println(mouseX,mouseY);
     UpdateSetting(SetYear);
     UpdateDraw(SetYear); 
    }
  }
  
  float BeginButtonX_2 = BeginButtonX + 50 + 10;
  float EndButtonX_2 = EndButtonX + 50 + 10;
  
  if(mouseX > BeginButtonX_2 && mouseX < EndButtonX_2){
    if(mouseY > BeginButtonY && mouseY < EndButtonY){
     int SetYear = 2009;
     type = 1;
     println(mouseX,mouseY);
     UpdateSetting(SetYear);
     UpdateDraw(SetYear); 
    }
  }


  float BeginButtonX_3 = BeginButtonX_2 + 50 + 10;
  float EndButtonX_3 = EndButtonX_2 + 50 + 10;
  
  if(mouseX > BeginButtonX_3 && mouseX < EndButtonX_3){
    if(mouseY > BeginButtonY && mouseY < EndButtonY){
     int SetYear = 2005;
     type = 1;
     println(mouseX,mouseY);
     UpdateSetting(SetYear);
     UpdateDraw(SetYear); 
    }
  }


  float BeginButtonX_4 = BeginButtonX_3 + 50 + 10;
  float EndButtonX_4 = EndButtonX_3 + 50 + 10;
  
  if(mouseX > BeginButtonX_4 && mouseX < EndButtonX_4){
    if(mouseY > BeginButtonY && mouseY < EndButtonY){
     int SetYear = 2003;
     type = 1;
     println(mouseX,mouseY);
     UpdateSetting(SetYear);
     UpdateDraw(SetYear); 
    }
  }
}




