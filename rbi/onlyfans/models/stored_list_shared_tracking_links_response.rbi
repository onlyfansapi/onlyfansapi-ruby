# typed: strong

module Onlyfans
  module Models
    class StoredListSharedTrackingLinksResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::StoredListSharedTrackingLinksResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination
          )
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::OrHash,
          _pagination:
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination::OrHash,
          data:
            Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta,
            _pagination:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination,
            data: Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache,
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
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits,
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
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
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

      class Pagination < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig { returns(T.nilable(String)) }
        attr_accessor :notice

        sig do
          params(
            next_page: T.nilable(String),
            notice: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(next_page: nil, notice: nil)
        end

        sig do
          override.returns(
            { next_page: T.nilable(String), notice: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data,
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
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List
              ]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::OrHash
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
                  Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List
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
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List,
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

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_accessor :end_date

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_deleted

          sig { params(is_deleted: T::Boolean).void }
          attr_writer :is_deleted

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner
              )
            )
          end
          attr_reader :owner

          sig do
            params(
              owner:
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner::OrHash
            ).void
          end
          attr_writer :owner

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribers_count

          sig { params(subscribers_count: Integer).void }
          attr_writer :subscribers_count

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :tags

          sig { params(tags: T::Array[T.anything]).void }
          attr_writer :tags

          sig do
            params(
              id: Integer,
              campaign_code: Integer,
              campaign_name: String,
              campaign_url: String,
              clicks_count: Integer,
              created_at: String,
              end_date: T.nilable(String),
              is_deleted: T::Boolean,
              owner:
                Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner::OrHash,
              subscribers_count: Integer,
              tags: T::Array[T.anything]
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            campaign_code: nil,
            campaign_name: nil,
            campaign_url: nil,
            clicks_count: nil,
            created_at: nil,
            end_date: nil,
            is_deleted: nil,
            owner: nil,
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
                created_at: String,
                end_date: T.nilable(String),
                is_deleted: T::Boolean,
                owner:
                  Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner,
                subscribers_count: Integer,
                tags: T::Array[T.anything]
              }
            )
          end
          def to_hash
          end

          class Owner < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :avatar_thumb_url

            sig { params(avatar_thumb_url: String).void }
            attr_writer :avatar_thumb_url

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :username

            sig { params(username: String).void }
            attr_writer :username

            sig do
              params(
                id: Integer,
                avatar_thumb_url: String,
                name: String,
                username: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              avatar_thumb_url: nil,
              name: nil,
              username: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  avatar_thumb_url: String,
                  name: String,
                  username: String
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
