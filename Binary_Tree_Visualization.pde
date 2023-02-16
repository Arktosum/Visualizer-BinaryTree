
int RADIUS = 20;

void setup(){
  size(500,500);
}


void draw(){
  background(0);
  BinaryTree bt = new BinaryTree(4,new Vector(width/2,50));
  int arr[] = {3,2,1};
  for(int i = 0; i < arr.length;i++){
    bt.insert(arr[i]);
  }
  bt.show();
  println(bt.height());
}
