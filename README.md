# Charmstone-Community
Scripts, Localization, and Discussion for the Charmstone App

[Charmstone](https://charmstone.app) is a closed source macOS app for quickly launching and switching applications. It's a convenient way to execute scripts (in the form of applications), and this repository is primarily meant to be a place where users can share their scripts or report bugs and ask questions.

## About Scripts
To convert a script into an app that can be loaded into Charmstone, Open the script in Script Editor and export it as an Application. You can also export Automator workflows as Applications, which you can launch via Charmstone.

### Script FAQs
#### Why can't Charmstone just run a script in .applescript, .scpt, or another kind of format?
Charmstone is sandboxed so that it can be distributed on the Mac App Store, and the sandbox adds an extra layer of security. Any script can be turned into an App for use with Charmstone using either Script Editor or Automator.

#### Scripts exported as apps all have the same icon. Can Charmstone do anything about this?
I have plans to have Charmstone account for this itself, but until then there are two things that you can do:
1. Change the icon like you would for any mac app. Right click on the app and select "Get Info" drag and drop a new icon onto the icon there.
2. Give the app a color tag in Finder and add it into Charmstone by selecting "Open File or Folder" in the prefs window.

## Configuring Charmstone with Sonoma webapps

After adding a website to the dock, it will appear in your ~/Applications directory (not to be confused with your /Applications directory). Open the Charmstone preferences window and drag and drop the webapp from ~/Applications to your desired location in Charmstone.

## Using URLs to show and close the Charmstone window

Charmstone can also be controlled via URLs:

Show the Charmstone window:
```
charmstone://show
```
Show the Charmstone window with a specified appear distance (override min dist to appear)
```
charmstone://show?appearDist=0
```
Close the Charmstone window
```
charmstone://close
```
Close the Charmstone window without executing the current selection
```
charmstone://close?executing=false
```
## Hidden configuration (Terminal commands)
Restart the app after executing a terminal command.

#### Disable haptic feedback

There is a small haptic feedback click that happens on the trackpad when you move from near to far. To disable it:

```
defaults write com.knollsoft.Charmstone hapticFeedback -int 2
```

#### Open Charmstone with a mouse button

```
defaults write com.knollsoft.Charmstone reticleMouseButton -int 3
```
