# typed: strong

module Onlyfans
  module Resources
    class SavedForLater
      class Posts
        class Settings
          # Get the Saved For Later post settings.
          sig do
            params(
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse
            )
          end
          def retrieve(
            # The Account ID
            account,
            request_options: {}
          )
          end

          # Disable automatic posting of Saved For Later posts.
          sig do
            params(
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::SavedForLater::Posts::SettingDisableAutomaticPostingResponse
            )
          end
          def disable_automatic_posting(
            # The Account ID
            account,
            request_options: {}
          )
          end

          # Enable or update automatic posting of Saved For Later posts.
          sig do
            params(
              account: String,
              period:
                Onlyfans::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period::OrInteger,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingResponse
            )
          end
          def enable_or_update_automatic_posting(
            # The Account ID
            account,
            # The automatic posting interval (in hours)
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
