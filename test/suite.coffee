Queue = require 'queue-async'

queue = new Queue(1)
queue.defer (callback) -> require('./unit/all_generators')({}, callback)
queue.await (err) -> console.log "Backbone REST: Completed tests"

