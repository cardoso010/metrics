import Config

config :metrics, Metrics.PromEx,
  disabled: false,
  manual_metrics_start_delay: :no_delay,
  drop_metrics_groups: [],
  grafana: :disabled,
  metrics_server: :disabled,
  metrics_server: [
    port: 4021,
    # This is an optional setting and will default to `"/metrics"`
    path: "/metrics",
    # This is an optional setting and will default to `:http`
    protocol: :http,
    # This is an optional setting and will default to `5`
    pool_size: 5,
    # This is an optional setting and will default to `[]`
    cowboy_opts: [],
    # This is an optional and will default to `:none`
    auth_strategy: :none
  ]
