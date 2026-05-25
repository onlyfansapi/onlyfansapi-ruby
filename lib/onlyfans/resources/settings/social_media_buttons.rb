# frozen_string_literal: true

module Onlyfans
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::SocialMediaButtonUpdateResponse]
        #
        # @see Onlyfans::Models::Settings::SocialMediaButtonUpdateParams
        def update(button_id, params)
          parsed, options = Onlyfans::Settings::SocialMediaButtonUpdateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["api/%1$s/settings/social-media-buttons/%2$s", account, button_id],
            body: parsed,
            model: Onlyfans::Models::Settings::SocialMediaButtonUpdateResponse,
            options: options
          )
        end

        # Returns the list of social media buttons for the account
        #
        # @overload list(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::SocialMediaButtonListResponse]
        #
        # @see Onlyfans::Models::Settings::SocialMediaButtonListParams
        def list(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/settings/social-media-buttons", account],
            model: Onlyfans::Models::Settings::SocialMediaButtonListResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::SocialMediaButtonDeleteResponse]
        #
        # @see Onlyfans::Models::Settings::SocialMediaButtonDeleteParams
        def delete(button_id, params)
          parsed, options = Onlyfans::Settings::SocialMediaButtonDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/settings/social-media-buttons/%2$s", account, button_id],
            model: Onlyfans::Models::Settings::SocialMediaButtonDeleteResponse,
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
        # @param type [Symbol, Onlyfans::Models::Settings::SocialMediaButtonAddParams::Type] The button type
        #
        # @param value [String] The button value, either a username or link.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::SocialMediaButtonAddResponse]
        #
        # @see Onlyfans::Models::Settings::SocialMediaButtonAddParams
        def add(account, params)
          parsed, options = Onlyfans::Settings::SocialMediaButtonAddParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/settings/social-media-buttons", account],
            body: parsed,
            model: Onlyfans::Models::Settings::SocialMediaButtonAddResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::SocialMediaButtonReorderResponse]
        #
        # @see Onlyfans::Models::Settings::SocialMediaButtonReorderParams
        def reorder(account, params)
          parsed, options = Onlyfans::Settings::SocialMediaButtonReorderParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/settings/social-media-buttons/reorder", account],
            body: parsed,
            model: Onlyfans::Models::Settings::SocialMediaButtonReorderResponse,
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
end
