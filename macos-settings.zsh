# MacOS setting tweaks


# Remove recent applications from Dock
#######################################
# https://www.jamf.com/jamf-nation/discussions/30451/any-way-to-disable-show-recent-applications-in-dock
defaults write com.apple.dock show-recents -bool FALSE


# clean up
killall Dock



# Change Finder settings
echo "You need to manually adjust default finder folder and other preferances"

# Turn off iCloud Keychain
echo "Turn off iCloud Keychain in both Safari (autofill) and System Preferences"

# auto capitalize is annoying (especially in plain text files



# adjust notification settings 