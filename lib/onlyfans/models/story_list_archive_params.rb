# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#list_archive
    class StoryListArchiveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
