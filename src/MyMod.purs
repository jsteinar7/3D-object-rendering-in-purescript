module MyMod where
import Prelude
import Math


x1=150.0
y1=150.0
x2=350.0
y2=350.0

centre=250.0
angle::Number->Number
angle val = (val*pi)/ ( 180.0)


rotate1::Number->Number
rotate1 a1 = (((x1-centre)*cos(a1)-(y1-centre)*sin(a1))+centre) --x1 y1 xx1
rotate2::Number->Number
rotate2 a2 = (((y1-centre)*cos(a2) + (x1-centre)*sin(a2))+centre)
rotate3::Number->Number
rotate3 a3 = (((x2-centre)*cos(a3) - (y2-centre)*sin(a3))+centre)
rotate4::Number->Number
rotate4 a4 = (((y2-centre)*cos(a4) + (x2-centre)*sin(a4))+centre)
rotate5::Number->Number
rotate5 a5 = (((x2-centre)*cos(a5) - (y1-centre)*sin(a5))+centre)
rotate6::Number->Number
rotate6 a6 = (((y1-centre)*cos(a6) + (x2-centre)*sin(a6))+centre)
rotate7::Number->Number
rotate7 a7 = (((x1-centre)*cos(a7) - (y2-centre)*sin(a7))+centre)
rotate8::Number->Number
rotate8 a8 = (((y2-centre)*cos(a8) + (x1-centre)*sin(a8))+centre)
