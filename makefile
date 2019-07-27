version=3.7.4

all: python-docs-3.7.zim

python-docs-3.7.zim:
	./zimwriterfs -f logo.png -w index.html -l en -t "Python 3.7" -d Python -c Python -p jncraton -i python-$(version)-docs-html python-docs-3.7.zim

python-docs:
	wget https://docs.python.org/3.7/archives/python-$(version)-docs-html.tar.bz2
	tar -xvf python-$(version)-docs-html.tar.bz2
	cp logo.png python-$(version)-docs-html

zimwriterfs:
	wget https://download.openzim.org/release/zimwriterfs/zimwriterfs_linux-x86_64-1.3.3.tar.gz
	tar -xvf zimwriterfs_linux-x86_64-1.3.3.tar.gz --strip=1

clean:
	rm -rf zimwriterfs*
	rm -rf python-*