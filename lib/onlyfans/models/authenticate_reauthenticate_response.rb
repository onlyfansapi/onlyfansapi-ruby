# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Authenticate#reauthenticate
    class AuthenticateReauthenticateResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute polling_url
      #
      #   @return [String, nil]
      optional :polling_url, String

      # @!attribute success
      #
      #   @return [Boolean, nil]
      optional :success, Onlyfans::Internal::Type::Boolean

      # @!method initialize(message: nil, polling_url: nil, success: nil)
      #   @param message [String]
      #   @param polling_url [String]
      #   @param success [Boolean]
    end
  end
end
