require 'fluent/input'
require 'fluent-plugin-json-feed/version'

v = Fluent::JsonFeedInput::VERSION
module Fluent
  remove_const :JsonFeedInput
end

class Fluent::JsonFeedInput < Fluent::Input
end

Fluent::JsonFeedInput.send(:const_set, :VERSION, v)
