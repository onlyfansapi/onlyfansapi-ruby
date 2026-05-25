# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stored#list_shared_trial_links
    class StoredListSharedTrialLinksParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfans::Models::StoredListSharedTrialLinksParams::Filter, nil]
      optional :filter, -> { Onlyfans::StoredListSharedTrialLinksParams::Filter }

      # @!attribute limit
      #   The number of shared trial links to return. Default `10`. Must be at least 1.
      #   Must not be greater than 1000.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::StoredListSharedTrialLinksParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfans::Models::StoredListSharedTrialLinksParams::Filter]
      #
      #   @param limit [Integer] The number of shared trial links to return. Default `10`. Must be at least 1. Mu
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfans::Internal::Type::BaseModel
        # @!attribute search
        #   Must not be greater than 255 characters.
        #
        #   @return [String, nil]
        optional :search, String, nil?: true

        # @!attribute tags
        #   Must not be greater than 50 characters.
        #
        #   @return [Array<String>, nil]
        optional :tags, Onlyfans::Internal::Type::ArrayOf[String]

        # @!method initialize(search: nil, tags: nil)
        #   @param search [String, nil] Must not be greater than 255 characters.
        #
        #   @param tags [Array<String>] Must not be greater than 50 characters.
      end
    end
  end
end
