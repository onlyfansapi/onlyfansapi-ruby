# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Settings#check_username_availability
    class SettingCheckUsernameAvailabilityParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute username
      #   The username to check.
      #
      #   @return [String]
      required :username, String

      # @!method initialize(account:, username:, request_options: {})
      #   @param account [String]
      #
      #   @param username [String] The username to check.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
