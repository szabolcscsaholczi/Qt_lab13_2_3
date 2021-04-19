# Qt_lab13_2_3

2. Irjunk egy programot, mely QML segítségével megjelenít egy kockában : 
   - egy kockát a közepén
   - a kocka külső részén, plusz 8 kockát jeleníts meg, minden pontjánál, a közép, illetve a sarkainál

![2](https://user-images.githubusercontent.com/78269344/115226698-38d98a80-a118-11eb-8123-bf9857997bc2.png)

3. A meglévő 2-es feladatot bővítsd egy Slider-rel, aminek a logikáj az lenne, hogy: 
   - állítsd be a minimum és a mximum értéket 0-360 fokos értékekre
   - a stepSize legyen 1.0
   - a slider a kocka körkörös forgatását csinálja
**Megjegyzés: A régebb verzióban a QtQuick.Controls  1.4 - esetében a Slidernek volt minimumValue és maximumValue elemensei, de az ujabbakban ilyen nincs, ott használd a from és a to parancsszavakat**
   
      ```c++
         Slider{
              id:slide
              width: parent.width
              from: 0 //minimumValue : 0
              to : 360 //maximumValue : 360
              value: 0
              stepSize: 1.0
              enabled: true
              onValueChanged: {
                  recCenter.rotation = slide.value
              }
        }
      ```
![3](https://user-images.githubusercontent.com/78269344/115226699-38d98a80-a118-11eb-804d-ce2cedd66b2f.png)
