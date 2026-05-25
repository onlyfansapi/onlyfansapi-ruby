# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Authenticate#send_2fa_email
    class AuthenticateSend2faEmailResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute success
      #
      #   @return [Boolean, nil]
      optional :success, Onlyfans::Internal::Type::Boolean

      # @!method initialize(message: nil, success: nil)
      #   @param message [String]
      #   @param success [Boolean]
    end
  end
end
