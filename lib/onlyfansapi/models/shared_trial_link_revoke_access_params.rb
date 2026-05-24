# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SharedTrialLinks#revoke_access
    class SharedTrialLinkRevokeAccessParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute shared_trial_link_id
      #
      #   @return [Integer]
      required :shared_trial_link_id, Integer

      # @!method initialize(account:, shared_trial_link_id:, request_options: {})
      #   @param account [String]
      #   @param shared_trial_link_id [Integer]
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
