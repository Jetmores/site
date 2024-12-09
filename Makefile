public:
	- mkdir public
	zig build -p public

run:
	zig build serve -p public &
