# typed: strong

module Onlyfansapi
  module Models
    class SharedTrialLinkListResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::SharedTrialLinkListResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::SharedTrialLinkListResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination
          )
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::SharedTrialLinkListResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::SharedTrialLinkListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination::OrHash,
          data: Onlyfansapi::Models::SharedTrialLinkListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::SharedTrialLinkListResponse::Meta,
            _pagination:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination,
            data: Onlyfansapi::Models::SharedTrialLinkListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache,
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
                Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits,
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
                Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits,
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

      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination,
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
              Onlyfansapi::Models::SharedTrialLinkListResponse::Data,
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
              T::Array[
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List
              ]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::OrHash
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
                  Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List
                ]
            }
          )
        end
        def to_hash
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List,
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
          attr_accessor :expired_at

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_finished

          sig { params(is_finished: T::Boolean).void }
          attr_writer :is_finished

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner
              )
            )
          end
          attr_reader :owner

          sig do
            params(
              owner:
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner::OrHash
            ).void
          end
          attr_writer :owner

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribe_counts

          sig { params(subscribe_counts: Integer).void }
          attr_writer :subscribe_counts

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribe_days

          sig { params(subscribe_days: Integer).void }
          attr_writer :subscribe_days

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :tags

          sig { params(tags: T::Array[T.anything]).void }
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
              created_at: String,
              expired_at: T.nilable(String),
              is_finished: T::Boolean,
              owner:
                Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner::OrHash,
              subscribe_counts: Integer,
              subscribe_days: Integer,
              tags: T::Array[T.anything],
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
            owner: nil,
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
                created_at: String,
                expired_at: T.nilable(String),
                is_finished: T::Boolean,
                owner:
                  Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner,
                subscribe_counts: Integer,
                subscribe_days: Integer,
                tags: T::Array[T.anything],
                trial_link_name: String,
                url: String
              }
            )
          end
          def to_hash
          end

          class Owner < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner,
                  Onlyfansapi::Internal::AnyHash
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
