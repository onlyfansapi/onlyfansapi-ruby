# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::SocialMediaButtons#update
      class SocialMediaButtonUpdateParams < Onlyfans::Internal::Type::BaseModel
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

        # @!attribute label
        #   The new label for the button
        #
        #   @return [String]
        required :label, String

        # @!method initialize(account:, button_id:, label:, request_options: {})
        #   @param account [String]
        #
        #   @param button_id [String]
        #
        #   @param label [String] The new label for the button
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
