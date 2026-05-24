# frozen_string_literal: true

module Onlyfansapi
  module Models
    module TrialLinks
      # @see Onlyfansapi::Resources::TrialLinks::Tags#list
      class TagListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
