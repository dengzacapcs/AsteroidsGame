class Stars //note that this class does NOT extend Floater
{
    private int[] xPos;
    private int[] yPos;
    private int myN;
    public Stars(int n){
        myN = n;
        xPos = new int[n];
        yPos = new int[n];
        for (int i = 0; i<n ;i++){
            xPos[i] = (int)(Math.random()*500);

            yPos[i] = (int)(Math.random()*500);
        }
    }
    public void show(){
        for (int i = 0; i<myN;i++){
            fill(255,255,255);

            ellipse(xPos[i], yPos[i], 5, 5);
        }
    }
}
