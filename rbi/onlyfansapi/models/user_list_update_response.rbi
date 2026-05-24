# typed: strong

module Onlyfansapi
  module Models
    class UserListUpdateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::UserListUpdateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::UserListUpdateResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::UserListUpdateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::UserListUpdateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::UserListUpdateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::UserListUpdateResponse::Meta::OrHash,
          data: Onlyfansapi::Models::UserListUpdateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::UserListUpdateResponse::Meta,
            data: Onlyfansapi::Models::UserListUpdateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::UserListUpdateResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::UserListUpdateResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::UserListUpdateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::UserListUpdateResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::UserListUpdateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::UserListUpdateResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::UserListUpdateResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::UserListUpdateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::UserListUpdateResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::UserListUpdateResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::UserListUpdateResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::UserListUpdateResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::UserListUpdateResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::UserListUpdateResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::UserListUpdateResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::UserListUpdateResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_day

          sig { params(limit_day: Integer).void }
          attr_writer :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_day

          sig { params(remaining_day: Integer).void }
          attr_writer :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: Integer,
              limit_minute: Integer,
              remaining_day: Integer,
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::UserListUpdateResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_users

        sig { params(can_add_users: T::Boolean).void }
        attr_writer :can_add_users

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_delete

        sig { params(can_delete: T::Boolean).void }
        attr_writer :can_delete

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_manage_users

        sig { params(can_manage_users: T::Boolean).void }
        attr_writer :can_manage_users

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_pinned_to_chat

        sig { params(can_pinned_to_chat: T::Boolean).void }
        attr_writer :can_pinned_to_chat

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_pinned_to_feed

        sig { params(can_pinned_to_feed: T::Boolean).void }
        attr_writer :can_pinned_to_feed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_update

        sig { params(can_update: T::Boolean).void }
        attr_writer :can_update

        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_pinned_to_chat

        sig { params(is_pinned_to_chat: T::Boolean).void }
        attr_writer :is_pinned_to_chat

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_pinned_to_feed

        sig { params(is_pinned_to_feed: T::Boolean).void }
        attr_writer :is_pinned_to_feed

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :order

        sig { params(order: String).void }
        attr_writer :order

        sig { returns(T.nilable(Integer)) }
        attr_reader :posts_count

        sig { params(posts_count: Integer).void }
        attr_writer :posts_count

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :sort_list

        sig { params(sort_list: T::Array[T.anything]).void }
        attr_writer :sort_list

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :users

        sig { params(users: T::Array[T.anything]).void }
        attr_writer :users

        sig { returns(T.nilable(Integer)) }
        attr_reader :users_count

        sig { params(users_count: Integer).void }
        attr_writer :users_count

        sig do
          params(
            id: Integer,
            can_add_users: T::Boolean,
            can_delete: T::Boolean,
            can_manage_users: T::Boolean,
            can_pinned_to_chat: T::Boolean,
            can_pinned_to_feed: T::Boolean,
            can_update: T::Boolean,
            direction: String,
            is_pinned_to_chat: T::Boolean,
            is_pinned_to_feed: T::Boolean,
            name: String,
            order: String,
            posts_count: Integer,
            sort_list: T::Array[T.anything],
            type: String,
            users: T::Array[T.anything],
            users_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          can_add_users: nil,
          can_delete: nil,
          can_manage_users: nil,
          can_pinned_to_chat: nil,
          can_pinned_to_feed: nil,
          can_update: nil,
          direction: nil,
          is_pinned_to_chat: nil,
          is_pinned_to_feed: nil,
          name: nil,
          order: nil,
          posts_count: nil,
          sort_list: nil,
          type: nil,
          users: nil,
          users_count: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              can_add_users: T::Boolean,
              can_delete: T::Boolean,
              can_manage_users: T::Boolean,
              can_pinned_to_chat: T::Boolean,
              can_pinned_to_feed: T::Boolean,
              can_update: T::Boolean,
              direction: String,
              is_pinned_to_chat: T::Boolean,
              is_pinned_to_feed: T::Boolean,
              name: String,
              order: String,
              posts_count: Integer,
              sort_list: T::Array[T.anything],
              type: String,
              users: T::Array[T.anything],
              users_count: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
