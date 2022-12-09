REGISTRY := "gianiaz/"

shell:
	@docker-compose run --rm rust zsh

#setup:
#	@docker-compose run --rm rust npm install


docker-build-rust:
	@docker build -t ${REGISTRY}rust docker/


bold := "\\033[1m"
normal := "\\033[0m"
boldunderline := "\\033[1m\\033[4m"
titlebg := "\\e[41m\\e[97m"


.SILENT:
