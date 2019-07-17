if [[ -d "build" && ! -L "build" ]]; then
    cd build
    if [[ -d "src" && ! -L "src" ]]; then
        rm -rf ./src/com/mani/compiler/resources/*
        cd ../
    else
        cd ../
        rm -rf ./build
        git clone https://github.com/crazywolf132/Mani build
    fi 
else
    git clone https://github.com/crazywolf132/Mani build
fi

cd build
gradle clean
rm -rf ./src/com/mani/compiler/resources/*
cp -r ../src/* ./src/com/mani/compiler/resources/
gradle buildCompiler
clear
# Done to set the pwd to this dir
cd ../
java -jar ./build/build/libs/Mani-Stable.jar install