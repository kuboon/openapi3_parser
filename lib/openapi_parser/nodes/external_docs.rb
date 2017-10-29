# frozen_string_literal: true

require "openapi_parser/node"

module OpenapiParser
  module Nodes
    class ExternalDocs
      include Node

      allow_extensions

      field "description", input_type: String
      field "url", required: true, input_type: String

      def name
        fields["description"]
      end

      def namespace
        fields["url"]
      end
    end
  end
end
