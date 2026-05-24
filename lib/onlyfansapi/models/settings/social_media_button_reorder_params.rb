# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Settings
      # @see Onlyfansapi::Resources::Settings::SocialMediaButtons#reorder
      class SocialMediaButtonReorderParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute button_ids
        #   The new order of the buttons
        #
        #   @return [Array<String>]
        required :button_ids, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, button_ids:, request_options: {})
        #   @param account [String]
        #
        #   @param button_ids [Array<String>] The new order of the buttons
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
