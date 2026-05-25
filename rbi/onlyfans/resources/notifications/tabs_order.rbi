# typed: strong

module Onlyfans
  module Resources
    class Notifications
      # Endpoints for managingr account notifications
      class TabsOrder
        # Update the order of an account's notification tabs as displayed on the OnlyFans
        # notifications page
        sig do
          params(
            account: String,
            tabs: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Notifications::TabsOrderUpdateResponse)
        end
        def update(
          # The Account ID
          account,
          # Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
          # purchases, tips, tags, comments, mentions, likes, promotions.
          tabs:,
          request_options: {}
        )
        end

        # Get the order of an account's notification tabs as displayed on the OnlyFans
        # notifications page
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Notifications::TabsOrderGetResponse)
        end
        def get(
          # The Account ID
          account,
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
