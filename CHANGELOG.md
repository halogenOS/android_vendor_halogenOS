# Changelog

## v3.1.4 (2019.03.10)
- Merge android-10.0.0_r32 - March security patch
- Show current version & new version of apk during installation (needs aosp package installer only)
- SystemUI crashes fixes
- IMS related changes
- Double tap to wake from AOD improvements
- Padding fixes in statusbar
- Fix powermenu not tracking accent in landscape
- Power button for flashlight improvements
- Fixed potential mess in strings when dirty flashing

## v3.1.3 (2019.02.22)
- Merge android-10.0.0_r29 - February security patch
- Introduce smart clock
- Brightness slider in bottom with auto brightness icon
- Fixed AOD on DT2W
- Burn-in protection
- Micro-G support

## v3.1.2 (2019.02.04)
- Fix multiple device breaking issues of 3.1.1

## v3.1.1 (2019.01.27)
# (Release rolled back)
- Merge android-10.0.0_r25 - January security patch
- Removed build number from QS footer
- NFC tile drawable improvement
- Permission Hub
- Require unlocking to use Airplane, wifi & cellular tile on lockscreen
- Keyguard lock icon improvement
- Volume button to skip tracks
- POSP logo on StatusBar
- Fix lock icon being stuck on AOD
- Double tap on track tile to skip track on ambient
- Caffeine tile
- Double tap to sleep on lockscreen
- Double tap StatusBar to sleep
- Ability to disable/enable lockscreen media art
- Ability to control blur of Media art on lockscreen
- Ability to hide powermenu on secure lockscreen
- Some padding adjustments for media seekbar in Notifications
- Animate MultiUser Avatar on QS footer
- Kill some ugly grey dialogs & match it with dark theme
- StatusBar icon pack
- SystemWide icon shape
- Enable native ScreenRecording
- Advanced Powermenu configuration
- Tint powermenu with accents
- Add ScreenRecord powermenu
- Add partial screenshot on longpress screenshot powermenu
- Added VoLTE (HD) icon
- Ability to choose "4G" or "LTE" on StatusBar
- Fixed margins of settings Searchbar & Conditions
- Fix icon for ring volume in settings
- Fixed some bad strings in settings
- Protect sensitive info in About device
- Removed some unnecessary dropdown in settings
- Added MultiUser Avatar in Searchbar
- Fix multiple issues with Fries, including Play Store updates
- Fix Accenter for selinux enforcing

## v3.1.0 (2019.12.27)
- Fix issues with most devices, mark as stable
- Introduce PotatoFries, the POSP customisation panel written in Flutter
- QS Panel color customisation (custom and wallpaper with opacity)
- Introduce dual-tone acccenter
- Enable build signing for all official devices

## v3.0.0-alpha (2019.09.15)
- Initial Android 10 release
- Alpha/bringup release for select supported devices

## v2.3 (2019.07.19)
- July security patch
- Merge android-9.0.0_r45
- OTA app redo: new design and data architecture
- New system icons thanks to rshbfn!
- New wallpaper
- System-wide adaptive icons (Android Q like)
- Remove screenshot delay
- Long press screenshot option in power menu for partial SS
- Bring back SystemUI demo mode
- Fixed theming of notification self dot
- Reduced the padding between media controls & seekbar
- Seekbar positioning fixes
- Ambient music ticker: fixed text scrolling glitches
- Chiron[Mi Mix 2] builds will be system-as-root

### v2.3 (2019.06.10)
- June security patch
- Update some APNs
- Pixel home button animations improvement
- Detailed view of QS tiles layout fixes
- Option to restrict Wifi/Data of any app
- Lockscreen clocks: Now clock tracks accent
- Q clock: Align owner info with clock
- Q clock: Animate time when it changes
- Advanced location tile
- Aggressive battery fixes
- Oreo panel: Brought back oreo layout
- Oreo panel: Notifications size improvements
- Oreo panel: Added QS colors
- Oreo panel: Fix delayed animations
- Oreo panel: Show network traffic
- Enhanced call blocking function
- Fix data usage detail's text view on Dark/Black theme
- Seekbar to Media notifications
- Migrated to signed builds
- To fix any app FC after dirty flash, use the posp-sign-migrate flashable zip

### v2.3 (2019.05.28)
- Support santoni (Zainudin (ErrorNetwork28))
- May security patch
- android-9.0.0_r37
- Introduced RGB accenter
- Dark theme revamped
- Add new Flatato base theme
- Settings Search bar fixed on Dark/black theme
- Oreo QS Panel
- QS colors fixes
- Update Lawnchair
- Back to SoundPicker 1.0 (for older devices)
- Fix notifications if less notification sound is enabled
- Animate volume panel
- Google sound search tile
- Added Aggressive battery
- Q style Battery icon
- Toggle to disable Album art cover on Lockscreen
- Added Lockscreen Album art filters
- Toggle to hide Lockscreen items (clock & date)
- Added clock styles (accent issue will be addressed in next update)
- POSP logo on statusbar
- Swipe to screenshot improvements
- Lockscreen weather improvements
- Toggle to disable any sim slot
- Added Uptime with deepsleep info
- Moved IMEI info in SIM status
- Improved Ambient ticker layout

### v2.2 (2019.03.31)
- Support sagit [dpatrongomez]
- Support tissot [Keian (TF2Wake)]
- Support vince [4PERTURE]
- Support X00T [BabluS]
- Fix settings icon tinting for all
- Fix QS footer multiuser icon visbility
- Unbreak ambient when heads up is disabled
- Add in statusbar tuner
- Reorder and cleanup Fries
- Upstream changes
- Minor theme fixes
- ???


### v2.2 (2019.03.21)
- Oreo/OOS like persistent QS footer
- Oreo styled settings
- Settings icon tinting
- Fixes and improvements to expanded volume panel
- Minor fixes to camera on some devices
- Hotspot fixed on multiple devices
- Fixes to Lockscreen Weather
- Added more APNs
- Added more translations to Fries
- OTA app layout and behavior fixes


### v2.2 (2019.03.10)
- Merge latest security patch
- android-9.0.0_r34
- Network activity indicators in QS
- New accents
- Add GoogleSans to actionbars
- New default wallpaper - PotatoLand
- Statusbar Bluetooth battery indicator
- Statusbar NFC icon
- Clean up volume panel code
- Fixes to op-gestures on keyguard
- Expandable volume panel
- Initial Flutter and gradle project support in build system
- Full OTA support (WiP, may have small issues; please report)
- Properly support A/B backuptools
- exFAT support
- Theme package installer