@echo off
IF EXIST CecRemote_TMP.dll del CecRemote_TMP.dll 
IF EXIST CecRemote_TMP.pdb del CecRemote_TMP.pdb 
ILMerge.exe /out:CecRemote_TMP.dll CecRemote.dll LibCecSharp.dll libcec.dll

IF EXIST CecRemote.dll del CecRemote.dll
IF EXIST CecRemote.pdb del CecRemote.pdb 

ren WifiRemote_TMP.dll WifiRemote.dll 
ren WifiRemote_TMP.pdb WifiRemote.pdb 
