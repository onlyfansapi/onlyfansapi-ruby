# typed: strong

module Onlyfansapi
  module Models
    class MassMessagingDeleteResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::MassMessagingDeleteResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::MassMessagingDeleteResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::MassMessagingDeleteResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::MassMessagingDeleteResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::OrHash,
          data: Onlyfansapi::Models::MassMessagingDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::MassMessagingDeleteResponse::Meta,
            data: Onlyfansapi::Models::MassMessagingDeleteResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Cache,
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
                Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::Credits,
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
                Onlyfansapi::Models::MassMessagingDeleteResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::MassMessagingDeleteResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingDeleteResponse::Data::Queue
            )
          )
        end
        attr_reader :queue

        sig do
          params(
            queue:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Data::Queue::OrHash
          ).void
        end
        attr_writer :queue

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(
            queue:
              Onlyfansapi::Models::MassMessagingDeleteResponse::Data::Queue::OrHash,
            success: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(queue: nil, success: nil)
        end

        sig do
          override.returns(
            {
              queue:
                Onlyfansapi::Models::MassMessagingDeleteResponse::Data::Queue,
              success: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Queue < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MassMessagingDeleteResponse::Data::Queue,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_unsend

          sig { params(can_unsend: T::Boolean).void }
          attr_writer :can_unsend

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { returns(T.nilable(String)) }
          attr_accessor :giphy_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_error

          sig { params(has_error: T::Boolean).void }
          attr_writer :has_error

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_canceled

          sig { params(is_canceled: T::Boolean).void }
          attr_writer :is_canceled

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_free

          sig { params(is_free: T::Boolean).void }
          attr_writer :is_free

          sig { returns(T.nilable(String)) }
          attr_accessor :media_types

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :release_forms

          sig { params(release_forms: T::Array[T.anything]).void }
          attr_writer :release_forms

          sig { returns(T.nilable(Integer)) }
          attr_reader :sent_count

          sig { params(sent_count: Integer).void }
          attr_writer :sent_count

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig { returns(T.nilable(String)) }
          attr_reader :text_cropped

          sig { params(text_cropped: String).void }
          attr_writer :text_cropped

          sig { returns(T.nilable(Integer)) }
          attr_reader :unsend_seconds

          sig { params(unsend_seconds: Integer).void }
          attr_writer :unsend_seconds

          sig { returns(T.nilable(Integer)) }
          attr_reader :viewed_count

          sig { params(viewed_count: Integer).void }
          attr_writer :viewed_count

          sig do
            params(
              id: Integer,
              can_unsend: T::Boolean,
              date: String,
              giphy_id: T.nilable(String),
              has_error: T::Boolean,
              is_canceled: T::Boolean,
              is_free: T::Boolean,
              media_types: T.nilable(String),
              release_forms: T::Array[T.anything],
              sent_count: Integer,
              text: String,
              text_cropped: String,
              unsend_seconds: Integer,
              viewed_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_unsend: nil,
            date: nil,
            giphy_id: nil,
            has_error: nil,
            is_canceled: nil,
            is_free: nil,
            media_types: nil,
            release_forms: nil,
            sent_count: nil,
            text: nil,
            text_cropped: nil,
            unsend_seconds: nil,
            viewed_count: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_unsend: T::Boolean,
                date: String,
                giphy_id: T.nilable(String),
                has_error: T::Boolean,
                is_canceled: T::Boolean,
                is_free: T::Boolean,
                media_types: T.nilable(String),
                release_forms: T::Array[T.anything],
                sent_count: Integer,
                text: String,
                text_cropped: String,
                unsend_seconds: Integer,
                viewed_count: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
