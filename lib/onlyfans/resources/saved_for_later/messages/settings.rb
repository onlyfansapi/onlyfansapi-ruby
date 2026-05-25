# frozen_string_literal: true

module Onlyfans
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
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::SavedForLater::Messages::SettingRetrieveResponse]
          #
          # @see Onlyfans::Models::SavedForLater::Messages::SettingRetrieveParams
          def retrieve(account, params = {})
            @client.request(
              method: :get,
              path: ["api/%1$s/saved-for-later/messages/settings", account],
              model: Onlyfans::Models::SavedForLater::Messages::SettingRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Disable automatic messaging of Saved For Later messages.
          #
          # @overload disable_automatic_messaging(account, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse]
          #
          # @see Onlyfans::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingParams
          def disable_automatic_messaging(account, params = {})
            @client.request(
              method: :patch,
              path: ["api/%1$s/saved-for-later/messages/settings/disable-automatic-messaging", account],
              model: Onlyfans::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse,
              options: params[:request_options]
            )
          end

          # Enable or update automatic messaging of Saved For Later messages.
          #
          # @overload enable_or_update_automatic_messaging(account, period:, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param period [Integer, Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period] The automatic messaging interval (in hours)
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse]
          #
          # @see Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams
          def enable_or_update_automatic_messaging(account, params)
            parsed, options =
              Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams.dump_request(params)
            @client.request(
              method: :patch,
              path: [
                "api/%1$s/saved-for-later/messages/settings/enable-or-update-automatic-messaging",
                account
              ],
              body: parsed,
              model: Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse,
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
end
