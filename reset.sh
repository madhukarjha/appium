echo "Resetting Appium"
echo "Clearing dev version of WD"
rm -rf node_modules/wd
echo "Installing WD and new NPM modules"
npm install .
echo "Rebuilding test apps"
grunt buildApp:TestApp
grunt buildApp:UICatalog
echo "Cleaning temp files"
rm -rf /tmp/instruments_sock
rm -rf *.trace
