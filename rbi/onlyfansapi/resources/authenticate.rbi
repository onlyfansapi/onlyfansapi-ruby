# typed: strong

module Onlyfansapi
  module Resources
    class Authenticate
      # Poll the status of the authentication process. Eg. if 2FA is required, we will
      # ask you for the code using the `twoFactorPending = true` in the response body.
      sig do
        params(
          attempt_id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::AuthenticatePollStatusResponse)
      end
      def poll_status(
        # The attempt ID of the authentication process
        attempt_id,
        request_options: {}
      )
      end

      # Trigger account reauthentication without the need to submit email & password
      # again.
      sig do
        params(
          account_id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).void
      end
      def reauthenticate(
        # The Account ID of the authentication process
        account_id,
        request_options: {}
      )
      end

      # Start the authentication process for a new account. Our systems will bypass
      # Captcha and also ask you for 2FA code if required. All credentials are stored
      # securely using bcrypt and only used during login.
      sig do
        params(
          email: String,
          password: String,
          proxy_country:
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::AuthenticateStartResponse)
      end
      def start(
        # The email address of the OnlyFans account
        email:,
        # The password of the OnlyFans account
        password:,
        # The country of the proxy server you want to use. Eg. "us" for United States
        proxy_country:,
        request_options: {}
      )
      end

      # Submit the 2FA code for the authentication process.
      sig do
        params(
          attempt_id: String,
          code: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::AuthenticateSubmit2faResponse)
      end
      def submit_2fa(
        # The attempt ID of the authentication process
        attempt_id,
        # The 2FA code you received on your phone
        code:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
