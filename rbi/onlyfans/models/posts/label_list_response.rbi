# typed: strong

module Onlyfans
  module Models
    module Posts
      class LabelListResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Posts::LabelListResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfans::Models::Posts::LabelListResponse::Meta))
        end
        attr_reader :_meta

        sig do
          params(
            _meta: Onlyfans::Models::Posts::LabelListResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(T.nilable(Onlyfans::Models::Posts::LabelListResponse::Data))
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfans::Models::Posts::LabelListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta: Onlyfans::Models::Posts::LabelListResponse::Meta::OrHash,
            data: Onlyfans::Models::Posts::LabelListResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::Posts::LabelListResponse::Meta,
              data: Onlyfans::Models::Posts::LabelListResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Posts::LabelListResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Onlyfans::Models::Posts::LabelListResponse::Meta::Cache)
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Posts::LabelListResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Posts::LabelListResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Posts::LabelListResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Posts::LabelListResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Posts::LabelListResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache: Onlyfans::Models::Posts::LabelListResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Posts::LabelListResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Posts::LabelListResponse::Meta::Cache,
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
                  Onlyfans::Models::Posts::LabelListResponse::Meta::Credits,
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
                  Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits,
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
                Onlyfans::Models::Posts::LabelListResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :hash_sort

          sig { params(hash_sort: String).void }
          attr_writer :hash_sort

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_more

          sig { params(has_more: T::Boolean).void }
          attr_writer :has_more

          sig do
            returns(
              T.nilable(
                T::Array[Onlyfans::Models::Posts::LabelListResponse::Data::List]
              )
            )
          end
          attr_reader :list

          sig do
            params(
              list:
                T::Array[
                  Onlyfans::Models::Posts::LabelListResponse::Data::List::OrHash
                ]
            ).void
          end
          attr_writer :list

          sig { returns(T.nilable(Integer)) }
          attr_reader :next_offset

          sig { params(next_offset: Integer).void }
          attr_writer :next_offset

          sig { returns(T.nilable(String)) }
          attr_reader :order

          sig { params(order: String).void }
          attr_writer :order

          sig { returns(T.nilable(String)) }
          attr_reader :sort

          sig { params(sort: String).void }
          attr_writer :sort

          sig do
            params(
              hash_sort: String,
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfans::Models::Posts::LabelListResponse::Data::List::OrHash
                ],
              next_offset: Integer,
              order: String,
              sort: String
            ).returns(T.attached_class)
          end
          def self.new(
            hash_sort: nil,
            has_more: nil,
            list: nil,
            next_offset: nil,
            order: nil,
            sort: nil
          )
          end

          sig do
            override.returns(
              {
                hash_sort: String,
                has_more: T::Boolean,
                list:
                  T::Array[
                    Onlyfans::Models::Posts::LabelListResponse::Data::List
                  ],
                next_offset: Integer,
                order: String,
                sort: String
              }
            )
          end
          def to_hash
          end

          class List < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Posts::LabelListResponse::Data::List,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_clear_in_progress

            sig { params(is_clear_in_progress: T::Boolean).void }
            attr_writer :is_clear_in_progress

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :posts

            sig { params(posts: T::Array[T.anything]).void }
            attr_writer :posts

            sig { returns(T.nilable(Integer)) }
            attr_reader :posts_count

            sig { params(posts_count: Integer).void }
            attr_writer :posts_count

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: String,
                is_clear_in_progress: T::Boolean,
                name: String,
                posts: T::Array[T.anything],
                posts_count: Integer,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              is_clear_in_progress: nil,
              name: nil,
              posts: nil,
              posts_count: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  is_clear_in_progress: T::Boolean,
                  name: String,
                  posts: T::Array[T.anything],
                  posts_count: Integer,
                  type: String
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
