# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Authenticate#submit_2fa
    class AuthenticateSubmit2faParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      optional :selfie_verification_completed, Onlyfans::Internal::Type::Unknown

      # @!method initialize(attempt_id:, code: nil, selfie_verification_completed: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::AuthenticateSubmit2faParams} for more details.
      #
      #   @param attempt_id [String]
      #
      #   @param code [String] The 2FA code you received on your phone. Must be empty if `selfie_verification_c
      #
      #   @param selfie_verification_completed [Object] This field is required when <code>code</code> is not present.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
