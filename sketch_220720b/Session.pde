class Session {
   PVector a;
   PVector b;
   
   Session(PVector a_, PVector b_) {
     a = a_.copy();
     b = b_.copy();
   }
   
   Session[] generate() {
     Session[] children = new Session[4];
     
     PVector v = PVector.sub(b,a);
     v.div(3);
     
     // Session 0
     PVector b1 = PVector.add(a,v);
     children[0] = new Session(a,b1);
     
     // Session 3
     PVector a1 = PVector.sub(b,v);
     children[3] = new Session(a1,b);
     
     v.rotate(-PI/3);
     PVector c = PVector.add(b1,v);
     // Session 2
     children[1] = new Session(b1, c);
     // Session 3
     children[2] = new Session(c, a1);
     return children;
   }
   
   void show() {
     stroke(255);
     line(a.x,a.y,b.x,b.y);
   }
  
}
