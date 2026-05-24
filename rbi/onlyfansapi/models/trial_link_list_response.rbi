# typed: strong

module Onlyfansapi
  module Models
    class TrialLinkListResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::TrialLinkListResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::TrialLinkListResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::TrialLinkListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::TrialLinkListResponse::Pagination)
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfansapi::Models::TrialLinkListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(T.nilable(Onlyfansapi::Models::TrialLinkListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::TrialLinkListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::TrialLinkListResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::TrialLinkListResponse::Pagination::OrHash,
          data: Onlyfansapi::Models::TrialLinkListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::TrialLinkListResponse::Meta,
            _pagination: Onlyfansapi::Models::TrialLinkListResponse::Pagination,
            data: Onlyfansapi::Models::TrialLinkListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::TrialLinkListResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache,
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
                Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits,
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
                Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::TrialLinkListResponse::Pagination,
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
              Onlyfansapi::Models::TrialLinkListResponse::Data,
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
              T::Array[Onlyfansapi::Models::TrialLinkListResponse::Data::List]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::OrHash
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
                T::Array[Onlyfansapi::Models::TrialLinkListResponse::Data::List]
            }
          )
        end
        def to_hash
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::TrialLinkListResponse::Data::List,
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

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links
              )
            )
          end
          attr_reader :links

          sig do
            params(
              links:
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::OrHash
            ).void
          end
          attr_writer :links

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue
              )
            )
          end
          attr_reader :revenue

          sig do
            params(
              revenue:
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue::OrHash
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
              created_at: String,
              expired_at: String,
              is_finished: T::Boolean,
              links:
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::OrHash,
              revenue:
                Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue::OrHash,
              subscribe_counts: Integer,
              subscribe_days: Integer,
              trial_link_name: String,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            claim_counts: nil,
            clicks_counts: nil,
            created_at: nil,
            expired_at: nil,
            is_finished: nil,
            links: nil,
            revenue: nil,
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
                clicks_counts: Integer,
                created_at: String,
                expired_at: String,
                is_finished: T::Boolean,
                links:
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links,
                revenue:
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue,
                subscribe_counts: Integer,
                subscribe_days: Integer,
                trial_link_name: String,
                url: String
              }
            )
          end
          def to_hash
          end

          class Links < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related
                )
              )
            end
            attr_reader :related

            sig do
              params(
                related:
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related::OrHash
              ).void
            end
            attr_writer :related

            sig do
              params(
                related:
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related::OrHash
              ).returns(T.attached_class)
            end
            def self.new(related: nil)
            end

            sig do
              override.returns(
                {
                  related:
                    Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related
                }
              )
            end
            def to_hash
            end

            class Related < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related,
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
                  Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue,
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
end
