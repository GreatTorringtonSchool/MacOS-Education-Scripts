#!/bin/bash

#Convince Logic that it has been launched before as the current user
defaults write ~/Library/Preferences/com.apple.logic10 MANPDNotFirstLaunch -bool true

#Don't show the additional content download window
defaults write ~/Library/Preferences/com.apple.logic10 DontShowAdditionalContentDowload -bool true

#Bypass the What's New screen by setting the integer to a higher integer than what is available in the Logic App
#Update the integer whenever the What's New panel goes beyond 24, as of October 2025 it is at 17
defaults write ~/Library/Preferences/com.apple.logic10 RecentWhatsNewPanelVersion -int 24

##Set default Bounce settings
#Use MP3 format
defaults write ~/Library/Preferences/com.apple.logic10 BounceFileType -int 2
#Set our MP3 settings
defaults write ~/Library/Preferences/com.apple.logic10 "MP3Prefs.BitRateMono" -int 160
defaults write ~/Library/Preferences/com.apple.logic10 "MP3Prefs.BitRateStereo" -int 320
defaults write ~/Library/Preferences/com.apple.logic10 "MP3Prefs.FilterSub10Hz" -bool true
defaults write ~/Library/Preferences/com.apple.logic10 "MP3Prefs.JointStereo" -bool true
defaults write ~/Library/Preferences/com.apple.logic10 "MP3Prefs.VBRLevel" -int 6
defaults write ~/Library/Preferences/com.apple.logic10 "MP3Prefs.VariableBitRate" -bool false

#Refresh the preference cash by killing the daemon
killall cfprefsd
