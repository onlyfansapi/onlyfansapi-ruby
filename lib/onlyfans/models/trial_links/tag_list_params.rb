# frozen_string_literal: true

module Onlyfans
  module Models
    module TrialLinks
      # @see Onlyfans::Resources::TrialLinks::Tags#list
      class TagListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute trial_link_id
        #
        #   @return [Integer]
        required :trial_link_id, Integer

        # @!method initialize(account:, trial_link_id:, request_options: {})
        #   @param account [String]
        #   @param trial_link_id [Integer]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
