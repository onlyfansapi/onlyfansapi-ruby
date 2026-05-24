# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Posts
      # @see Onlyfansapi::Resources::Posts::Labels#list
      class LabelListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute limit
        #   Number of labels to return (default = 10)
        #
        #   @return [String, nil]
        optional :limit, String

        # @!attribute offset
        #   Number of labels to skip for pagination
        #
        #   @return [String, nil]
        optional :offset, String

        # @!method initialize(account:, limit: nil, offset: nil, request_options: {})
        #   @param account [String]
        #
        #   @param limit [String] Number of labels to return (default = 10)
        #
        #   @param offset [String] Number of labels to skip for pagination
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
