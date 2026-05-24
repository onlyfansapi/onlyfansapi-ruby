# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#retrieve
    class TrialLinkRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
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

      # @!method initialize(account:, trial_link_id:, request_options: {})
      #   @param account [String]
      #   @param trial_link_id [String]
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
