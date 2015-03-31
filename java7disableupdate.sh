#!/bin/bash
################################################################### 
# This will disable Java's auto-update - both the one that runs when
# the Java applet runs, and the background checker.
#
# Adam Gerstein, gersteina1@southernct.edu
# 2015-03-31 Creation of script
#
# source info: http://macops.ca/java-7-web-plugin-deployment-redux/
# source: https://www.howtoforge.com/community/threads/echo-into-a-file.115/

# disables the bgcheck
sudo defaults write /Library/Preferences/com.oracle.java.Java-Updater JavaAutoUpdateEnabled -bool false

# disables the applet version check
echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>/com/oracle/javadeployment/</key>
    <dict>
        <key>deployment.macosx.check.update</key>
        <string>false</string>
    </dict>
</dict>
</plist>' > /Library/Preferences/com.oracle.javadeployment.plist
