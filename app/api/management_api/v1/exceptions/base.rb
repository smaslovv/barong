# frozen_string_literal: true

module ManagementAPI
  module V1
    module Exceptions
      class Base < StandardError
        def initialize(message:, **options)
          @options = options
          super(message)
        end

        def headers
          @options.fetch(:headers, {})
        end

        def status
          @options.fetch(:status)
        end
      end
    end
  end
end
