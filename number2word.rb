puts "Sayi gir:"
number = gets

def converter (num)
	birler = ["","Bir ","İki ","Üç ","Dört ","Beş ","Altı ","Yedi ","Sekiz ","Dokuz "]
	onlar = ["","On ","Yirmi ","Otuz ","Kırk ","Elli ","Altmış ","Yetmiş ","Seksen ","Doksan "]
	yuz = "Yüz "
	if (num == 0) 
		puts "Sıfır" 
	end
	a, b, c = birler[(num/100)%10], onlar[(num/10)%10], birler[num%10]
	if a==birler[0]
		a = ""
	elsif a==birler[1]
		a = yuz
	else 
		a = a + yuz
	end
	puts "Girdiğiniz " + num.to_s + " sayısının okunuşu: " + a + b + c
end

converter number.to_i