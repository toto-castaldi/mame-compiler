mame-compiler
=============

### Run

	> sudo rm -rf build
	> mkdir build
	> docker run -it -v `pwd`/build:/workspace -e VER=[VER] totocastaldi/mame-compiler


### Examples

	> docker run -it -v `pwd`/build:/workspace -e VER=0164 totocastaldi/mame-compiler
	> docker run -it -v `pwd`/build:/workspace -e VER=0177 totocastaldi/mame-compiler

Available versions here https://github.com/mamedev/mame/tags


#### Greetings

> Written with [StackEdit](https://stackedit.io/).
