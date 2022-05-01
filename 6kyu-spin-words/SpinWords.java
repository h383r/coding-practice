// https://www.codewars.com/kata/5264d2b162488dc400000001/train/java
public class SpinWords {
    
    public static String spinWords(String sentence) {
        
        String[] words = sentence.split("\\s");
        String output = "";
        for(int i = 0; i < words.length; i++){

            String currentWord = words[i];
            if(currentWord.length() >= 5){
                
                String reversed = "";
                for(int j = currentWord.length() -1; j >= 0 ; j--){
                    reversed = reversed + currentWord.charAt(j);
                }
                words[i] = reversed;
            }
            output = output + " " + words[i];
        }
        return output.substring(1);
    }

    public static void main(String[] args){
        System.out.println(spinWords("Hey fellow warriors"));
        System.out.println(spinWords("This is a test"));
    }
}