# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Settings
      # @see Onlyfansapi::Resources::Settings::WelcomeMessage#toggle
      class WelcomeMessageToggleParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute enabled
        #   Whether the welcome message should be enabled.
        #
        #   @return [Boolean]
        required :enabled, Onlyfansapi::Internal::Type::Boolean

        # @!method initialize(account:, enabled:, request_options: {})
        #   @param account [String]
        #
        #   @param enabled [Boolean] Whether the welcome message should be enabled.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
