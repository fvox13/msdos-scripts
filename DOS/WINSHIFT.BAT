@echo off
rem cls
echo Initialization in progress . . . please wait . . .
rem
rem    This section switches the sound files every time Windows is started.
rem    To use it, you need to:
rem    
rem    1. Place the files to rotate in the c:\windows\startwav directory.
rem    2. Set c:\windows\media\startnow.wav as the system sound for Windows
rem     (or System) Start.
rem
rem    Note that there are always two copies of the wave file in startnow.wav;
rem    the second one is in startn.wav, where n is the number of files you are
rem    rotating.
rem 
rem    To add another sound to the rotation:
rem    
rem    1. Increment n by 1.
rem    2. Add a line to rename startn to start(n-1).
rem    3. Update the copy startnow line to go to the new startn.wav
rem    4. Copy the new sound to c:\windows\startwav\startn.wav 
rem 
e:
cd \
cd sounds
cd startwav
copy start01.wav startnow.wav >> nul
del start01.wav
ren start02.wav start01.wav
ren start03.wav start02.wav
ren start04.wav start03.wav
ren start05.wav start04.wav
ren start06.wav start05.wav
ren start07.wav start06.wav
ren start08.wav start07.wav
ren start09.wav start08.wav
ren start10.wav start09.wav
ren start11.wav start10.wav
ren start12.wav start11.wav
ren start13.wav start12.wav
ren start14.wav start13.wav
ren start15.wav start14.wav
copy startnow.wav start15.wav >> nul
del c:\windows\media\startnow.wav
copy startnow.wav c:\windows\media\startnow.wav >> nul
rem
rem    This section switches the sound files every time Windows is shutdown.
rem    To use it, you need to:
rem    
rem    1. Place the files to rotate in the e:\sounds\shutwav directory.
rem    2. Set c:\windows\media\shutnow.wav as the system sound for Exit Windows.
rem
rem    Note that there are always two copies of the wave file in shutnow.wav;
rem    the second one is in shutn.wav, where n is the number of files you are
rem    rotating.
rem 
rem    To add another sound to the rotation:
rem    
rem    1. Increment n by 1.
rem    2. Add a line to rename shutn to shut(n-1).
rem    3. Update the copy shutnow line to go to the new shutn.wav
rem    4. Copy the new sound to c:\windows\shutwav\shutn.wav 
rem 
e:
cd \
cd sounds
cd shutwav
copy shut01.wav shutnow.wav >> nul
del shut01.wav
ren shut02.wav shut01.wav
ren shut03.wav shut02.wav
ren shut04.wav shut03.wav
ren shut05.wav shut04.wav
ren shut06.wav shut05.wav
ren shut07.wav shut06.wav
ren shut08.wav shut07.wav
ren shut09.wav shut08.wav
ren shut10.wav shut09.wav
ren shut11.wav shut10.wav
ren shut12.wav shut11.wav
ren shut13.wav shut12.wav
ren shut14.wav shut13.wav
ren shut15.wav shut14.wav
copy shutnow.wav shut15.wav >> nul
del c:\windows\media\shutnow.wav
copy shutnow.wav c:\windows\media\shutnow.wav >> nul
cd \
c:
echo Initialization Complete - Proceeding With Normal Startup
