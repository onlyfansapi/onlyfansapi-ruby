# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#submit_2fa
    class AuthenticateSubmit2faResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(message: nil)
      #   @param message [String]
    end
  end
end
