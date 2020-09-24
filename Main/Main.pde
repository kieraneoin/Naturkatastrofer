DataBroker d = new DataBroker();
Input input1;

void setup(){
size(500,500);
background(0);
 input1 = new Input(200, 200, 500, 50);
}

void draw(){
d.loadData();
input1.display();

}
