# typed: strong

module Onlyfansapi
  module Models
    class NotificationListResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::NotificationListResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::NotificationListResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::NotificationListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::NotificationListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::NotificationListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::NotificationListResponse::Meta::OrHash,
          data: Onlyfansapi::Models::NotificationListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::NotificationListResponse::Meta,
            data: Onlyfansapi::Models::NotificationListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::NotificationListResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::NotificationListResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::NotificationListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::NotificationListResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::NotificationListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::NotificationListResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::NotificationListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::NotificationListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::NotificationListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::NotificationListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::NotificationListResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::NotificationListResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::NotificationListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::NotificationListResponse::Meta::Cache,
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
                Onlyfansapi::Models::NotificationListResponse::Meta::Credits,
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
                Onlyfansapi::Models::NotificationListResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::NotificationListResponse::Data,
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
                Onlyfansapi::Models::NotificationListResponse::Data::List
              ]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfansapi::Models::NotificationListResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfansapi::Models::NotificationListResponse::Data::List::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, list: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfansapi::Models::NotificationListResponse::Data::List
                ]
            }
          )
        end
        def to_hash
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::NotificationListResponse::Data::List,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_go_to_profile

          sig { params(can_go_to_profile: T::Boolean).void }
          attr_writer :can_go_to_profile

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_read

          sig { params(is_read: T::Boolean).void }
          attr_writer :is_read

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::NotificationListResponse::Data::List::ReplacePairs
              )
            )
          end
          attr_reader :replace_pairs

          sig do
            params(
              replace_pairs:
                Onlyfansapi::Models::NotificationListResponse::Data::List::ReplacePairs::OrHash
            ).void
          end
          attr_writer :replace_pairs

          sig { returns(T.nilable(String)) }
          attr_reader :sub_type

          sig { params(sub_type: String).void }
          attr_writer :sub_type

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::NotificationListResponse::Data::List::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                Onlyfansapi::Models::NotificationListResponse::Data::List::User::OrHash
            ).void
          end
          attr_writer :user

          sig do
            params(
              id: Integer,
              can_go_to_profile: T::Boolean,
              created_at: String,
              is_read: T::Boolean,
              replace_pairs:
                Onlyfansapi::Models::NotificationListResponse::Data::List::ReplacePairs::OrHash,
              sub_type: String,
              text: String,
              type: String,
              user:
                Onlyfansapi::Models::NotificationListResponse::Data::List::User::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_go_to_profile: nil,
            created_at: nil,
            is_read: nil,
            replace_pairs: nil,
            sub_type: nil,
            text: nil,
            type: nil,
            user: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_go_to_profile: T::Boolean,
                created_at: String,
                is_read: T::Boolean,
                replace_pairs:
                  Onlyfansapi::Models::NotificationListResponse::Data::List::ReplacePairs,
                sub_type: String,
                text: String,
                type: String,
                user:
                  Onlyfansapi::Models::NotificationListResponse::Data::List::User
              }
            )
          end
          def to_hash
          end

          class ReplacePairs < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::NotificationListResponse::Data::List::ReplacePairs,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :price

            sig { params(price: String).void }
            attr_writer :price

            sig { returns(T.nilable(String)) }
            attr_reader :subscriber_link

            sig { params(subscriber_link: String).void }
            attr_writer :subscriber_link

            sig do
              params(price: String, subscriber_link: String).returns(
                T.attached_class
              )
            end
            def self.new(price: nil, subscriber_link: nil)
            end

            sig { override.returns({ price: String, subscriber_link: String }) }
            def to_hash
            end
          end

          class User < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::NotificationListResponse::Data::List::User,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :_view

            sig { params(_view: String).void }
            attr_writer :_view

            sig { params(id: Integer, _view: String).returns(T.attached_class) }
            def self.new(id: nil, _view: nil)
            end

            sig { override.returns({ id: Integer, _view: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
