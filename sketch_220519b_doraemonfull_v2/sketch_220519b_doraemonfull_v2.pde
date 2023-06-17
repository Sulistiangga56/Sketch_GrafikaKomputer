void setup()
{
size(380,400); //ukuran gambar 380x400
background(255); //Warna background
}
void draw()
{
noStroke(); //tidak ada frame
fill(0,200,255); //warna biru bagian kepala
ellipse(185,105,155,155); //Kepala
stroke(0,0,0);
fill(255,255,255); //Kepala Putih
ellipse(185,115,125,125); //Kepala Putih
fill(255,255,255); //Warna Mata Putih sebelah kiri
stroke(0,0,0);
ellipse(169,70,35,48); //Gambar Mata kiri
fill(255,255,255); //Warna Mata Putih sebelah kanan
stroke(0,0,0);
ellipse(205,70,35,48); //Gambar Mata kanan
fill(0,0,0); //Warna pupil mata hitam sebelah kiri
stroke(0,0,0);
ellipse(193,70,8,8); //Gambar pupil mata kiri
fill(0,0,0); ////Warna pupil mata hitam sebelah kanan
stroke(0,0,0);
ellipse(180,70,8,8); //Gambar pupil mata kanan
fill(255,0,0); //Warna Merah
stroke(0,0,0);
ellipse(187,90,15,15); //Gambar hidung
fill(255,255,255); //Warna hitam
stroke(0,0,0);
line(187,145,187,97); // garis mulut
line(135, 95, 170, 100); 
line(135, 108, 170, 108);
line(135, 125, 170, 115);
line(200, 100, 235, 95);
line(200, 108, 235, 108);
line(200, 115, 235, 125);
//Menggambar Mulut
fill(255,50,0); //warna merah mulut
arc(185, 130, 70, 70, 0, PI, PIE);//Bagian mulut membentuk pie
stroke(255);
fill(0,200,255); //Badan berwarna biru
rect(135,170,100,100); //Menggambar Badan
stroke(0);
fill(255,255,255); //Warna putih
ellipse(185,209,80,80);
fill(255,0,0); //Warna Merah
rect(135,170,100,12,7); //Leher
//Menggambar Kantong Ajaib
fill(255);
stroke(0);
arc(185, 210, 65, 65, 0, PI, PIE); //Kantong membentuk Pie
//Kalung
fill(255, 247, 153);
ellipse(185, 185, 25, 25);
//Lengan Kiri
fill(0,200,255);
stroke(0);
quad(110, 230, 110, 200, 136, 180, 136, 210);
//Lengan Kanan
fill(0,200,255);
stroke(0);
quad(235, 210, 235, 180, 264, 200, 264, 230);
//Tangan Kiri
fill(255, 255, 255);
stroke(0);
ellipse(105, 217, 35, 35);
//Tangan Kanan
fill(255, 255, 255);
stroke(0);
ellipse(270, 217, 35, 35);
//Menggambar Kaki
fill(255,255,255); 
stroke(0);
rect(125,270,60,15,10);
fill(255,255,255); 
stroke(0);
rect(185,270,60,15,10);
}
