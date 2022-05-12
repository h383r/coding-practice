public class Cw6kyuBuildTower {

    public static String[] towerBuilder(int nFloors){
        
        String[] tower = new String[nFloors];
        
        int base = 1;
        for(int i = 1; i < nFloors; i++) {
            base = base + 2;
        }
        
        String currentFloor = "";
        
        for(int i = 0; i < nFloors; i++){

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
            tower[i] = currentFloor;
        }
        return tower;
    }

    public static void main(String[] args) {
        
        String[] tower = towerBuilder(8);

        for(int i = 0; i < tower.length; i++){
            System.out.println(tower[i]);
        }

    }
}