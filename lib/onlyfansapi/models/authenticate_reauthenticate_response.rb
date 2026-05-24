# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#reauthenticate
    class AuthenticateReauthenticateResponse < Onlyfansapi::Internal::Type::BaseModel
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
      optional :success, Onlyfansapi::Internal::Type::Boolean

      # @!method initialize(message: nil, polling_url: nil, success: nil)
      #   @param message [String]
      #   @param polling_url [String]
      #   @param success [Boolean]
    end
  end
end
