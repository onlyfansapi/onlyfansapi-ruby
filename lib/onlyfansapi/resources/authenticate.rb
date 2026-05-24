# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Authenticate
      # Poll the status of the authentication process. Eg. if 2FA is required, we will
      # ask you for the code using the `twoFactorPending = true` in the response body.
      #
      # @overload poll_status(attempt_id, request_options: {})
      #
      # @param attempt_id [String] The attempt ID of the authentication process
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::AuthenticatePollStatusResponse]
      #
      # @see Onlyfansapi::Models::AuthenticatePollStatusParams
      def poll_status(attempt_id, params = {})
        @client.request(
          method: :get,
          path: ["api/authenticate/%1$s", attempt_id],
          model: Onlyfansapi::Models::AuthenticatePollStatusResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Onlyfansapi::Models::AuthenticateReauthenticateParams
      def reauthenticate(account_id, params = {})
        @client.request(
          method: :post,
          path: ["api/authenticate/%1$s/reauthenticate", account_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Start the authentication process for a new account. Our systems will bypass
      # Captcha and also ask you for 2FA code if required. All credentials are stored
      # securely using bcrypt and only used during login.
      #
      # @overload start(email:, password:, proxy_country:, request_options: {})
      #
      # @param email [String] The email address of the OnlyFans account
      #
      # @param password [String] The password of the OnlyFans account
      #
      # @param proxy_country [Symbol, Onlyfansapi::Models::AuthenticateStartParams::ProxyCountry] The country of the proxy server you want to use. Eg. "us" for United States
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::AuthenticateStartResponse]
      #
      # @see Onlyfansapi::Models::AuthenticateStartParams
      def start(params)
        parsed, options = Onlyfansapi::AuthenticateStartParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/authenticate",
          body: parsed,
          model: Onlyfansapi::Models::AuthenticateStartResponse,
          options: options
        )
      end

      # Submit the 2FA code for the authentication process.
      #
      # @overload submit_2fa(attempt_id, code:, request_options: {})
      #
      # @param attempt_id [String] The attempt ID of the authentication process
      #
      # @param code [String] The 2FA code you received on your phone
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::AuthenticateSubmit2faResponse]
      #
      # @see Onlyfansapi::Models::AuthenticateSubmit2faParams
      def submit_2fa(attempt_id, params)
        parsed, options = Onlyfansapi::AuthenticateSubmit2faParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["api/authenticate/%1$s", attempt_id],
          body: parsed,
          model: Onlyfansapi::Models::AuthenticateSubmit2faResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
