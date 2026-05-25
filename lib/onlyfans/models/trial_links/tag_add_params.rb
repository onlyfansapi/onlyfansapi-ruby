# frozen_string_literal: true

module Onlyfans
  module Models
    module TrialLinks
      # @see Onlyfans::Resources::TrialLinks::Tags#add
      class TagAddParams < Onlyfans::Internal::Type::BaseModel
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

        # @!attribute tags
        #   Array of tag names to add to the trial link.
        #
        #   @return [Array<String>]
        required :tags, Onlyfans::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, trial_link_id:, tags:, request_options: {})
        #   @param account [String]
        #
        #   @param trial_link_id [Integer]
        #
        #   @param tags [Array<String>] Array of tag names to add to the trial link.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
