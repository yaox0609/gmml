#############################################################################
# Makefile for building: gmml-refactoring
# Generated by qmake (2.01a) (Qt 4.8.1) on: Fri Aug 2 14:12:40 2013
# Project:  gmml-refactoring.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile gmml-refactoring.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -Iincludes/ParameterSet/ParameterFileSpace -Iincludes -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
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

SOURCES       = main.cc \
		src/ParameterSet/ParameterFileSpace/parameterfile.cc \
		src/ParameterSet/ParameterFileSpace/parameterfileangle.cc \
		src/ParameterSet/ParameterFileSpace/parameterfileatom.cc \
		src/ParameterSet/ParameterFileSpace/parameterfilebond.cc \
		src/ParameterSet/ParameterFileSpace/parameterfiledihedral.cc \
		src/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.cc \
		src/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.cc \
		src/ParameterSet/PrepFileSpace/prepfileatom.cc \
		src/ParameterSet/PrepFileSpace/prepfileresidue.cc \
		src/ParameterSet/PrepFileSpace/prepfile.cc \
		src/ParameterSet/PrepFileSpace/prepfileprocessingexception.cc \
		src/Geometry/coordinate.cc \
		src/ParameterSet/LibraryFileSpace/libraryfileatom.cc \
		src/ParameterSet/LibraryFileSpace/libraryfileresidue.cc \
		src/ParameterSet/LibraryFileSpace/libraryfile.cc \
		src/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.cc \
		src/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.cc \
		src/FileSet/CoordinateFileSpace/coordinatefile.cc 
OBJECTS       = main.o \
		parameterfile.o \
		parameterfileangle.o \
		parameterfileatom.o \
		parameterfilebond.o \
		parameterfiledihedral.o \
		parameterfiledihedralterm.o \
		parameterfileprocessingexception.o \
		prepfileatom.o \
		prepfileresidue.o \
		prepfile.o \
		prepfileprocessingexception.o \
		coordinate.o \
		libraryfileatom.o \
		libraryfileresidue.o \
		libraryfile.o \
		libraryfileprocessingexception.o \
		coordinatefileprocessingexception.o \
		coordinatefile.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		gmml-refactoring.pro
QMAKE_TARGET  = gmml-refactoring
DESTDIR       = 
TARGET        = gmml-refactoring

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

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: gmml-refactoring.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile gmml-refactoring.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile gmml-refactoring.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/gmml-refactoring1.0.0 || $(MKDIR) .tmp/gmml-refactoring1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/gmml-refactoring1.0.0/ && $(COPY_FILE) --parents includes/common.hpp includes/utils.hpp includes/ParameterSet/ParameterFileSpace/parameterfile.hpp includes/ParameterSet/ParameterFileSpace/parameterfileangle.hpp includes/ParameterSet/ParameterFileSpace/parameterfileatom.hpp includes/ParameterSet/ParameterFileSpace/parameterfilebond.hpp includes/ParameterSet/ParameterFileSpace/parameterfiledihedral.hpp includes/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.hpp includes/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.hpp includes/ParameterSet/PrepFileSpace/prepfileatom.hpp includes/ParameterSet/PrepFileSpace/prepfileresidue.hpp includes/ParameterSet/PrepFileSpace/prepfile.hpp includes/ParameterSet/PrepFileSpace/prepfileprocessingexception.hpp includes/ParameterSet/LibraryFileSpace/libraryfileatom.hpp includes/Geometry/coordinate.hpp includes/ParameterSet/LibraryFileSpace/libraryfileresidue.hpp includes/ParameterSet/LibraryFileSpace/libraryfile.hpp includes/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.hpp includes/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.hpp includes/FileSet/CoordinateFileSpace/coordinatefile.hpp .tmp/gmml-refactoring1.0.0/ && $(COPY_FILE) --parents main.cc src/ParameterSet/ParameterFileSpace/parameterfile.cc src/ParameterSet/ParameterFileSpace/parameterfileangle.cc src/ParameterSet/ParameterFileSpace/parameterfileatom.cc src/ParameterSet/ParameterFileSpace/parameterfilebond.cc src/ParameterSet/ParameterFileSpace/parameterfiledihedral.cc src/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.cc src/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.cc src/ParameterSet/PrepFileSpace/prepfileatom.cc src/ParameterSet/PrepFileSpace/prepfileresidue.cc src/ParameterSet/PrepFileSpace/prepfile.cc src/ParameterSet/PrepFileSpace/prepfileprocessingexception.cc src/Geometry/coordinate.cc src/ParameterSet/LibraryFileSpace/libraryfileatom.cc src/ParameterSet/LibraryFileSpace/libraryfileresidue.cc src/ParameterSet/LibraryFileSpace/libraryfile.cc src/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.cc src/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.cc src/FileSet/CoordinateFileSpace/coordinatefile.cc .tmp/gmml-refactoring1.0.0/ && (cd `dirname .tmp/gmml-refactoring1.0.0` && $(TAR) gmml-refactoring1.0.0.tar gmml-refactoring1.0.0 && $(COMPRESS) gmml-refactoring1.0.0.tar) && $(MOVE) `dirname .tmp/gmml-refactoring1.0.0`/gmml-refactoring1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/gmml-refactoring1.0.0


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

compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cc includes/ParameterSet/ParameterFileSpace/parameterfile.hpp \
		includes/ParameterSet/PrepFileSpace/prepfile.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfile.hpp \
		includes/FileSet/CoordinateFileSpace/coordinatefile.hpp \
		includes/Geometry/coordinate.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cc

parameterfile.o: src/ParameterSet/ParameterFileSpace/parameterfile.cc includes/utils.hpp \
		includes/common.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfile.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfileatom.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfilebond.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfileangle.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfiledihedral.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfile.o src/ParameterSet/ParameterFileSpace/parameterfile.cc

parameterfileangle.o: src/ParameterSet/ParameterFileSpace/parameterfileangle.cc includes/common.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfileangle.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfileangle.o src/ParameterSet/ParameterFileSpace/parameterfileangle.cc

parameterfileatom.o: src/ParameterSet/ParameterFileSpace/parameterfileatom.cc includes/ParameterSet/ParameterFileSpace/parameterfileatom.hpp \
		includes/common.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfileatom.o src/ParameterSet/ParameterFileSpace/parameterfileatom.cc

parameterfilebond.o: src/ParameterSet/ParameterFileSpace/parameterfilebond.cc includes/ParameterSet/ParameterFileSpace/parameterfilebond.hpp \
		includes/common.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfilebond.o src/ParameterSet/ParameterFileSpace/parameterfilebond.cc

parameterfiledihedral.o: src/ParameterSet/ParameterFileSpace/parameterfiledihedral.cc includes/ParameterSet/ParameterFileSpace/parameterfiledihedral.hpp \
		includes/common.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfiledihedral.o src/ParameterSet/ParameterFileSpace/parameterfiledihedral.cc

parameterfiledihedralterm.o: src/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.cc includes/common.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfiledihedralterm.o src/ParameterSet/ParameterFileSpace/parameterfiledihedralterm.cc

parameterfileprocessingexception.o: src/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.cc includes/common.hpp \
		includes/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o parameterfileprocessingexception.o src/ParameterSet/ParameterFileSpace/parameterfileprocessingexception.cc

prepfileatom.o: src/ParameterSet/PrepFileSpace/prepfileatom.cc includes/common.hpp \
		includes/ParameterSet/PrepFileSpace/prepfileatom.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o prepfileatom.o src/ParameterSet/PrepFileSpace/prepfileatom.cc

prepfileresidue.o: src/ParameterSet/PrepFileSpace/prepfileresidue.cc includes/utils.hpp \
		includes/common.hpp \
		includes/ParameterSet/PrepFileSpace/prepfileatom.hpp \
		includes/ParameterSet/PrepFileSpace/prepfileresidue.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o prepfileresidue.o src/ParameterSet/PrepFileSpace/prepfileresidue.cc

prepfile.o: src/ParameterSet/PrepFileSpace/prepfile.cc includes/common.hpp \
		includes/utils.hpp \
		includes/ParameterSet/PrepFileSpace/prepfile.hpp \
		includes/ParameterSet/PrepFileSpace/prepfileresidue.hpp \
		includes/ParameterSet/PrepFileSpace/prepfileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o prepfile.o src/ParameterSet/PrepFileSpace/prepfile.cc

prepfileprocessingexception.o: src/ParameterSet/PrepFileSpace/prepfileprocessingexception.cc includes/common.hpp \
		includes/ParameterSet/PrepFileSpace/prepfileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o prepfileprocessingexception.o src/ParameterSet/PrepFileSpace/prepfileprocessingexception.cc

coordinate.o: src/Geometry/coordinate.cc includes/Geometry/coordinate.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o coordinate.o src/Geometry/coordinate.cc

libraryfileatom.o: src/ParameterSet/LibraryFileSpace/libraryfileatom.cc includes/ParameterSet/LibraryFileSpace/libraryfileatom.hpp \
		includes/Geometry/coordinate.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o libraryfileatom.o src/ParameterSet/LibraryFileSpace/libraryfileatom.cc

libraryfileresidue.o: src/ParameterSet/LibraryFileSpace/libraryfileresidue.cc includes/ParameterSet/LibraryFileSpace/libraryfileresidue.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfileatom.hpp \
		includes/Geometry/coordinate.hpp \
		includes/common.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o libraryfileresidue.o src/ParameterSet/LibraryFileSpace/libraryfileresidue.cc

libraryfile.o: src/ParameterSet/LibraryFileSpace/libraryfile.cc includes/utils.hpp \
		includes/common.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfile.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfileatom.hpp \
		includes/Geometry/coordinate.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfileresidue.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o libraryfile.o src/ParameterSet/LibraryFileSpace/libraryfile.cc

libraryfileprocessingexception.o: src/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.cc includes/common.hpp \
		includes/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o libraryfileprocessingexception.o src/ParameterSet/LibraryFileSpace/libraryfileprocessingexception.cc

coordinatefileprocessingexception.o: src/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.cc includes/common.hpp \
		includes/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o coordinatefileprocessingexception.o src/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.cc

coordinatefile.o: src/FileSet/CoordinateFileSpace/coordinatefile.cc includes/utils.hpp \
		includes/FileSet/CoordinateFileSpace/coordinatefile.hpp \
		includes/Geometry/coordinate.hpp \
		includes/FileSet/CoordinateFileSpace/coordinatefileprocessingexception.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o coordinatefile.o src/FileSet/CoordinateFileSpace/coordinatefile.cc

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

