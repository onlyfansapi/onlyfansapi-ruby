# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class SavedForLater
      class Posts
        class Settings
          # Get the Saved For Later post settings.
          #
          # @overload retrieve(account, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse]
          #
          # @see Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveParams
          def retrieve(account, params = {})
            @client.request(
              method: :get,
              path: ["api/%1$s/saved-for-later/posts/settings", account],
              model: Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Disable automatic posting of Saved For Later posts.
          #
          # @overload disable_automatic_posting(account, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse]
          #
          # @see Onlyfansapi::Models::SavedForLater::Posts::SettingDisableAutomaticPostingParams
          def disable_automatic_posting(account, params = {})
            @client.request(
              method: :patch,
              path: ["api/%1$s/saved-for-later/posts/settings/disable-automatic-posting", account],
              model: Onlyfansapi::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse,
              options: params[:request_options]
            )
          end

          # Enable or update automatic posting of Saved For Later posts.
          #
          # @overload enable_or_update_automatic_posting(account, period:, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param period [Integer, Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period] The automatic posting interval (in hours)
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse]
          #
          # @see Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams
          def enable_or_update_automatic_posting(account, params)
            parsed, options =
              Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["api/%1$s/saved-for-later/posts/settings/enable-or-update-automatic-posting", account],
              body: parsed,
              model: Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse,
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
