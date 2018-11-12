git clone https://github.com/jgarzik/moxiebox.git
cd moxiebox

./autogen.sh

# ensure moxiebox-gcc is in the path
./configure
cd runtime
make

cp libsandboxrt.a crt0.o /usr/xcc/moxie-none-moxiebox/moxie-none-moxiebox/lib/
