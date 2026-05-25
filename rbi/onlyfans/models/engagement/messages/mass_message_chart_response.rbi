# typed: strong

module Onlyfans
  module Models
    module Engagement
      module Messages
        class MassMessageChartResponse < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              _meta:
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::OrHash,
              data:
                Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta,
                data:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache,
                  _credits:
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache,
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
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits,
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
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits,
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
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages
                )
              )
            end
            attr_reader :group_messages

            sig do
              params(
                group_messages:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::OrHash
              ).void
            end
            attr_writer :group_messages

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases
                )
              )
            end
            attr_reader :group_messages_purchases

            sig do
              params(
                group_messages_purchases:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::OrHash
              ).void
            end
            attr_writer :group_messages_purchases

            sig do
              params(
                group_messages:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::OrHash,
                group_messages_purchases:
                  Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::OrHash
              ).returns(T.attached_class)
            end
            def self.new(group_messages: nil, group_messages_purchases: nil)
            end

            sig do
              override.returns(
                {
                  group_messages:
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages,
                  group_messages_purchases:
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases
                }
              )
            end
            def to_hash
            end

            class GroupMessages < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart
                    ]
                  )
                )
              end
              attr_reader :chart

              sig do
                params(
                  chart:
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart::OrHash
                    ]
                ).void
              end
              attr_writer :chart

              sig { returns(T.nilable(Float)) }
              attr_reader :delta

              sig { params(delta: Float).void }
              attr_writer :delta

              sig { returns(T.nilable(Integer)) }
              attr_reader :total

              sig { params(total: Integer).void }
              attr_writer :total

              sig do
                params(
                  chart:
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart::OrHash
                    ],
                  delta: Float,
                  total: Integer
                ).returns(T.attached_class)
              end
              def self.new(chart: nil, delta: nil, total: nil)
              end

              sig do
                override.returns(
                  {
                    chart:
                      T::Array[
                        Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart
                      ],
                    delta: Float,
                    total: Integer
                  }
                )
              end
              def to_hash
              end

              class Chart < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :count

                sig { params(count: Integer).void }
                attr_writer :count

                sig { returns(T.nilable(String)) }
                attr_reader :date

                sig { params(date: String).void }
                attr_writer :date

                sig do
                  params(count: Integer, date: String).returns(T.attached_class)
                end
                def self.new(count: nil, date: nil)
                end

                sig { override.returns({ count: Integer, date: String }) }
                def to_hash
                end
              end
            end

            class GroupMessagesPurchases < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart
                    ]
                  )
                )
              end
              attr_reader :chart

              sig do
                params(
                  chart:
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart::OrHash
                    ]
                ).void
              end
              attr_writer :chart

              sig { returns(T.nilable(Float)) }
              attr_reader :delta

              sig { params(delta: Float).void }
              attr_writer :delta

              sig { returns(T.nilable(Integer)) }
              attr_reader :total

              sig { params(total: Integer).void }
              attr_writer :total

              sig do
                params(
                  chart:
                    T::Array[
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart::OrHash
                    ],
                  delta: Float,
                  total: Integer
                ).returns(T.attached_class)
              end
              def self.new(chart: nil, delta: nil, total: nil)
              end

              sig do
                override.returns(
                  {
                    chart:
                      T::Array[
                        Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart
                      ],
                    delta: Float,
                    total: Integer
                  }
                )
              end
              def to_hash
              end

              class Chart < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Float)) }
                attr_reader :count

                sig { params(count: Float).void }
                attr_writer :count

                sig { returns(T.nilable(String)) }
                attr_reader :date

                sig { params(date: String).void }
                attr_writer :date

                sig do
                  params(count: Float, date: String).returns(T.attached_class)
                end
                def self.new(count: nil, date: nil)
                end

                sig { override.returns({ count: Float, date: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
