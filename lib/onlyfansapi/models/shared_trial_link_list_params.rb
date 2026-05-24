# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SharedTrialLinks#list
    class SharedTrialLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      optional :synchronous, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, limit: nil, offset: nil, synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::SharedTrialLinkListParams} for more details.
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
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
