# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::SocialMediaButtons#reorder
      class SocialMediaButtonReorderParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute button_ids
        #   The new order of the buttons
        #
        #   @return [Array<String>]
        required :button_ids, Onlyfans::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, button_ids:, request_options: {})
        #   @param account [String]
        #
        #   @param button_ids [Array<String>] The new order of the buttons
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
