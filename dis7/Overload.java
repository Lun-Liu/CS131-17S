/*==================Overloading============================*/
class Overload {
	void m(Object o) { System.out.println("OBJECT"); }
	void m(String s) { System.out.println(s); }
}

class Overload2 extends Overload{
    void m(String s) { System.out.println("Overload2"); }
}


class OMain {
	public static void main(String[] args) {
		Overload o = new Overload();
		String s = "I am a string";
		Object os = "I am an object";
		o.m(s);   //sig:m(Object)
		o.m(os);  //sig:m(Object)

        Overload o2 = new Overload2();
        o2.m(s);   //sig:m(String)
        o2.m(os);
	}
}

