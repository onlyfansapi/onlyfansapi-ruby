# typed: strong

module Onlyfansapi
  module Models
    class TrialLinkRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::TrialLinkRetrieveResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::TrialLinkRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::OrHash,
          data: Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta,
            data: Onlyfansapi::Models::TrialLinkRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache,
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
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits,
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
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

          sig { returns(T.nilable(String)) }
          attr_accessor :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: T.nilable(String),
              limit_minute: Integer,
              notice: String,
              remaining_day: T.nilable(String),
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            notice: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: T.nilable(String),
                limit_minute: Integer,
                notice: String,
                remaining_day: T.nilable(String),
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
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data,
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :clicks_counts

        sig { params(clicks_counts: Integer).void }
        attr_writer :clicks_counts

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost
            )
          )
        end
        attr_reader :cost

        sig do
          params(
            cost:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost::OrHash
          ).void
        end
        attr_writer :cost

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :expired_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_finished

        sig { params(is_finished: T::Boolean).void }
        attr_writer :is_finished

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links
            )
          )
        end
        attr_reader :links

        sig do
          params(
            links:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::OrHash
          ).void
        end
        attr_writer :links

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue
            )
          )
        end
        attr_reader :revenue

        sig do
          params(
            revenue:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue::OrHash
          ).void
        end
        attr_writer :revenue

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_counts

        sig { params(subscribe_counts: Integer).void }
        attr_writer :subscribe_counts

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_days

        sig { params(subscribe_days: Integer).void }
        attr_writer :subscribe_days

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

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
            clicks_counts: Integer,
            cost:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost::OrHash,
            created_at: String,
            expired_at: T.nilable(String),
            is_finished: T::Boolean,
            links:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::OrHash,
            revenue:
              Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue::OrHash,
            subscribe_counts: Integer,
            subscribe_days: Integer,
            tags: T::Array[String],
            trial_link_name: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          claim_counts: nil,
          clicks_counts: nil,
          cost: nil,
          created_at: nil,
          expired_at: nil,
          is_finished: nil,
          links: nil,
          revenue: nil,
          subscribe_counts: nil,
          subscribe_days: nil,
          tags: nil,
          trial_link_name: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              claim_counts: Integer,
              clicks_counts: Integer,
              cost: Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost,
              created_at: String,
              expired_at: T.nilable(String),
              is_finished: T::Boolean,
              links:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links,
              revenue:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue,
              subscribe_counts: Integer,
              subscribe_days: Integer,
              tags: T::Array[String],
              trial_link_name: String,
              url: String
            }
          )
        end
        def to_hash
        end

        class Cost < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost,
                Onlyfansapi::Internal::AnyHash
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

        class Links < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related
              )
            )
          end
          attr_reader :related

          sig do
            params(
              related:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related::OrHash
            ).void
          end
          attr_writer :related

          sig do
            params(
              related:
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related::OrHash
            ).returns(T.attached_class)
          end
          def self.new(related: nil)
          end

          sig do
            override.returns(
              {
                related:
                  Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related
              }
            )
          end
          def to_hash
          end

          class Related < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :subscribers

            sig { params(subscribers: String).void }
            attr_writer :subscribers

            sig { params(subscribers: String).returns(T.attached_class) }
            def self.new(subscribers: nil)
            end

            sig { override.returns({ subscribers: String }) }
            def to_hash
            end
          end
        end

        class Revenue < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :calculated_at

          sig { params(calculated_at: String).void }
          attr_writer :calculated_at

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_loading

          sig { params(is_loading: T::Boolean).void }
          attr_writer :is_loading

          sig { returns(T.nilable(Float)) }
          attr_reader :revenue_per_subscriber

          sig { params(revenue_per_subscriber: Float).void }
          attr_writer :revenue_per_subscriber

          sig { returns(T.nilable(Integer)) }
          attr_reader :spenders_count

          sig { params(spenders_count: Integer).void }
          attr_writer :spenders_count

          sig { returns(T.nilable(Float)) }
          attr_reader :total

          sig { params(total: Float).void }
          attr_writer :total

          sig do
            params(
              calculated_at: String,
              is_loading: T::Boolean,
              revenue_per_subscriber: Float,
              spenders_count: Integer,
              total: Float
            ).returns(T.attached_class)
          end
          def self.new(
            calculated_at: nil,
            is_loading: nil,
            revenue_per_subscriber: nil,
            spenders_count: nil,
            total: nil
          )
          end

          sig do
            override.returns(
              {
                calculated_at: String,
                is_loading: T::Boolean,
                revenue_per_subscriber: Float,
                spenders_count: Integer,
                total: Float
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
