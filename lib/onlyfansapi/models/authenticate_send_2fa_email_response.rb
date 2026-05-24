# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#send_2fa_email
    class AuthenticateSend2faEmailResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute success
      #
      #   @return [Boolean, nil]
      optional :success, Onlyfansapi::Internal::Type::Boolean

      # @!method initialize(message: nil, success: nil)
      #   @param message [String]
      #   @param success [Boolean]
    end
  end
end
