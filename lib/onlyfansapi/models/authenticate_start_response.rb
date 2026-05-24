# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#start
    class AuthenticateStartResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute attempt_id
      #
      #   @return [String, nil]
      optional :attempt_id, String

      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute polling_url
      #
      #   @return [String, nil]
      optional :polling_url, String

      # @!method initialize(attempt_id: nil, message: nil, polling_url: nil)
      #   @param attempt_id [String]
      #   @param message [String]
      #   @param polling_url [String]
    end
  end
end
