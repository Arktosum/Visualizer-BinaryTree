class BinaryTree{
  int data;
  BinaryTree left;
  BinaryTree right;
  Vector pos;
  BinaryTree(int val,Vector POS){
    data = val;
    pos = POS;
  }
  
  void DRAW(){
    stroke(255);
    fill(0);
    ellipse(pos.x,pos.y,RADIUS*2,RADIUS*2);
    fill(255);
    text(data ,pos.x,pos.y);
  }
  int height(){
    // Balance is L - R
    if(left == null && right == null){
      text(0,pos.x-75,pos.y);
      text(0,pos.x-50,pos.y);
      return 0;
    }
    if(left == null){
      text(1+right.height(),pos.x-75,pos.y);
      text(-1-right.height(),pos.x-50,pos.y);
      return 1+right.height();
    }
    if(right == null){
      text(1+left.height(),pos.x-75,pos.y);
      text(left.height()+1,pos.x-50,pos.y);
      return 1+ left.height();
    }
    
    int l = left.height();
    int r = right.height();
    int H = 1 + (l > r? l : r);
    int B = l - r;
    text(H,pos.x-75,pos.y);
    text(B,pos.x-50,pos.y);
    return H; 
  }
  void insert(int val){
    if(val < data){
      if(left != null){
        left.insert(val);
      }
      else{
        left = new BinaryTree(val,new Vector(pos.x-50,pos.y+50));
      }
    }
    else if(val > data){
      if(right != null){
        right.insert(val);
      }
      else{
        right = new BinaryTree(val,new Vector(pos.x+50,pos.y+50));
      }
    }
  }
  void show(){
    if(left != null){
      left.show();
    }
    DRAW();
    if(right != null){
      right.show();
    }
  }
}
