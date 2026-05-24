# typed: strong

module Onlyfansapi
  module Models
    class TrialLinkCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::TrialLinkCreateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::TrialLinkCreateResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::TrialLinkCreateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::TrialLinkCreateResponse::Pagination)
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfansapi::Models::TrialLinkCreateResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(T.nilable(Onlyfansapi::Models::TrialLinkCreateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::TrialLinkCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::TrialLinkCreateResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::TrialLinkCreateResponse::Pagination::OrHash,
          data: Onlyfansapi::Models::TrialLinkCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::TrialLinkCreateResponse::Meta,
            _pagination:
              Onlyfansapi::Models::TrialLinkCreateResponse::Pagination,
            data: Onlyfansapi::Models::TrialLinkCreateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache,
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
                Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits,
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
                Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::TrialLinkCreateResponse::Pagination,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig { params(next_page: T.nilable(String)).returns(T.attached_class) }
        def self.new(next_page: nil)
        end

        sig { override.returns({ next_page: T.nilable(String) }) }
        def to_hash
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::TrialLinkCreateResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(Integer)) }
        attr_reader :claim_counts

        sig { params(claim_counts: Integer).void }
        attr_writer :claim_counts

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :expired_at

        sig { params(expired_at: String).void }
        attr_writer :expired_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_finished

        sig { params(is_finished: T::Boolean).void }
        attr_writer :is_finished

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_counts

        sig { params(subscribe_counts: Integer).void }
        attr_writer :subscribe_counts

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_days

        sig { params(subscribe_days: Integer).void }
        attr_writer :subscribe_days

        sig { returns(T.nilable(String)) }
        attr_reader :trial_link_name

        sig { params(trial_link_name: String).void }
        attr_writer :trial_link_name

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            id: Integer,
            claim_counts: Integer,
            created_at: String,
            expired_at: String,
            is_finished: T::Boolean,
            subscribe_counts: Integer,
            subscribe_days: Integer,
            trial_link_name: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          claim_counts: nil,
          created_at: nil,
          expired_at: nil,
          is_finished: nil,
          subscribe_counts: nil,
          subscribe_days: nil,
          trial_link_name: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              claim_counts: Integer,
              created_at: String,
              expired_at: String,
              is_finished: T::Boolean,
              subscribe_counts: Integer,
              subscribe_days: Integer,
              trial_link_name: String,
              url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
