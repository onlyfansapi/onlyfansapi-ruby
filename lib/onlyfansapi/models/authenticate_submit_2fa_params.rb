# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#submit_2fa
    class AuthenticateSubmit2faParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute attempt_id
      #
      #   @return [String]
      required :attempt_id, String

      # @!attribute code
      #   The 2FA code you received on your phone
      #
      #   @return [String]
      required :code, String

      # @!method initialize(attempt_id:, code:, request_options: {})
      #   @param attempt_id [String]
      #
      #   @param code [String] The 2FA code you received on your phone
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
