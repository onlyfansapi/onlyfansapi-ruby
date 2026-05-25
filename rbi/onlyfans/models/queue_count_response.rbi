# typed: strong

module Onlyfans
  module Models
    class QueueCountResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::QueueCountResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::QueueCountResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(_meta: Onlyfans::Models::QueueCountResponse::Meta::OrHash).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfans::Models::QueueCountResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfans::Models::QueueCountResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::QueueCountResponse::Meta::OrHash,
          data: Onlyfans::Models::QueueCountResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::QueueCountResponse::Meta,
            data: Onlyfans::Models::QueueCountResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::QueueCountResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfans::Models::QueueCountResponse::Meta::Cache))
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfans::Models::QueueCountResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::QueueCountResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::QueueCountResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfans::Models::QueueCountResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::QueueCountResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache: Onlyfans::Models::QueueCountResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::QueueCountResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::QueueCountResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::QueueCountResponse::Meta::Cache,
              _credits: Onlyfans::Models::QueueCountResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::QueueCountResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::QueueCountResponse::Meta::Cache,
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
                Onlyfans::Models::QueueCountResponse::Meta::Credits,
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
                Onlyfans::Models::QueueCountResponse::Meta::RateLimits,
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
              Onlyfans::Models::QueueCountResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfans::Models::QueueCountResponse::Data::List))
        end
        attr_reader :list

        sig do
          params(
            list: Onlyfans::Models::QueueCountResponse::Data::List::OrHash
          ).void
        end
        attr_writer :list

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :sync_in_process

        sig { params(sync_in_process: T::Boolean).void }
        attr_writer :sync_in_process

        sig do
          params(
            list: Onlyfans::Models::QueueCountResponse::Data::List::OrHash,
            sync_in_process: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(list: nil, sync_in_process: nil)
        end

        sig do
          override.returns(
            {
              list: Onlyfans::Models::QueueCountResponse::Data::List,
              sync_in_process: T::Boolean
            }
          )
        end
        def to_hash
        end

        class List < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::QueueCountResponse::Data::List,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01
              )
            )
          end
          attr_reader :number_2025_01_01

          sig do
            params(
              number_2025_01_01:
                Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01::OrHash
            ).void
          end
          attr_writer :number_2025_01_01

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02
              )
            )
          end
          attr_reader :number_2025_01_02

          sig do
            params(
              number_2025_01_02:
                Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02::OrHash
            ).void
          end
          attr_writer :number_2025_01_02

          sig do
            params(
              number_2025_01_01:
                Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01::OrHash,
              number_2025_01_02:
                Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02::OrHash
            ).returns(T.attached_class)
          end
          def self.new(number_2025_01_01: nil, number_2025_01_02: nil)
          end

          sig do
            override.returns(
              {
                number_2025_01_01:
                  Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01,
                number_2025_01_02:
                  Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02
              }
            )
          end
          def to_hash
          end

          class Const2025_01_01 < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :post

            sig { params(post: Integer).void }
            attr_writer :post

            sig { params(post: Integer).returns(T.attached_class) }
            def self.new(post: nil)
            end

            sig { override.returns({ post: Integer }) }
            def to_hash
            end
          end

          class Const2025_01_02 < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :chat

            sig { params(chat: Integer).void }
            attr_writer :chat

            sig { returns(T.nilable(Integer)) }
            attr_reader :post

            sig { params(post: Integer).void }
            attr_writer :post

            sig do
              params(chat: Integer, post: Integer).returns(T.attached_class)
            end
            def self.new(chat: nil, post: nil)
            end

            sig { override.returns({ chat: Integer, post: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
