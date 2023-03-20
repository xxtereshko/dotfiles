# allow finder to quit

defaults write com.apple.finder QuitMenuItem -bool YES



# set Safari's page search to 'contains' not 'starts with'
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# safari's homepage to bogus
defaults write com.apple.Safari HomePage -string "about:blank"