# Charmstone-Community
Scripts, Localization, and Discussion for the Charmstone App

[Charmstone](https://charmstone.app) is a closed source macOS app for quickly launching and switching applications. It's a convenient way to execute scripts (in the form of applications), and this repository is primarily meant to be a place where users can share their scripts or report bugs and ask questions.

## About Scripts
To convert a script into an app that can be loaded into Charmstone, Open the script in Script Editor and export it as an Application.

### Script FAQs
#### Why can't Charmstone just run a script in .applescript, .scpt, or another kind of format?
Charmstone is sandboxed so that it can be distributed on the Mac App Store, and being sandboxed means that it can't just execute arbitrary scripts. App launching comes with a layer of security by being behind gatekeeper. This layer of security isn't really useful in that it's unlikely that any users would be using Charmstone to run scripts found off the internet with malicious behavior, but wrapping a script in .app format still opens the door for anything you wan to run (albeit with an extra step).

#### Scripts exported as apps all have the same icon. Can Charmstone do anything about this?
I have plans to have Charmstone account for this itself, but until then there are two things that you can do:
1. Change the icon like you would for any mac app. Right click on the app and select "Get Info" drag and drop a new icon onto the icon there.
2. Give the app a color tag in Finder and add it into Charmstone by selecting "Open File or Folder" in the prefs window.

### Hidden configuration (Terminal commands)
Restart the app after executing a terminal command.

#### Disable haptic feedback

There is a small haptic feedback click that happens on the trackpad when you move from near to far. To disable it:

```
defaults write com.knollsoft.Charmstone hapticFeedback -int 2
```
