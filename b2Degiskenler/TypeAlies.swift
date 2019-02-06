//TypeAlies
typealias sesAyar = UInt8

var minSes: sesAyar = 0
var maxSes: sesAyar = 255

print (minSes, maxSes)
/*
Aciklama: Program ekran çıktısı:0 255

Artık ‘UInt8’ yerine ‘sesAyar’ takma adlı veri tipini kullanabilirim. Örneğin programın 4. satırını 
'var minSes: sesAyar = -20' şeklinde değiştirse idik aşağıdaki gibi programın hata verdiği görülecekti;
Error: Negative integer '-20' overflows when stored into unsigned type 'sesAyar' ('UInt8')
*/
