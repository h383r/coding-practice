#include <iostream>
#include <vector>

int FindOutlier(std::vector<int> arr){

    int result;
    std::vector<int> odd;
    std::vector<int> even;

    for(int i = 0;i < arr.size(); i++){

        if((arr[i] % 2) != 0 ){
            odd.push_back(arr[i]);
        } else if((arr[i] % 2) == 0){
            even.push_back(arr[i]);
        }
    }
    
    if(odd.size() == 1){
        result = odd[0];
    } else  if(even.size() == 1){
        result = even[0];
    }
    
    return result;
}

int main(){

    std::vector<int> arr1{2, 4, 0, 100, 4, 11, 2602, 36};
    int test1 = FindOutlier(arr1); //Should return 11
    std::cout << test1 << "\n";
    
    std::vector<int> arr2{160, 3, 1719, 19, 11, 13, -21};
    int test2 = FindOutlier(arr2); //Should return 160
    std::cout << test2 << "\n";

}