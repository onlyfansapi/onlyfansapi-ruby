# typed: strong

module Onlyfans
  module Models
    class StoredListTrackingLinksResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::StoredListTrackingLinksResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfans::Models::StoredListTrackingLinksResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::StoredListTrackingLinksResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::StoredListTrackingLinksResponse::Pagination
          )
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfans::Models::StoredListTrackingLinksResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(
          T.nilable(Onlyfans::Models::StoredListTrackingLinksResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::StoredListTrackingLinksResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::StoredListTrackingLinksResponse::Meta::OrHash,
          _pagination:
            Onlyfans::Models::StoredListTrackingLinksResponse::Pagination::OrHash,
          data: Onlyfans::Models::StoredListTrackingLinksResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::StoredListTrackingLinksResponse::Meta,
            _pagination:
              Onlyfans::Models::StoredListTrackingLinksResponse::Pagination,
            data: Onlyfans::Models::StoredListTrackingLinksResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::StoredListTrackingLinksResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::StoredListTrackingLinksResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Cache,
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
                Onlyfans::Models::StoredListTrackingLinksResponse::Meta::Credits,
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
                Onlyfans::Models::StoredListTrackingLinksResponse::Meta::RateLimits,
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

      class Pagination < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoredListTrackingLinksResponse::Pagination,
              Onlyfans::Internal::AnyHash
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

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoredListTrackingLinksResponse::Data,
              Onlyfans::Internal::AnyHash
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
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List
              ]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::OrHash
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
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List
                ]
            }
          )
        end
        def to_hash
        end

        class List < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(Integer)) }
          attr_reader :campaign_code

          sig { params(campaign_code: Integer).void }
          attr_writer :campaign_code

          sig { returns(T.nilable(String)) }
          attr_reader :campaign_name

          sig { params(campaign_name: String).void }
          attr_writer :campaign_name

          sig { returns(T.nilable(String)) }
          attr_reader :campaign_url

          sig { params(campaign_url: String).void }
          attr_writer :campaign_url

          sig { returns(T.nilable(Integer)) }
          attr_reader :clicks_count

          sig { params(clicks_count: Integer).void }
          attr_writer :clicks_count

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Cost
              )
            )
          end
          attr_reader :cost

          sig do
            params(
              cost:
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Cost::OrHash
            ).void
          end
          attr_writer :cost

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links
              )
            )
          end
          attr_reader :links

          sig do
            params(
              links:
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::OrHash
            ).void
          end
          attr_writer :links

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Revenue
              )
            )
          end
          attr_reader :revenue

          sig do
            params(
              revenue:
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Revenue::OrHash
            ).void
          end
          attr_writer :revenue

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribers_count

          sig { params(subscribers_count: Integer).void }
          attr_writer :subscribers_count

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tags

          sig { params(tags: T::Array[String]).void }
          attr_writer :tags

          sig do
            params(
              id: Integer,
              campaign_code: Integer,
              campaign_name: String,
              campaign_url: String,
              clicks_count: Integer,
              cost:
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Cost::OrHash,
              created_at: String,
              end_date: T.nilable(String),
              links:
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::OrHash,
              revenue:
                Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Revenue::OrHash,
              subscribers_count: Integer,
              tags: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            campaign_code: nil,
            campaign_name: nil,
            campaign_url: nil,
            clicks_count: nil,
            cost: nil,
            created_at: nil,
            end_date: nil,
            links: nil,
            revenue: nil,
            subscribers_count: nil,
            tags: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                campaign_code: Integer,
                campaign_name: String,
                campaign_url: String,
                clicks_count: Integer,
                cost:
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Cost,
                created_at: String,
                end_date: T.nilable(String),
                links:
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links,
                revenue:
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Revenue,
                subscribers_count: Integer,
                tags: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class Cost < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Cost,
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

          class Links < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::Related
                )
              )
            end
            attr_reader :related

            sig do
              params(
                related:
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::Related::OrHash
              ).void
            end
            attr_writer :related

            sig do
              params(
                related:
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::Related::OrHash
              ).returns(T.attached_class)
            end
            def self.new(related: nil)
            end

            sig do
              override.returns(
                {
                  related:
                    Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::Related
                }
              )
            end
            def to_hash
            end

            class Related < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Links::Related,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :spenders

              sig { params(spenders: String).void }
              attr_writer :spenders

              sig { returns(T.nilable(String)) }
              attr_reader :subscribers

              sig { params(subscribers: String).void }
              attr_writer :subscribers

              sig do
                params(spenders: String, subscribers: String).returns(
                  T.attached_class
                )
              end
              def self.new(spenders: nil, subscribers: nil)
              end

              sig do
                override.returns({ spenders: String, subscribers: String })
              end
              def to_hash
              end
            end
          end

          class Revenue < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoredListTrackingLinksResponse::Data::List::Revenue,
                  Onlyfans::Internal::AnyHash
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
            attr_reader :revenue_per_click

            sig { params(revenue_per_click: Float).void }
            attr_writer :revenue_per_click

            sig { returns(T.nilable(Integer)) }
            attr_reader :revenue_per_subscriber

            sig { params(revenue_per_subscriber: Integer).void }
            attr_writer :revenue_per_subscriber

            sig { returns(T.nilable(Integer)) }
            attr_reader :spenders_count

            sig { params(spenders_count: Integer).void }
            attr_writer :spenders_count

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(
                calculated_at: String,
                is_loading: T::Boolean,
                revenue_per_click: Float,
                revenue_per_subscriber: Integer,
                spenders_count: Integer,
                total: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              calculated_at: nil,
              is_loading: nil,
              revenue_per_click: nil,
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
                  revenue_per_click: Float,
                  revenue_per_subscriber: Integer,
                  spenders_count: Integer,
                  total: Integer
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
