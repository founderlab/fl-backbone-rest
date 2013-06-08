testGenerator = require '../../lib/test_generators/backbone_rest'

_ = require 'underscore'
MockServerModel = require 'backbone-node/mocks/server_model'

testGenerator {
  model_type: MockServerModel
  route: 'mock_models'
  beforeEach: (callback) ->
    MockServerModel.MODELS_JSON = [
      {id: _.uniqueId('id'), name: _.uniqueId('name_'), created_at: (new Date).toISOString(), updated_at: (new Date).toISOString()}
      {id: _.uniqueId('id'), name: _.uniqueId('name_'), created_at: (new Date).toISOString(), updated_at: (new Date).toISOString()}
      {id: _.uniqueId('id'), name: _.uniqueId('name_'), created_at: (new Date).toISOString(), updated_at: (new Date).toISOString()}
    ]
    callback(null, MockServerModel.MODELS_JSON)
}