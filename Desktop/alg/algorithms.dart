
import "dart:core";


//determining index of max value in the list
int max(List<int> inputList){
  int output = 0;
  for(int i = 0; i<inputList.length; i++){
    if(inputList[i] > inputList[output]){
      output=i;
    }
  }
  return output;
}

// determining index of max value in the list
// using a asMap and forEach
int maxAsMap(List<int> inputList){
  int output = 0;
  inputList.asMap().forEach((index,value){
    if(inputList[index] > inputList[output]){
      output=index;
    }
  });
  return output;
}


// algorithm to merge the two SORTED lists
List<int> mergeArrays(List<int> listOne, List<int> listTwo){
  int length = listOne.length;
  List<int> mergedList = List<int>();
    for(int i = 0;i<=length;i++){
      for (int j = 0; j<listTwo.length*10; j++){
        if(listOne.isNotEmpty){
          if(listOne[0]>listTwo[0]){
            mergedList.add(listTwo[0]);
            listTwo.removeAt(0);
          }
          else{
            mergedList.add(listOne[0]);
            listOne.removeAt(0);
          }
        }
      }
    }
  mergedList.addAll(listTwo+listOne);
  return mergedList;
}


void main() {
//   uncomment to test
//   List<int> inputList = [4,3,12,1,17,17,2,13,9,8,7,6];
//   print(max(inputList));
//   print(max(inputList));
  
//   List<int> listOne = [5,10,17,23,26,26];
//   List<int> listTwo = [7,13,16];
  
//   List<int> listOne = [2,4,6,8,];
//   List<int> listTwo = [1,3,5,7,9,11,13,15,16,17];
//   print(mergeArrays(listOne, listTwo).toString());
  
}

