# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SharedTrialLinks#list
    class SharedTrialLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   The number of shared trial links to return. Default `10`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute synchronous
      #   Wait for the database sync to finish, instead of running it in the background.
      #   **Will result in longer response times, use with caution**. Default `false`
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfans::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, limit: nil, offset: nil, synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SharedTrialLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer] The number of shared trial links to return. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param synchronous [Boolean, nil] Wait for the database sync to finish, instead of running it in the
      #   background. \*
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
