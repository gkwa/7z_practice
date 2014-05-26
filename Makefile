t3:
	rm -rf t t.7z out
	mkdir t
	mkdir t/a
	echo b >t/a/b.txt
	7z a t.7z t
	7z x t.7z -oout -r *.txt
	find out -type f

t2:
	rm -rf t t.7z out
	mkdir t
	mkdir t/a
	echo b >t/a/b.txt
	7z a t.7z t
	7z x t.7z -oout -ir"!*.txt"
	find out -type f

t1:
	rm -rf t t.7z out
	mkdir t
	mkdir t/a
	echo a >t/a/a.txt
	7z a t.7z t
	7z x t.7z -oout -ir"!a/*"

clean:
	rm -rf out
	rm -rf a
	rm -rf t
	rm -rf t.7z

