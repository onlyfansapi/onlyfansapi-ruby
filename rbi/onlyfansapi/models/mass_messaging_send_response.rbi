# typed: strong

module Onlyfansapi
  module Models
    class MassMessagingSendResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::MassMessagingSendResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::MassMessagingSendResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::MassMessagingSendResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::MassMessagingSendResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::MassMessagingSendResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::MassMessagingSendResponse::Meta::OrHash,
          data: Onlyfansapi::Models::MassMessagingSendResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::MassMessagingSendResponse::Meta,
            data: Onlyfansapi::Models::MassMessagingSendResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::MassMessagingSendResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::MassMessagingSendResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::MassMessagingSendResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::MassMessagingSendResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::MassMessagingSendResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MassMessagingSendResponse::Meta::Cache,
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
                Onlyfansapi::Models::MassMessagingSendResponse::Meta::Credits,
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
                Onlyfansapi::Models::MassMessagingSendResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::MassMessagingSendResponse::Data,
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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_error

        sig { params(has_error: T::Boolean).void }
        attr_writer :has_error

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_canceled

        sig { params(is_canceled: T::Boolean).void }
        attr_writer :is_canceled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_couple_people_media

        sig { params(is_couple_people_media: T::Boolean).void }
        attr_writer :is_couple_people_media

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_done

        sig { params(is_done: T::Boolean).void }
        attr_writer :is_done

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ready

        sig { params(is_ready: T::Boolean).void }
        attr_writer :is_ready

        sig { returns(T.nilable(Integer)) }
        attr_reader :pending

        sig { params(pending: Integer).void }
        attr_writer :pending

        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig { returns(T.nilable(Integer)) }
        attr_reader :unsend_seconds

        sig { params(unsend_seconds: Integer).void }
        attr_writer :unsend_seconds

        sig do
          params(
            id: Integer,
            can_unsend: T::Boolean,
            date: String,
            has_error: T::Boolean,
            is_canceled: T::Boolean,
            is_couple_people_media: T::Boolean,
            is_done: T::Boolean,
            is_ready: T::Boolean,
            pending: Integer,
            total: Integer,
            unsend_seconds: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          can_unsend: nil,
          date: nil,
          has_error: nil,
          is_canceled: nil,
          is_couple_people_media: nil,
          is_done: nil,
          is_ready: nil,
          pending: nil,
          total: nil,
          unsend_seconds: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              can_unsend: T::Boolean,
              date: String,
              has_error: T::Boolean,
              is_canceled: T::Boolean,
              is_couple_people_media: T::Boolean,
              is_done: T::Boolean,
              is_ready: T::Boolean,
              pending: Integer,
              total: Integer,
              unsend_seconds: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
