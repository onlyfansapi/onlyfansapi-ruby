# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Settings
      class WelcomeMessage
        # Get the current automatic welcome message template that is sent when someone
        # subscribes.
        #
        # @overload retrieve(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::WelcomeMessageRetrieveResponse]
        #
        # @see Onlyfansapi::Models::Settings::WelcomeMessageRetrieveParams
        def retrieve(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/settings/welcome-message", account],
            model: Onlyfansapi::Models::Settings::WelcomeMessageRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Settings::WelcomeMessageUpdateParams} for more details.
        #
        # Update the automatic welcome message template that is sent when someone
        # subscribes.
        #
        # @overload update(account, is_forward: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, rf_guest: nil, rf_partner: nil, rf_tag: nil, text: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param is_forward [Boolean]
        #
        # @param locked_text [Boolean] Whether the text should be shown or hidden.
        #
        # @param media_files [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden i
        #
        # @param previews [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        #
        # @param price [Integer] Price for paid content (0 or between 3-200). In case this is not zero,
        # \*\*mediaFi
        #
        # @param rf_guest [String] Array of OnlyFans Release Form Guest IDs to tag in your message.
        #
        # @param rf_partner [String] Array of OnlyFans Release Form Partners IDs to tag in your message.
        #
        # @param rf_tag [String] Array of OnlyFans Creator User IDs to tag in your message.
        #
        # @param text [String] The welcome message text content. Required unless a media file is present.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse]
        #
        # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateParams
        def update(account, params = {})
          parsed, options = Onlyfansapi::Settings::WelcomeMessageUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/settings/welcome-message", account],
            body: parsed,
            model: Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse,
            options: options
          )
        end

        # Enable or disable the automatic welcome message that is sent when someone
        # subscribes.
        #
        # @overload toggle(account, enabled:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param enabled [Boolean] Whether the welcome message should be enabled.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::WelcomeMessageToggleResponse]
        #
        # @see Onlyfansapi::Models::Settings::WelcomeMessageToggleParams
        def toggle(account, params)
          parsed, options = Onlyfansapi::Settings::WelcomeMessageToggleParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/%1$s/settings/welcome-message", account],
            body: parsed,
            model: Onlyfansapi::Models::Settings::WelcomeMessageToggleResponse,
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
end
