STDOUT.sync = true

def face_book(times)
	if times%3==0 && times%5==0
		"Facebook"
	elsif times%3==0
		"Face"
	elsif times%5==0
		"Book"
	else
		times.to_s
	end
end

for times in 1..100 do
	puts face_book(times)
end