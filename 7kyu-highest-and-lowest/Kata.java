public class Kata{

    /*
    Given a string of space separated numbers, return the highest and lowest number.
    */

    public static String highAndLow(String numbers){
        
        String[] list = numbers.split("\\s");
        
        int lowest = Integer.parseInt(list[0]);
        int highest = Integer.parseInt(list[0]);

        for(int i = 0; i < list.length; i++){
            
            int currentNumber = Integer.parseInt(list[i]);
            
            if(currentNumber < lowest){
                lowest = currentNumber;
            }
            if(currentNumber > highest){
                highest = currentNumber;
            }
        }

        String result = Integer.toString(highest) + " " + Integer.toString(lowest);
        return result;
    }

    public static void main(String[] args){
        highAndLow("1 2 3 4 5"); // return "5 1"
        highAndLow("1 2 -3 4 5"); // return "5 -3"
        highAndLow("1 9 3 4 -5"); // return "9 -5"
    }
}