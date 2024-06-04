build_runner:
	dart run build_runner build --delete-conflicting-outputs
lint: format analyze
format:
	dart format lib
analyze:
	dart analyze