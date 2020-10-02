class DataBroker {
  String[] data;
  ArrayList<Data> liste = new ArrayList<Data>();

  void loadData() {
    data = loadStrings("dnd.csv");

    //  String [] list = split(data[1], ','); 
    //String[] etTal = splitTokens(data[1], ";"); //rykker et felt lodret


     println("there are " + data.length + " data"); 
    for (int i = 0; i < data.length; i++) {
      println(data[1]); //rykker et felt vandret
      println(i);
     
    }
  }
}
