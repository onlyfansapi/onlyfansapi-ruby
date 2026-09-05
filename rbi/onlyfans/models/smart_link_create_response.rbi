# typed: strong

module Onlyfans
  module Models
    class SmartLinkCreateResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkCreateResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::SmartLinkCreateResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkCreateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfans::Models::SmartLinkCreateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::SmartLinkCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkCreateResponse::Meta::OrHash,
          data: Onlyfans::Models::SmartLinkCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkCreateResponse::Meta,
            data: Onlyfans::Models::SmartLinkCreateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkCreateResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::SmartLinkCreateResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkCreateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::SmartLinkCreateResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkCreateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkCreateResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::SmartLinkCreateResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkCreateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkCreateResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::SmartLinkCreateResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::SmartLinkCreateResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkCreateResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::SmartLinkCreateResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkCreateResponse::Meta::Cache,
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
                Onlyfans::Models::SmartLinkCreateResponse::Meta::Credits,
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
                Onlyfans::Models::SmartLinkCreateResponse::Meta::RateLimits,
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
              Onlyfans::Models::SmartLinkCreateResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(Onlyfans::Models::SmartLinkCreateResponse::Data::Account)
          )
        end
        attr_reader :account

        sig do
          params(
            account:
              Onlyfans::Models::SmartLinkCreateResponse::Data::Account::OrHash
          ).void
        end
        attr_writer :account

        sig { returns(T.nilable(Integer)) }
        attr_reader :clicks_count

        sig { params(clicks_count: Integer).void }
        attr_writer :clicks_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :conversions_count

        sig { params(conversions_count: Integer).void }
        attr_writer :conversions_count

        sig do
          returns(
            T.nilable(Onlyfans::Models::SmartLinkCreateResponse::Data::Cost)
          )
        end
        attr_reader :cost

        sig do
          params(
            cost: Onlyfans::Models::SmartLinkCreateResponse::Data::Cost::OrHash
          ).void
        end
        attr_writer :cost

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :free_trial_days

        sig { params(free_trial_days: Integer).void }
        attr_writer :free_trial_days

        sig { returns(T.nilable(String)) }
        attr_reader :link_type

        sig { params(link_type: String).void }
        attr_writer :link_type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :revenue

        sig { params(revenue: String).void }
        attr_writer :revenue

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribers_count

        sig { params(subscribers_count: Integer).void }
        attr_writer :subscribers_count

        sig { returns(T.nilable(String)) }
        attr_reader :traffic_redirect_url

        sig { params(traffic_redirect_url: String).void }
        attr_writer :traffic_redirect_url

        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            account:
              Onlyfans::Models::SmartLinkCreateResponse::Data::Account::OrHash,
            clicks_count: Integer,
            conversions_count: Integer,
            cost: Onlyfans::Models::SmartLinkCreateResponse::Data::Cost::OrHash,
            created_at: String,
            free_trial_days: Integer,
            link_type: String,
            name: String,
            revenue: String,
            subscribers_count: Integer,
            traffic_redirect_url: String,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          account: nil,
          clicks_count: nil,
          conversions_count: nil,
          cost: nil,
          created_at: nil,
          free_trial_days: nil,
          link_type: nil,
          name: nil,
          revenue: nil,
          subscribers_count: nil,
          traffic_redirect_url: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              account: Onlyfans::Models::SmartLinkCreateResponse::Data::Account,
              clicks_count: Integer,
              conversions_count: Integer,
              cost: Onlyfans::Models::SmartLinkCreateResponse::Data::Cost,
              created_at: String,
              free_trial_days: Integer,
              link_type: String,
              name: String,
              revenue: String,
              subscribers_count: Integer,
              traffic_redirect_url: String,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Account < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkCreateResponse::Data::Account,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          sig do
            params(id: String, display_name: String, username: String).returns(
              T.attached_class
            )
          end
          def self.new(id: nil, display_name: nil, username: nil)
          end

          sig do
            override.returns(
              { id: String, display_name: String, username: String }
            )
          end
          def to_hash
          end
        end

        class Cost < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkCreateResponse::Data::Cost,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :click_source_count

          sig { params(click_source_count: Integer).void }
          attr_writer :click_source_count

          sig { returns(T.nilable(String)) }
          attr_accessor :input_mode

          sig { returns(T.nilable(String)) }
          attr_accessor :input_value

          sig { returns(T.nilable(String)) }
          attr_accessor :per_click

          sig { returns(T.nilable(String)) }
          attr_accessor :per_promo

          sig { returns(T.nilable(String)) }
          attr_accessor :per_sub

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscriber_source_count

          sig { params(subscriber_source_count: Integer).void }
          attr_writer :subscriber_source_count

          sig do
            params(
              click_source_count: Integer,
              input_mode: T.nilable(String),
              input_value: T.nilable(String),
              per_click: T.nilable(String),
              per_promo: T.nilable(String),
              per_sub: T.nilable(String),
              subscriber_source_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            click_source_count: nil,
            input_mode: nil,
            input_value: nil,
            per_click: nil,
            per_promo: nil,
            per_sub: nil,
            subscriber_source_count: nil
          )
          end

          sig do
            override.returns(
              {
                click_source_count: Integer,
                input_mode: T.nilable(String),
                input_value: T.nilable(String),
                per_click: T.nilable(String),
                per_promo: T.nilable(String),
                per_sub: T.nilable(String),
                subscriber_source_count: Integer
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
