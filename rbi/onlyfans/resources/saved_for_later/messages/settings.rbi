# typed: strong

module Onlyfans
  module Resources
    class SavedForLater
      class Messages
        class Settings
          # Get the Saved For Later message settings.
          sig do
            params(
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::SavedForLater::Messages::SettingRetrieveResponse
            )
          end
          def retrieve(
            # The Account ID
            account,
            request_options: {}
          )
          end

          # Disable automatic messaging of Saved For Later messages.
          sig do
            params(
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::SavedForLater::Messages::SettingDisableAutomaticMessagingResponse
            )
          end
          def disable_automatic_messaging(
            # The Account ID
            account,
            request_options: {}
          )
          end

          # Enable or update automatic messaging of Saved For Later messages.
          sig do
            params(
              account: String,
              period:
                Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period::OrInteger,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingResponse
            )
          end
          def enable_or_update_automatic_messaging(
            # The Account ID
            account,
            # The automatic messaging interval (in hours)
            period:,
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
  end
end
