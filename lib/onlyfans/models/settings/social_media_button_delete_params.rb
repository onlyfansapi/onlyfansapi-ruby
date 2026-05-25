# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::SocialMediaButtons#delete
      class SocialMediaButtonDeleteParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute button_id
        #
        #   @return [String]
        required :button_id, String

        # @!method initialize(account:, button_id:, request_options: {})
        #   @param account [String]
        #   @param button_id [String]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
