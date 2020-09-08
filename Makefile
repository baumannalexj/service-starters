
build-mvc:
	./gradlew clean build :starter-mvc

start-mvc: build-mvc
	./gradlew bootrun :starter-mvc



build-webflux:
	./gradlew clean build :starter-webflux

start-webflux: build-webflux
	./gradlew bootrun :starter-webflux