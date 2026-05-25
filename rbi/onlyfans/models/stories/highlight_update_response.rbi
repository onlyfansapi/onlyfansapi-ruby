# typed: strong

module Onlyfans
  module Models
    module Stories
      class HighlightUpdateResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Stories::HighlightUpdateResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::Stories::HighlightUpdateResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfans::Models::Stories::HighlightUpdateResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Onlyfans::Models::Stories::HighlightUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::OrHash,
            data:
              Onlyfans::Models::Stories::HighlightUpdateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::Stories::HighlightUpdateResponse::Meta,
              data: Onlyfans::Models::Stories::HighlightUpdateResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache,
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
                  Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits,
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
              override.returns(
                { balance: Integer, note: String, used: Integer }
              )
            end
            def to_hash
            end
          end

          class RateLimits < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits,
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

        class Data < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Stories::HighlightUpdateResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :cover

          sig { params(cover: String).void }
          attr_writer :cover

          sig { returns(T.nilable(Integer)) }
          attr_reader :cover_story_id

          sig { params(cover_story_id: Integer).void }
          attr_writer :cover_story_id

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :stories_count

          sig { params(stories_count: Integer).void }
          attr_writer :stories_count

          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig { returns(T.nilable(Integer)) }
          attr_reader :user_id

          sig { params(user_id: Integer).void }
          attr_writer :user_id

          sig do
            params(
              id: Integer,
              cover: String,
              cover_story_id: Integer,
              created_at: String,
              stories_count: Integer,
              title: String,
              user_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            cover: nil,
            cover_story_id: nil,
            created_at: nil,
            stories_count: nil,
            title: nil,
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                cover: String,
                cover_story_id: Integer,
                created_at: String,
                stories_count: Integer,
                title: String,
                user_id: Integer
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
