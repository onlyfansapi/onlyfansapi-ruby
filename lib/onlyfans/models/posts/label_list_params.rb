# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Labels#list
      class LabelListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
