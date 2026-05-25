# typed: strong

module Onlyfans
  module Models
    class SubscriberRetrieveStatisticsResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::OrHash,
          data:
            Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta,
            data: Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache,
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
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits,
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
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits,
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
              Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Float)) }
        attr_reader :delta

        sig { params(delta: Float).void }
        attr_writer :delta

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning
              ]
            )
          )
        end
        attr_reader :earnings

        sig do
          params(
            earnings:
              T::Array[
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning::OrHash
              ]
          ).void
        end
        attr_writer :earnings

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribers

        sig { params(subscribers: Integer).void }
        attr_writer :subscribers

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe
              ]
            )
          )
        end
        attr_reader :subscribes

        sig do
          params(
            subscribes:
              T::Array[
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe::OrHash
              ]
          ).void
        end
        attr_writer :subscribes

        sig { returns(T.nilable(Float)) }
        attr_reader :total

        sig { params(total: Float).void }
        attr_writer :total

        sig do
          params(
            delta: Float,
            earnings:
              T::Array[
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning::OrHash
              ],
            subscribers: Integer,
            subscribes:
              T::Array[
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe::OrHash
              ],
            total: Float
          ).returns(T.attached_class)
        end
        def self.new(
          delta: nil,
          earnings: nil,
          subscribers: nil,
          subscribes: nil,
          total: nil
        )
        end

        sig do
          override.returns(
            {
              delta: Float,
              earnings:
                T::Array[
                  Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning
                ],
              subscribers: Integer,
              subscribes:
                T::Array[
                  Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe
                ],
              total: Float
            }
          )
        end
        def to_hash
        end

        class Earning < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :count

          sig { params(count: Float).void }
          attr_writer :count

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { params(count: Float, date: String).returns(T.attached_class) }
          def self.new(count: nil, date: nil)
          end

          sig { override.returns({ count: Float, date: String }) }
          def to_hash
          end
        end

        class Subscribe < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :count

          sig { params(count: Integer).void }
          attr_writer :count

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { params(count: Integer, date: String).returns(T.attached_class) }
          def self.new(count: nil, date: nil)
          end

          sig { override.returns({ count: Integer, date: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
