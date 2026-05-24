# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#list_subscribers
    class TrialLinkListSubscribersParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute trial_link_id
      #
      #   @return [String]
      required :trial_link_id, String

      # @!attribute limit
      #   The number of subscribers to return per page. Default `10`
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer]
      required :offset, Integer

      # @!method initialize(account:, trial_link_id:, limit:, offset:, request_options: {})
      #   @param account [String]
      #
      #   @param trial_link_id [String]
      #
      #   @param limit [Integer] The number of subscribers to return per page. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
