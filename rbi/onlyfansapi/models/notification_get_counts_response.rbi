# typed: strong

module Onlyfansapi
  module Models
    class NotificationGetCountsResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::NotificationGetCountsResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::NotificationGetCountsResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::NotificationGetCountsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::NotificationGetCountsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::NotificationGetCountsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::NotificationGetCountsResponse::Meta::OrHash,
          data: Onlyfansapi::Models::NotificationGetCountsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::NotificationGetCountsResponse::Meta,
            data: Onlyfansapi::Models::NotificationGetCountsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::NotificationGetCountsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::NotificationGetCountsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Cache,
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
                Onlyfansapi::Models::NotificationGetCountsResponse::Meta::Credits,
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
                Onlyfansapi::Models::NotificationGetCountsResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::NotificationGetCountsResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :all

        sig { params(all: Integer).void }
        attr_writer :all

        sig { returns(T.nilable(Integer)) }
        attr_reader :commented

        sig { params(commented: Integer).void }
        attr_writer :commented

        sig { returns(T.nilable(Integer)) }
        attr_reader :deactivated_media

        sig { params(deactivated_media: Integer).void }
        attr_writer :deactivated_media

        sig { returns(T.nilable(Integer)) }
        attr_reader :favorited

        sig { params(favorited: Integer).void }
        attr_writer :favorited

        sig { returns(T.nilable(Integer)) }
        attr_reader :mentioned

        sig { params(mentioned: Integer).void }
        attr_writer :mentioned

        sig { returns(T.nilable(Integer)) }
        attr_reader :message

        sig { params(message: Integer).void }
        attr_writer :message

        sig { returns(T.nilable(Integer)) }
        attr_reader :purchases

        sig { params(purchases: Integer).void }
        attr_writer :purchases

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribed

        sig { params(subscribed: Integer).void }
        attr_writer :subscribed

        sig { returns(T.nilable(Integer)) }
        attr_reader :system_

        sig { params(system_: Integer).void }
        attr_writer :system_

        sig { returns(T.nilable(Integer)) }
        attr_reader :tags

        sig { params(tags: Integer).void }
        attr_writer :tags

        sig { returns(T.nilable(Integer)) }
        attr_reader :tip

        sig { params(tip: Integer).void }
        attr_writer :tip

        sig do
          params(
            all: Integer,
            commented: Integer,
            deactivated_media: Integer,
            favorited: Integer,
            mentioned: Integer,
            message: Integer,
            purchases: Integer,
            subscribed: Integer,
            system_: Integer,
            tags: Integer,
            tip: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          all: nil,
          commented: nil,
          deactivated_media: nil,
          favorited: nil,
          mentioned: nil,
          message: nil,
          purchases: nil,
          subscribed: nil,
          system_: nil,
          tags: nil,
          tip: nil
        )
        end

        sig do
          override.returns(
            {
              all: Integer,
              commented: Integer,
              deactivated_media: Integer,
              favorited: Integer,
              mentioned: Integer,
              message: Integer,
              purchases: Integer,
              subscribed: Integer,
              system_: Integer,
              tags: Integer,
              tip: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
