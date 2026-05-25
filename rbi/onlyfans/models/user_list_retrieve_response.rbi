# typed: strong

module Onlyfans
  module Models
    class UserListRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::UserListRetrieveResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::UserListRetrieveResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::UserListRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfans::Models::UserListRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::UserListRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::UserListRetrieveResponse::Meta::OrHash,
          data: Onlyfans::Models::UserListRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::UserListRetrieveResponse::Meta,
            data: Onlyfans::Models::UserListRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::UserListRetrieveResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::UserListRetrieveResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::UserListRetrieveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::UserListRetrieveResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::UserListRetrieveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::UserListRetrieveResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::UserListRetrieveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::UserListRetrieveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::UserListRetrieveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::UserListRetrieveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::UserListRetrieveResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::UserListRetrieveResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::UserListRetrieveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::UserListRetrieveResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
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

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::UserListRetrieveResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
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

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::UserListRetrieveResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
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

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::UserListRetrieveResponse::Data,
              Onlyfans::Internal::AnyHash
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

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::UserListRetrieveResponse::Data::User]
            )
          )
        end
        attr_reader :users

        sig do
          params(
            users:
              T::Array[
                Onlyfans::Models::UserListRetrieveResponse::Data::User::OrHash
              ]
          ).void
        end
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
            users:
              T::Array[
                Onlyfans::Models::UserListRetrieveResponse::Data::User::OrHash
              ],
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
              users:
                T::Array[
                  Onlyfans::Models::UserListRetrieveResponse::Data::User
                ],
              users_count: Integer
            }
          )
        end
        def to_hash
        end

        class User < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::UserListRetrieveResponse::Data::User,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :avatar

          sig { params(avatar: String).void }
          attr_writer :avatar

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::UserListRetrieveResponse::Data::User::AvatarThumbs
              )
            )
          end
          attr_reader :avatar_thumbs

          sig do
            params(
              avatar_thumbs:
                Onlyfans::Models::UserListRetrieveResponse::Data::User::AvatarThumbs::OrHash
            ).void
          end
          attr_writer :avatar_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_verified

          sig { params(is_verified: T::Boolean).void }
          attr_writer :is_verified

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          sig { returns(T.nilable(String)) }
          attr_reader :view

          sig { params(view: String).void }
          attr_writer :view

          sig do
            params(
              id: Integer,
              avatar: String,
              avatar_thumbs:
                Onlyfans::Models::UserListRetrieveResponse::Data::User::AvatarThumbs::OrHash,
              is_verified: T::Boolean,
              name: String,
              username: String,
              view: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            avatar: nil,
            avatar_thumbs: nil,
            is_verified: nil,
            name: nil,
            username: nil,
            view: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                avatar: String,
                avatar_thumbs:
                  Onlyfans::Models::UserListRetrieveResponse::Data::User::AvatarThumbs,
                is_verified: T::Boolean,
                name: String,
                username: String,
                view: String
              }
            )
          end
          def to_hash
          end

          class AvatarThumbs < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::UserListRetrieveResponse::Data::User::AvatarThumbs,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :c144

            sig { params(c144: String).void }
            attr_writer :c144

            sig { returns(T.nilable(String)) }
            attr_reader :c50

            sig { params(c50: String).void }
            attr_writer :c50

            sig { params(c144: String, c50: String).returns(T.attached_class) }
            def self.new(c144: nil, c50: nil)
            end

            sig { override.returns({ c144: String, c50: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
