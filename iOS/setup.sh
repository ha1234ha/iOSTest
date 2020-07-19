
rm -r ./testFw/testFw.xcodeproj
rm -r ./testApp/testApp.xcodeproj
rm -r ./Podfile.lock

cd ./testFw/
xcodegen

cd ../testApp/
xcodegen

cd ../
pod install

