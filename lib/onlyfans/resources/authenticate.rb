# frozen_string_literal: true

module Onlyfans
  module Resources
    class Authenticate
      # Poll the status of the authentication process. Eg. if 2FA is required, we will
      # ask you for the code using the `twoFactorPending = true` in the response body.
      # For `mobile_app` auth, the response includes `mobile_auth_session_deeplink`
      # while the session is pending.
      #
      # @overload poll_status(attempt_id, request_options: {})
      #
      # @param attempt_id [String] The attempt ID of the authentication process
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::AuthenticatePollStatusResponse]
      #
      # @see Onlyfans::Models::AuthenticatePollStatusParams
      def poll_status(attempt_id, params = {})
        @client.request(
          method: :get,
          path: ["api/authenticate/%1$s", attempt_id],
          model: Onlyfans::Models::AuthenticatePollStatusResponse,
          options: params[:request_options]
        )
      end

      # Trigger account reauthentication without the need to submit email & password
      # again.
      #
      # @overload reauthenticate(account_id, request_options: {})
      #
      # @param account_id [String] The Account ID of the authentication process
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::AuthenticateReauthenticateResponse]
      #
      # @see Onlyfans::Models::AuthenticateReauthenticateParams
      def reauthenticate(account_id, params = {})
        @client.request(
          method: :post,
          path: ["api/authenticate/%1$s/reauthenticate", account_id],
          model: Onlyfans::Models::AuthenticateReauthenticateResponse,
          options: params[:request_options]
        )
      end

      # Send 2FA verification e-mail to the creator's email so they can verify login on
      # their device without your input. The e-mail will be sent to the e-mail address
      # used for signing into OnlyFans.
      #
      # @overload send_2fa_email(attempt_id, request_options: {})
      #
      # @param attempt_id [String] The attempt ID of the authentication process
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::AuthenticateSend2faEmailResponse]
      #
      # @see Onlyfans::Models::AuthenticateSend2faEmailParams
      def send_2fa_email(attempt_id, params = {})
        @client.request(
          method: :post,
          path: ["api/authenticate/%1$s/send-email-to-creator", attempt_id],
          model: Onlyfans::Models::AuthenticateSend2faEmailResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::AuthenticateStartParams} for more details.
      #
      # Start the authentication process for a new account. Supports three methods:
      # email/password (default), cookies & headers (raw_data), or FansAPI Auth+ mobile
      # app (mobile_app). For email/password, our systems will bypass Captcha and ask
      # you for 2FA if required. For raw_data, provide session cookies directly for
      # instant authentication. For mobile_app, the response includes a
      # `mobile_auth_session_deeplink` that the creator opens on their phone (or scans
      # as a QR code) to complete authentication via the FansAPI Auth+ mobile app. All
      # credentials are stored securely and encrypted at rest.
      #
      # @overload start(_internal_automatic_syncs_disabled: nil, auth_id: nil, auth_type: nil, cookies: nil, custom_proxy: nil, email: nil, force_connect: nil, name: nil, password: nil, proxy_country: nil, user_agent: nil, xbc: nil, request_options: {})
      #
      # @param _internal_automatic_syncs_disabled [Boolean]
      #
      # @param auth_id [String] The auth_id from OnlyFans session cookies. Required when auth_type is `raw_data`
      #
      # @param auth_type [Symbol, Onlyfans::Models::AuthenticateStartParams::AuthType] The authentication method to use. Defaults to `email_password` if omitted. Use `
      #
      # @param cookies [String] The full cookie string (semicolon-separated). Required when auth_type is `raw_da
      #
      # @param custom_proxy [Onlyfans::Models::AuthenticateStartParams::CustomProxy] Custom proxy configuration. Cannot be used together with proxyCountry.
      #
      # @param email [String] The email address of the OnlyFans account. Required when auth_type is `email_pas
      #
      # @param force_connect [Boolean] Set to true to connect the account even if it already exists
      #
      # @param name [String] A display name for the account. If omitted, defaults to the email address or aut
      #
      # @param password [String] The password of the OnlyFans account. Required when auth_type is `email_password
      #
      # @param proxy_country [Symbol, Onlyfans::Models::AuthenticateStartParams::ProxyCountry] The country of the managed proxy server you want to use. Eg. "us" for United Sta
      #
      # @param user_agent [String] The browser User-Agent string. Required when auth_type is `raw_data`.
      #
      # @param xbc [String] The X-BC token from request headers. Required when auth_type is `raw_data`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::AuthenticateStartResponse::UnionMember0, Onlyfans::Models::AuthenticateStartResponse::UnionMember1]
      #
      # @see Onlyfans::Models::AuthenticateStartParams
      def start(params = {})
        parsed, options = Onlyfans::AuthenticateStartParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/authenticate",
          body: parsed,
          model: Onlyfans::Models::AuthenticateStartResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::AuthenticateSubmit2faParams} for more details.
      #
      # Submit the 2FA code, or Selfie Verification status, for the authentication
      # process.
      #
      # @overload submit_2fa(attempt_id, code: nil, selfie_verification_completed: nil, request_options: {})
      #
      # @param attempt_id [String] The attempt ID of the authentication process
      #
      # @param code [String] The 2FA code you received on your phone. Must be empty if `selfie_verification_c
      #
      # @param selfie_verification_completed [Object] This field is required when <code>code</code> is not present.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::AuthenticateSubmit2faResponse]
      #
      # @see Onlyfans::Models::AuthenticateSubmit2faParams
      def submit_2fa(attempt_id, params = {})
        parsed, options = Onlyfans::AuthenticateSubmit2faParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["api/authenticate/%1$s", attempt_id],
          body: parsed,
          model: Onlyfans::Models::AuthenticateSubmit2faResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
