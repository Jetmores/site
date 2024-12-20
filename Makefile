public:
	- mkdir docs
	zig build -p docs

run:
	zig build serve -p docs &
