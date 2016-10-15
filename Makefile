#############################################################################
# Makefile for building: rzwclient
# Generated by qmake (2.01a) (Qt 4.8.1) on: Sat Oct 15 15:05:28 2016
# Project:  rzwclient.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec ../../../../share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile rzwclient.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -D_EMALIB -D_EXYNOS_ARM -D_LIBUDEV -D_LIBUSB -D_OPENCV -DQT_SQL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I../../../../share/qt4/mkspecs/linux-g++ -I. -I../../../../include/qt4/QtCore -I../../../../include/qt4/QtGui -I../../../../include/qt4/QtSql -I../../../../include/qt4 -I../../../include -I. -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib/arm-linux-gnueabihf -L/usr/local/lib -lcmirisLib2_arm_2.3.0 -fopenmp -lcmicolorLib_arm_0.9.0 -lemaLib_arm_1.0.3 -lQtSql -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = mainwindow.cpp \
		main.cpp \
		cdatabase.cpp \
		dialogname.cpp \
		eventthread.cpp \
		dmeventthread.cpp \
		dbrecord.cpp \
		dialogoverwrite.cpp \
		emaeventthread.cpp moc_mainwindow.cpp \
		moc_dialogname.cpp \
		moc_eventthread.cpp \
		moc_dmeventthread.cpp \
		moc_dialogoverwrite.cpp \
		moc_emaeventthread.cpp
OBJECTS       = mainwindow.o \
		main.o \
		cdatabase.o \
		dialogname.o \
		eventthread.o \
		dmeventthread.o \
		dbrecord.o \
		dialogoverwrite.o \
		emaeventthread.o \
		moc_mainwindow.o \
		moc_dialogname.o \
		moc_eventthread.o \
		moc_dmeventthread.o \
		moc_dialogoverwrite.o \
		moc_emaeventthread.o
DIST          = ../../../../share/qt4/mkspecs/common/unix.conf \
		../../../../share/qt4/mkspecs/common/linux.conf \
		../../../../share/qt4/mkspecs/common/gcc-base.conf \
		../../../../share/qt4/mkspecs/common/gcc-base-unix.conf \
		../../../../share/qt4/mkspecs/common/g++-base.conf \
		../../../../share/qt4/mkspecs/common/g++-unix.conf \
		../../../../share/qt4/mkspecs/qconfig.pri \
		../../../../share/qt4/mkspecs/modules/qt_webkit_version.pri \
		../../../../share/qt4/mkspecs/features/qt_functions.prf \
		../../../../share/qt4/mkspecs/features/qt_config.prf \
		../../../../share/qt4/mkspecs/features/exclusive_builds.prf \
		../../../../share/qt4/mkspecs/features/default_pre.prf \
		../../../../share/qt4/mkspecs/features/debug.prf \
		../../../../share/qt4/mkspecs/features/default_post.prf \
		../../../../share/qt4/mkspecs/features/declarative_debug.prf \
		../../../../share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		../../../../share/qt4/mkspecs/features/warn_on.prf \
		../../../../share/qt4/mkspecs/features/qt.prf \
		../../../../share/qt4/mkspecs/features/unix/thread.prf \
		../../../../share/qt4/mkspecs/features/moc.prf \
		../../../../share/qt4/mkspecs/features/resources.prf \
		../../../../share/qt4/mkspecs/features/uic.prf \
		../../../../share/qt4/mkspecs/features/yacc.prf \
		../../../../share/qt4/mkspecs/features/lex.prf \
		../../../../share/qt4/mkspecs/features/include_source_dir.prf \
		rzwclient.pro
QMAKE_TARGET  = rzwclient
DESTDIR       = 
TARGET        = rzwclient

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h ui_dialogname.h ui_dialogoverwrite.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: rzwclient.pro  ../../../../share/qt4/mkspecs/linux-g++/qmake.conf ../../../../share/qt4/mkspecs/common/unix.conf \
		../../../../share/qt4/mkspecs/common/linux.conf \
		../../../../share/qt4/mkspecs/common/gcc-base.conf \
		../../../../share/qt4/mkspecs/common/gcc-base-unix.conf \
		../../../../share/qt4/mkspecs/common/g++-base.conf \
		../../../../share/qt4/mkspecs/common/g++-unix.conf \
		../../../../share/qt4/mkspecs/qconfig.pri \
		../../../../share/qt4/mkspecs/modules/qt_webkit_version.pri \
		../../../../share/qt4/mkspecs/features/qt_functions.prf \
		../../../../share/qt4/mkspecs/features/qt_config.prf \
		../../../../share/qt4/mkspecs/features/exclusive_builds.prf \
		../../../../share/qt4/mkspecs/features/default_pre.prf \
		../../../../share/qt4/mkspecs/features/debug.prf \
		../../../../share/qt4/mkspecs/features/default_post.prf \
		../../../../share/qt4/mkspecs/features/declarative_debug.prf \
		../../../../share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		../../../../share/qt4/mkspecs/features/warn_on.prf \
		../../../../share/qt4/mkspecs/features/qt.prf \
		../../../../share/qt4/mkspecs/features/unix/thread.prf \
		../../../../share/qt4/mkspecs/features/moc.prf \
		../../../../share/qt4/mkspecs/features/resources.prf \
		../../../../share/qt4/mkspecs/features/uic.prf \
		../../../../share/qt4/mkspecs/features/yacc.prf \
		../../../../share/qt4/mkspecs/features/lex.prf \
		../../../../share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/arm-linux-gnueabihf/libQtSql.prl \
		/usr/lib/arm-linux-gnueabihf/libQtGui.prl \
		/usr/lib/arm-linux-gnueabihf/libQtCore.prl
	$(QMAKE) -spec ../../../../share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile rzwclient.pro
../../../../share/qt4/mkspecs/common/unix.conf:
../../../../share/qt4/mkspecs/common/linux.conf:
../../../../share/qt4/mkspecs/common/gcc-base.conf:
../../../../share/qt4/mkspecs/common/gcc-base-unix.conf:
../../../../share/qt4/mkspecs/common/g++-base.conf:
../../../../share/qt4/mkspecs/common/g++-unix.conf:
../../../../share/qt4/mkspecs/qconfig.pri:
../../../../share/qt4/mkspecs/modules/qt_webkit_version.pri:
../../../../share/qt4/mkspecs/features/qt_functions.prf:
../../../../share/qt4/mkspecs/features/qt_config.prf:
../../../../share/qt4/mkspecs/features/exclusive_builds.prf:
../../../../share/qt4/mkspecs/features/default_pre.prf:
../../../../share/qt4/mkspecs/features/debug.prf:
../../../../share/qt4/mkspecs/features/default_post.prf:
../../../../share/qt4/mkspecs/features/declarative_debug.prf:
../../../../share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
../../../../share/qt4/mkspecs/features/warn_on.prf:
../../../../share/qt4/mkspecs/features/qt.prf:
../../../../share/qt4/mkspecs/features/unix/thread.prf:
../../../../share/qt4/mkspecs/features/moc.prf:
../../../../share/qt4/mkspecs/features/resources.prf:
../../../../share/qt4/mkspecs/features/uic.prf:
../../../../share/qt4/mkspecs/features/yacc.prf:
../../../../share/qt4/mkspecs/features/lex.prf:
../../../../share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/arm-linux-gnueabihf/libQtSql.prl:
/usr/lib/arm-linux-gnueabihf/libQtGui.prl:
/usr/lib/arm-linux-gnueabihf/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec ../../../../share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile rzwclient.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/rzwclient2.3.0 || $(MKDIR) .tmp/rzwclient2.3.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/rzwclient2.3.0/ && $(COPY_FILE) --parents mainwindow.h cdatabase.h dialogname.h eventthread.h dmeventthread.h dbrecord.h dialogoverwrite.h emaeventthread.h .tmp/rzwclient2.3.0/ && $(COPY_FILE) --parents mainwindow.cpp main.cpp cdatabase.cpp dialogname.cpp eventthread.cpp dmeventthread.cpp dbrecord.cpp dialogoverwrite.cpp emaeventthread.cpp .tmp/rzwclient2.3.0/ && $(COPY_FILE) --parents mainwindow.ui dialogname.ui dialogoverwrite.ui .tmp/rzwclient2.3.0/ && (cd `dirname .tmp/rzwclient2.3.0` && $(TAR) rzwclient2.3.0.tar rzwclient2.3.0 && $(COMPRESS) rzwclient2.3.0.tar) && $(MOVE) `dirname .tmp/rzwclient2.3.0`/rzwclient2.3.0.tar.gz . && $(DEL_FILE) -r .tmp/rzwclient2.3.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_dialogname.cpp moc_eventthread.cpp moc_dmeventthread.cpp moc_dialogoverwrite.cpp moc_emaeventthread.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_dialogname.cpp moc_eventthread.cpp moc_dmeventthread.cpp moc_dialogoverwrite.cpp moc_emaeventthread.cpp
moc_mainwindow.cpp: cdatabase.h \
		dbrecord.h \
		dialogname.h \
		mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_dialogname.cpp: dialogname.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) dialogname.h -o moc_dialogname.cpp

moc_eventthread.cpp: eventthread.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) eventthread.h -o moc_eventthread.cpp

moc_dmeventthread.cpp: dmeventthread.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) dmeventthread.h -o moc_dmeventthread.cpp

moc_dialogoverwrite.cpp: dialogoverwrite.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) dialogoverwrite.h -o moc_dialogoverwrite.cpp

moc_emaeventthread.cpp: emaeventthread.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) emaeventthread.h -o moc_emaeventthread.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h ui_dialogname.h ui_dialogoverwrite.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h ui_dialogname.h ui_dialogoverwrite.h
ui_mainwindow.h: mainwindow.ui
	/usr/bin/uic-qt4 mainwindow.ui -o ui_mainwindow.h

ui_dialogname.h: dialogname.ui
	/usr/bin/uic-qt4 dialogname.ui -o ui_dialogname.h

ui_dialogoverwrite.h: dialogoverwrite.ui
	/usr/bin/uic-qt4 dialogoverwrite.ui -o ui_dialogoverwrite.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

mainwindow.o: mainwindow.cpp mainwindow.h \
		cdatabase.h \
		dbrecord.h \
		dialogname.h \
		eventthread.h \
		dmeventthread.h \
		emaeventthread.h \
		ui_mainwindow.h \
		ui_dialogname.h \
		dialogoverwrite.h \
		ui_dialogoverwrite.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

main.o: main.cpp mainwindow.h \
		cdatabase.h \
		dbrecord.h \
		dialogname.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

cdatabase.o: cdatabase.cpp cdatabase.h \
		dbrecord.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o cdatabase.o cdatabase.cpp

dialogname.o: dialogname.cpp dialogname.h \
		ui_dialogname.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dialogname.o dialogname.cpp

eventthread.o: eventthread.cpp eventthread.h \
		mainwindow.h \
		cdatabase.h \
		dbrecord.h \
		dialogname.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o eventthread.o eventthread.cpp

dmeventthread.o: dmeventthread.cpp dmeventthread.h \
		mainwindow.h \
		cdatabase.h \
		dbrecord.h \
		dialogname.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dmeventthread.o dmeventthread.cpp

dbrecord.o: dbrecord.cpp dbrecord.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dbrecord.o dbrecord.cpp

dialogoverwrite.o: dialogoverwrite.cpp dialogoverwrite.h \
		ui_dialogoverwrite.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dialogoverwrite.o dialogoverwrite.cpp

emaeventthread.o: emaeventthread.cpp emaeventthread.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o emaeventthread.o emaeventthread.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_dialogname.o: moc_dialogname.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_dialogname.o moc_dialogname.cpp

moc_eventthread.o: moc_eventthread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_eventthread.o moc_eventthread.cpp

moc_dmeventthread.o: moc_dmeventthread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_dmeventthread.o moc_dmeventthread.cpp

moc_dialogoverwrite.o: moc_dialogoverwrite.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_dialogoverwrite.o moc_dialogoverwrite.cpp

moc_emaeventthread.o: moc_emaeventthread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_emaeventthread.o moc_emaeventthread.cpp

####### Install

install_rzwclient: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/local/bin/ || $(MKDIR) $(INSTALL_ROOT)/usr/local/bin/ 
	-$(INSTALL_PROGRAM) /usr/local/src/aizhetech/rzwclient/rzwclient $(INSTALL_ROOT)/usr/local/bin/


uninstall_rzwclient:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/local/bin/rzwclient
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/local/bin/ 


install:  install_rzwclient  FORCE

uninstall: uninstall_rzwclient   FORCE

FORCE:

