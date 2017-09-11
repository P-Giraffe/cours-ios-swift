public class Chien : Animal {
    private var stockCroquettes:Int = 0
    
    public override func direBonjour() {
        print("Whouf whouf")
        super.direBonjour()
    }
}
