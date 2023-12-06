#
#  QuiT v1.1.7 makefile
#


GPP	=clang
OUTFILE	=quit
PRJNAME =quit
CFLAGS	=-O3 -Wall -DLINUX -pthread -lmysqlclient
ECFLAGS	=-Wall -m32 -DLINUX -I"/usr/include" -L"/usr/lib" -pthread -lmysqlclient

all:
	$(GPP) -o ./$(PRJNAME) ./$(PRJNAME).c $(CFLAGS)

i386:
	$(GPP) -o ./$(PRJNAME) ./$(PRJNAME).c $(ECFLAGS)
