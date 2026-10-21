# typed: strong

module Onlyfans
  module Models
    module Engagement
      class MessageGetMessageBuyersParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Engagement::MessageGetMessageBuyersParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :message_id

        # Number of buyers to return (default = 10)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Marker for pagination
        sig { returns(T.nilable(Integer)) }
        attr_reader :marker

        sig { params(marker: Integer).void }
        attr_writer :marker

        # Offset for pagination (default = 0)
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # Optional flag for subsequent pages (example: all).
        sig { returns(T.nilable(String)) }
        attr_reader :skip_users

        sig { params(skip_users: String).void }
        attr_writer :skip_users

        # Skip duplicate users in results (0/1). Default = 1
        sig { returns(T.nilable(Integer)) }
        attr_reader :skip_users_dups

        sig { params(skip_users_dups: Integer).void }
        attr_writer :skip_users_dups

        sig do
          params(
            account: String,
            message_id: String,
            limit: Integer,
            marker: Integer,
            offset: Integer,
            skip_users: String,
            skip_users_dups: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          message_id:,
          # Number of buyers to return (default = 10)
          limit: nil,
          # Marker for pagination
          marker: nil,
          # Offset for pagination (default = 0)
          offset: nil,
          # Optional flag for subsequent pages (example: all).
          skip_users: nil,
          # Skip duplicate users in results (0/1). Default = 1
          skip_users_dups: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              message_id: String,
              limit: Integer,
              marker: Integer,
              offset: Integer,
              skip_users: String,
              skip_users_dups: Integer,
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
