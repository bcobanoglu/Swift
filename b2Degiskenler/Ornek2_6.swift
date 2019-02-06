//Örnek 2.6. Bir String ifade’deki her bir karakterin UTF8 standardına göre Unicode karşılığını dizi halinde veren programı kodlayınız.

let Ad = "swift"
print(Ad.utf8.count) //Karakter sayısını verir
print(Array(Ad.utf8)) //Karakterleri diziye dönüştürür

/*Output:
5
[115, 119, 105, 102, 116]
*/
//Not. Aynı çıktıyı UTF-16’ya göre almak isterseniz ‘utf8’i ‘utf16’ olarak değiştirmek yeterlidir. 
