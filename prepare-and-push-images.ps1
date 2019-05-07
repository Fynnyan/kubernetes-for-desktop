$docker_registry = "localhost:5000"
$docker_tag = "local"
$docker_filter ="blobbin/*:$docker_tag"

$docker_images = $(docker images $docker_filter --format "docker tag {{.Repository}}:$docker_tag $docker_registry/{{.Repository}}:$docker_tag")

foreach ($image in $docker_images) {
    Write-Host "tagging image"
    iex $image
}

$docker_push = $(docker images "$docker_registry/$docker_filter" --format "docker push {{.Repository}}:$docker_tag")


foreach ($image in $docker_push) {
    iex $image
}
