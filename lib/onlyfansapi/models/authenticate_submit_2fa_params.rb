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
      #   The 2FA code you received on your phone. Must be empty if
      #   `selfie_verification_completed` is `true`.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute selfie_verification_completed
      #   This field is required when <code>code</code> is not present.
      #
      #   @return [Object, nil]
      optional :selfie_verification_completed, Onlyfansapi::Internal::Type::Unknown

      # @!method initialize(attempt_id:, code: nil, selfie_verification_completed: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::AuthenticateSubmit2faParams} for more details.
      #
      #   @param attempt_id [String]
      #
      #   @param code [String] The 2FA code you received on your phone. Must be empty if `selfie_verification_c
      #
      #   @param selfie_verification_completed [Object] This field is required when <code>code</code> is not present.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
