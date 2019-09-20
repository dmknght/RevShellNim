win64:
	nim c -d:mingw --cpu:amd64 revshell.nim
win32:
	nim c -d:mingw --cpu:i386 revshell.nim
arm:
	# arm-linux-gnueabihf-gcc: not found
	nim c --cpu:arm --os:linux revshell.nim
lix32:
	# requires gcc-multilib
	nim c --cpu:i386 --os:linux --passC:-m32 --passL:-m32 revshell.nim
lix64:
	nim c --cpu:amd64 --os:linux revshell.nim