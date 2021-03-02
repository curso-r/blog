imagem_post_feature <- function(file) {
  img <- magick::image_crop(
    magick::image_read(file),
    geometry = "640x800!",
    gravity = "Center"
  )
  magick::image_write(img, file)
}

imagem_post <- function(file) {
  img <- magick::image_crop(
    magick::image_read(file),
    geometry = "724x386!",
    gravity = "Center"
  )
  magick::image_write(img, file)
}
