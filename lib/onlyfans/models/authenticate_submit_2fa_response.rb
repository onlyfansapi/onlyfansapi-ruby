# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Authenticate#submit_2fa
    class AuthenticateSubmit2faResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(message: nil)
      #   @param message [String]
    end
  end
end
