alias slidev_docker='if [ ! "$(docker volume ls -q -f name="slidev_node_modules")" ]; then docker volume create slidev_node_modules; fi; docker run --name slidev --rm -it   -v ${PWD}:/slidev -v slidev_node_modules:/slidev/node_modules -p 3030:3030 my_slidev'