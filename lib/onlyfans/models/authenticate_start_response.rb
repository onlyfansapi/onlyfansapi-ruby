# frozen_string_literal: true

module Onlyfans
  module Models
    # For email_password or raw_data auth types
    #
    # @see Onlyfans::Resources::Authenticate#start
    module AuthenticateStartResponse
      extend Onlyfans::Internal::Type::Union

      # For email_password or raw_data auth types
      variant -> { Onlyfans::Models::AuthenticateStartResponse::UnionMember0 }

      # For mobile_app auth type — includes the session code to scan with the FansAPI Auth+ app
      variant -> { Onlyfans::Models::AuthenticateStartResponse::UnionMember1 }

      class UnionMember0 < Onlyfans::Internal::Type::BaseModel
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
        #   For email_password or raw_data auth types
        #
        #   @param attempt_id [String]
        #   @param message [String]
        #   @param polling_url [String]
      end

      class UnionMember1 < Onlyfans::Internal::Type::BaseModel
        # @!attribute attempt_id
        #
        #   @return [String, nil]
        optional :attempt_id, String

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute mobile_auth_session_deeplink
        #
        #   @return [String, nil]
        optional :mobile_auth_session_deeplink, String

        # @!attribute polling_url
        #
        #   @return [String, nil]
        optional :polling_url, String

        # @!method initialize(attempt_id: nil, message: nil, mobile_auth_session_deeplink: nil, polling_url: nil)
        #   For mobile_app auth type — includes the session code to scan with the FansAPI
        #   Auth+ app
        #
        #   @param attempt_id [String]
        #   @param message [String]
        #   @param mobile_auth_session_deeplink [String]
        #   @param polling_url [String]
      end

      # @!method self.variants
      #   @return [Array(Onlyfans::Models::AuthenticateStartResponse::UnionMember0, Onlyfans::Models::AuthenticateStartResponse::UnionMember1)]
    end
  end
end
