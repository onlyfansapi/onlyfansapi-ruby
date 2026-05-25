# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrialLinks#delete
    class TrialLinkDeleteParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
