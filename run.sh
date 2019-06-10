rm -rf build
git clone https://github.com/crazywolf132/Mani build
cd build
gradle clean
rm -rf ./src/com/mani/compiler/resources/*
cp -r ../src/* ./src/com/mani/compiler/resources/
gradle buildCompiler
clear
java -jar ./build/libs/Mani-Stable.jar