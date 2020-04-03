# flutter_ios_tools
This repository contains a few tools/scripts to help deployment of flutter apps on ios. 

## Ruby script for Contents.json
In order to generate app icons at required sizes, I use the package [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons). Though, it doesn't generate the 
Contents.json file. The jsongenerator.rb script will help generate the Contents.json, as descripbed [here](https://github.com/fluttercommunity/flutter_launcher_icons/issues/117).
 
## Sizes generator for screenshots
The convert.sh script requires imagemagick library (linux). It automatically formats different images for iphone 5.5, 6.5, and ipad 12.9 formats. 

## info.plist example
Some authorizations are required for ios app to compile. The info.plist file is an example (strings noted as Flutter dependencies need to be added).

