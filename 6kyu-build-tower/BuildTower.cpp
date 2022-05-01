#include <string>
#include <vector>
#include <iostream>

// https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/cpp
std::vector<std::string> towerBuilder(unsigned nFloors) {
  
    std::vector<std::string> tower;

    int base = 1;
    for(int i = 1; i < nFloors; i++){
        base = base + 2;
    }

    for(int i = 0; i < nFloors; i++){
        std::string currentFloor;

        for(int j = 0; j < base; j++){

            int midIndex = ((base - 1) / 2);  
            if(
                ((j >= midIndex) && (j <= (midIndex + i)))
                ||
                ((j <= midIndex) && (j >= (midIndex - i)))        
                ){
                currentFloor = currentFloor + "*";
            } else {
                currentFloor = currentFloor + " ";
            }
        } 
        tower.push_back(currentFloor);
    }
    return tower;
}

int main(){

    std::vector<std::string> tower = towerBuilder(8);

    for(int i = 0; i < tower.size(); i++){
        std::cout << tower[i] << "\n";
    }

}