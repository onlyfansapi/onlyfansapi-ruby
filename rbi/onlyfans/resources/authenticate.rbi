# typed: strong

module Onlyfans
  module Resources
    class Authenticate
      # Poll the status of the authentication process. Eg. if 2FA is required, we will
      # ask you for the code using the `twoFactorPending = true` in the response body.
      # For `mobile_app` auth, the response includes `mobile_auth_session_deeplink`
      # while the session is pending.
      sig do
        params(
          attempt_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::AuthenticatePollStatusResponse)
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
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::AuthenticateReauthenticateResponse)
      end
      def reauthenticate(
        # The Account ID of the authentication process
        account_id,
        request_options: {}
      )
      end

      # Send 2FA verification e-mail to the creator's email so they can verify login on
      # their device without your input. The e-mail will be sent to the e-mail address
      # used for signing into OnlyFans.
      sig do
        params(
          attempt_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::AuthenticateSend2faEmailResponse)
      end
      def send_2fa_email(
        # The attempt ID of the authentication process
        attempt_id,
        request_options: {}
      )
      end

      # Start the authentication process for a new account. Supports three methods:
      # email/password (default), cookies & headers (raw_data), or FansAPI Auth+ mobile
      # app (mobile_app). For email/password, our systems will bypass Captcha and ask
      # you for 2FA if required. For raw_data, provide session cookies directly for
      # instant authentication. For mobile_app, the response includes a
      # `mobile_auth_session_deeplink` that the creator opens on their phone (or scans
      # as a QR code) to complete authentication via the FansAPI Auth+ mobile app. All
      # credentials are stored securely and encrypted at rest.
      sig do
        params(
          _internal_automatic_syncs_disabled: T::Boolean,
          auth_id: String,
          auth_type: Onlyfans::AuthenticateStartParams::AuthType::OrSymbol,
          cookies: String,
          custom_proxy: Onlyfans::AuthenticateStartParams::CustomProxy::OrHash,
          email: String,
          force_connect: T::Boolean,
          name: String,
          password: String,
          proxy_country:
            Onlyfans::AuthenticateStartParams::ProxyCountry::OrSymbol,
          user_agent: String,
          xbc: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::AuthenticateStartResponse::Variants)
      end
      def start(
        _internal_automatic_syncs_disabled: nil,
        # The auth_id from OnlyFans session cookies. Required when auth_type is
        # `raw_data`.
        auth_id: nil,
        # The authentication method to use. Defaults to `email_password` if omitted. Use
        # `mobile_app` to authenticate via the FansAPI Auth+ mobile app (no credential
        # fields required).
        auth_type: nil,
        # The full cookie string (semicolon-separated). Required when auth_type is
        # `raw_data`.
        cookies: nil,
        # Custom proxy configuration. Cannot be used together with proxyCountry.
        custom_proxy: nil,
        # The email address of the OnlyFans account. Required when auth_type is
        # `email_password`.
        email: nil,
        # Set to true to connect the account even if it already exists
        force_connect: nil,
        # A display name for the account. If omitted, defaults to the email address or
        # auth_id.
        name: nil,
        # The password of the OnlyFans account. Required when auth_type is
        # `email_password`.
        password: nil,
        # The country of the managed proxy server you want to use. Eg. "us" for United
        # States. Cannot be used together with customProxy.
        proxy_country: nil,
        # The browser User-Agent string. Required when auth_type is `raw_data`.
        user_agent: nil,
        # The X-BC token from request headers. Required when auth_type is `raw_data`.
        xbc: nil,
        request_options: {}
      )
      end

      # Submit the 2FA code, or Selfie Verification status, for the authentication
      # process.
      sig do
        params(
          attempt_id: String,
          code: String,
          selfie_verification_completed: T.anything,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::AuthenticateSubmit2faResponse)
      end
      def submit_2fa(
        # The attempt ID of the authentication process
        attempt_id,
        # The 2FA code you received on your phone. Must be empty if
        # `selfie_verification_completed` is `true`.
        code: nil,
        # This field is required when <code>code</code> is not present.
        selfie_verification_completed: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
