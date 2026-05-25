# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::WelcomeMessage#toggle
      class WelcomeMessageToggleParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute enabled
        #   Whether the welcome message should be enabled.
        #
        #   @return [Boolean]
        required :enabled, Onlyfans::Internal::Type::Boolean

        # @!method initialize(account:, enabled:, request_options: {})
        #   @param account [String]
        #
        #   @param enabled [Boolean] Whether the welcome message should be enabled.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
