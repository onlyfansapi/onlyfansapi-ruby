# typed: strong

module Onlyfans
  module Models
    module Notifications
      class TabsOrderUpdateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Notifications::TabsOrderUpdateParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
        # purchases, tips, tags, comments, mentions, likes, promotions.
        sig { returns(T::Array[String]) }
        attr_accessor :tabs

        sig do
          params(
            account: String,
            tabs: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
          # purchases, tips, tags, comments, mentions, likes, promotions.
          tabs:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              tabs: T::Array[String],
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
