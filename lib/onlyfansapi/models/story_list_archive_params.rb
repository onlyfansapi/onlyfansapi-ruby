# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stories#list_archive
    class StoryListArchiveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   Number of stories to return (default = 18)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute marker
      #   The marker used for pagination. Default: `null`
      #
      #   @return [String, nil]
      optional :marker, String

      # @!method initialize(account:, limit: nil, marker: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [Integer] Number of stories to return (default = 18)
      #
      #   @param marker [String] The marker used for pagination. Default: `null`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
