# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class SavedForLater
      class Messages
        class Settings
          # Get the Saved For Later message settings.
          #
          # @overload retrieve(account, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::SavedForLater::Messages::SettingRetrieveResponse]
          #
          # @see Onlyfansapi::Models::SavedForLater::Messages::SettingRetrieveParams
          def retrieve(account, params = {})
            @client.request(
              method: :get,
              path: ["api/%1$s/saved-for-later/messages/settings", account],
              model: Onlyfansapi::Models::SavedForLater::Messages::SettingRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Disable automatic messaging of Saved For Later messages.
          #
          # @overload disable_automatic_messaging(account, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse]
          #
          # @see Onlyfansapi::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingParams
          def disable_automatic_messaging(account, params = {})
            @client.request(
              method: :patch,
              path: ["api/%1$s/saved-for-later/messages/settings/disable-automatic-messaging", account],
              model: Onlyfansapi::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse,
              options: params[:request_options]
            )
          end

          # Enable or update automatic messaging of Saved For Later messages.
          #
          # @overload enable_or_update_automatic_messaging(account, period:, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param period [Integer, Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period] The automatic messaging interval (in hours)
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse]
          #
          # @see Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams
          def enable_or_update_automatic_messaging(account, params)
            parsed, options =
              Onlyfansapi::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams.dump_request(params)
            @client.request(
              method: :patch,
              path: [
                "api/%1$s/saved-for-later/messages/settings/enable-or-update-automatic-messaging",
                account
              ],
              body: parsed,
              model: Onlyfansapi::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse,
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
end
