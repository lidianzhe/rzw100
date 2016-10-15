@echo off
REM Clean Unnecessary files for build

ECHO rmdir /s /q ipch
rmdir /s /q ipch

ECHO rmdir /s /q debug
rmdir /s /q debug

ECHO rmdir /s /q release
rmdir /s /q release

ECHO del /A:H *.suo
del /A:H *.suo

ECHO del *.suo
del *.suo

ECHO del *.pdb
del *.pdb

ECHO del *.sdf
del *.sdf

ECHO del *.sln
del *.sln

ECHO del *.vcxproj.user
del *.vcxproj.user

ECHO del moc_*
del moc_*

ECHO del ui_*
del ui_*

ECHO del *.so
del *.so

ECHO del Makefile*
del Makefile*

ECHO del cmirislog*
del cmirislog*

ECHO del *.o
del *.o

ECHO del *_old
del *_old

ECHO del cleaner*.bat
del cleaner*.bat

ECHO del IrisImager.ini
del IrisImager.ini

ECHO del /q Images\*
del /q Images\*

ECHO rmdir Images
rmdir Images