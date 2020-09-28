DataBroker d = new DataBroker();
Input input1;

void setup(){
size(1000,1000);
background(0);
 input1 = new Input(690, 50, 300, 50);
}

void draw(){
d.loadData();
input1.display();

}
