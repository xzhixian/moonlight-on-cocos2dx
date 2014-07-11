require "moonfit"

console.log "just a simple console log"

console.log "enclose string.format. console wth a list of value: %d", 100

console.info "the date is: %02d/%02d/%04d", 7, 10, 2019

console.warn "<%s>%s</%s>", "h1", "Mr. Whatever", "h1"

console.error "pi = %.4f", 3.1415926535

data =
  key1: "some content"
  key2:
    key2_1: "again"
    key2_2: 111.22
    key2_3: true

console.dir data


