# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Settings
      class SocialMediaButtons
        # Updates a social media button from the account
        #
        # @overload update(button_id, account:, label:, request_options: {})
        #
        # @param button_id [String] Path param: The ID of the social media button to update
        #
        # @param account [String] Path param: The Account ID
        #
        # @param label [String] Body param: The new label for the button
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::SocialMediaButtonUpdateResponse]
        #
        # @see Onlyfansapi::Models::Settings::SocialMediaButtonUpdateParams
        def update(button_id, params)
          parsed, options = Onlyfansapi::Settings::SocialMediaButtonUpdateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["api/%1$s/settings/social-media-buttons/%2$s", account, button_id],
            body: parsed,
            model: Onlyfansapi::Models::Settings::SocialMediaButtonUpdateResponse,
            options: options
          )
        end

        # Returns the list of social media buttons for the account
        #
        # @overload list(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::SocialMediaButtonListResponse]
        #
        # @see Onlyfansapi::Models::Settings::SocialMediaButtonListParams
        def list(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/settings/social-media-buttons", account],
            model: Onlyfansapi::Models::Settings::SocialMediaButtonListResponse,
            options: params[:request_options]
          )
        end

        # Deletes a social media button from the account
        #
        # @overload delete(button_id, account:, request_options: {})
        #
        # @param button_id [String] The ID of the social media button to update
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::SocialMediaButtonDeleteResponse]
        #
        # @see Onlyfansapi::Models::Settings::SocialMediaButtonDeleteParams
        def delete(button_id, params)
          parsed, options = Onlyfansapi::Settings::SocialMediaButtonDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/settings/social-media-buttons/%2$s", account, button_id],
            model: Onlyfansapi::Models::Settings::SocialMediaButtonDeleteResponse,
            options: options
          )
        end

        # Adds a new social media button to the account
        #
        # @overload add(account, label:, type:, value:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param label [String] The button label
        #
        # @param type [Symbol, Onlyfansapi::Models::Settings::SocialMediaButtonAddParams::Type] The button type
        #
        # @param value [String] The button value, either a username or link.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse]
        #
        # @see Onlyfansapi::Models::Settings::SocialMediaButtonAddParams
        def add(account, params)
          parsed, options = Onlyfansapi::Settings::SocialMediaButtonAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/settings/social-media-buttons", account],
            body: parsed,
            model: Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse,
            options: options
          )
        end

        # Changes the order of social media buttons for the account
        #
        # @overload reorder(account, button_ids:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param button_ids [Array<String>] The new order of the buttons
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Settings::SocialMediaButtonReorderResponse]
        #
        # @see Onlyfansapi::Models::Settings::SocialMediaButtonReorderParams
        def reorder(account, params)
          parsed, options = Onlyfansapi::Settings::SocialMediaButtonReorderParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/settings/social-media-buttons/reorder", account],
            body: parsed,
            model: Onlyfansapi::Models::Settings::SocialMediaButtonReorderResponse,
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
