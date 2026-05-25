# frozen_string_literal: true

module Onlyfans
  module Models
    module Users
      # @see Onlyfans::Resources::Users::Subscribe#delete
      class SubscribeDeleteParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute reason
        #   Reason for unsubscribing. Valid options: `1,2,3,4,5`. Leave empty for
        #   `No specific reason`.
        #
        #   @return [String]
        required :reason, String

        # @!method initialize(account:, user_id:, reason:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::Users::SubscribeDeleteParams} for more details.
        #
        #   @param account [String]
        #
        #   @param user_id [String]
        #
        #   @param reason [String] Reason for unsubscribing. Valid options: `1,2,3,4,5`. Leave empty for `No specif
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
