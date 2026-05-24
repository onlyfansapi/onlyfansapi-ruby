# typed: strong

module Onlyfansapi
  module Models
    class ReleaseFormListTaggableUsersResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination
          )
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination::OrHash,
          data:
            Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta,
            _pagination:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination,
            data:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache,
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
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits,
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
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits,
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

      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { params(next_page: String).returns(T.attached_class) }
        def self.new(next_page: nil)
        end

        sig { override.returns({ next_page: String }) }
        def to_hash
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item
              ]
            )
          )
        end
        attr_reader :items

        sig do
          params(
            items:
              T::Array[
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::OrHash
              ]
          ).void
        end
        attr_writer :items

        sig do
          params(
            has_more: T::Boolean,
            items:
              T::Array[
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, items: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              items:
                T::Array[
                  Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item
                ]
            }
          )
        end
        def to_hash
        end

        class Item < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::OrHash
            ).void
          end
          attr_writer :user

          sig do
            params(
              id: Integer,
              name: String,
              type: String,
              user:
                Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id: nil, name: nil, type: nil, user: nil)
          end

          sig do
            override.returns(
              {
                id: Integer,
                name: String,
                type: String,
                user:
                  Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User
              }
            )
          end
          def to_hash
          end

          class User < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User,
                  Onlyfansapi::Internal::AnyHash
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
                  Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs
                )
              )
            end
            attr_reader :avatar_thumbs

            sig do
              params(
                avatar_thumbs:
                  Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs::OrHash
              ).void
            end
            attr_writer :avatar_thumbs

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :hidden_for_rf

            sig { params(hidden_for_rf: T::Boolean).void }
            attr_writer :hidden_for_rf

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_from_guest

            sig { params(is_from_guest: T::Boolean).void }
            attr_writer :is_from_guest

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_verified

            sig { params(is_verified: T::Boolean).void }
            attr_writer :is_verified

            sig { returns(T.nilable(String)) }
            attr_reader :iv_status

            sig { params(iv_status: String).void }
            attr_writer :iv_status

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
                  Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs::OrHash,
                hidden_for_rf: T::Boolean,
                is_from_guest: T::Boolean,
                is_verified: T::Boolean,
                iv_status: String,
                name: String,
                username: String,
                view: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              avatar: nil,
              avatar_thumbs: nil,
              hidden_for_rf: nil,
              is_from_guest: nil,
              is_verified: nil,
              iv_status: nil,
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
                    Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs,
                  hidden_for_rf: T::Boolean,
                  is_from_guest: T::Boolean,
                  is_verified: T::Boolean,
                  iv_status: String,
                  name: String,
                  username: String,
                  view: String
                }
              )
            end
            def to_hash
            end

            class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs,
                    Onlyfansapi::Internal::AnyHash
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

              sig do
                params(c144: String, c50: String).returns(T.attached_class)
              end
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
end
