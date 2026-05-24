# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#send_2fa_email
    class AuthenticateSend2faEmailParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute attempt_id
      #
      #   @return [String]
      required :attempt_id, String

      # @!method initialize(attempt_id:, request_options: {})
      #   @param attempt_id [String]
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
