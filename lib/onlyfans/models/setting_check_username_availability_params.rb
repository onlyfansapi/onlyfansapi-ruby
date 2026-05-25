# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Settings#check_username_availability
    class SettingCheckUsernameAvailabilityParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
