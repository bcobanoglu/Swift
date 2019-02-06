//İki adet binary sayıyı toplayan program
let A = 0b1001
let B = 0b0110
let T = A + B

print ("Onlu: \(T)\n")
let T2 = String (T,radix:2)
print ("İkili: \(T2)\n")
let T8 = String (T,radix:8)
print ("Sekizli: \(T8)\n")
let T16 = String (T,radix:16)
print ("Onaltılı: \(T16)\n")

/*Output:
Onlu: 15

İkili: 1111

Sekizli: 17

Onaltılı: f
*/
