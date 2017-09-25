sources = gui_simple.cpp carre.cpp
headers = 
objets = $(sources:.cpp=.o)


all : GUISimple CourbeCarre

GUISimple : guisimple.o
	g++  -l QtGui -l QtCore $^ -o $@

CourbeCarre : carre.o
	g++  -L /net/cremi/jbenet910e/Bureau/M2/C/MAKEFILETP/TP1/qcustomplot/sharedlib/compilation/ -l qcustomplot -l QtGui -l QtCore  $^ -o $@


guisimple.o : gui_simple.cpp
	g++ -I/usr/include/qt4/ -I/usr/include/qt4/QtGui/ -I/usr/include/qt4/QtCore/ -c  $^ -o $@ 

carre.o : carre.cpp
	g++ -I/usr/include/qt4/ -I/usr/include/qt4/QtGui/ -I/usr/include/qt4/QtCore/ -I/net/cremi/jbenet910e/Bureau/M2/C/MAKEFILETP/TP1/qcustomplot/ -c $^ -o $@ 
clean :
	rm -f *~ *.o

mrproper : clean
	rm -f GUISimple CourbeCarre
