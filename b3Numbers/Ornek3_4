//Örnek 3.4. 1 ile 6 arasında rastgele tamsayı üreten ve ekranda gösteren programı yazınız.
import Foundation
#if os(Linux)  
    srand(UInt32(time(nil)))
    print (Int(rand() % 6) + 1) 
#else
    print (Int(arc4random_uniform(UInt32(6)) + 1))
#endif

/*Output:
6
Not. Bu değer her çalıştırmada değişir
*/
