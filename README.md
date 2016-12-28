# Ticker

[![Build Status](https://semaphoreci.com/api/v1/onboarding-systems/ticker/branches/master/shields_badge.svg)](https://semaphoreci.com/onboarding-systems/ticker)

Timer to schedule jobs in small intervals.

## Installation

The package can be installed as:

  1. Add `ticker` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ticker, "~> 0.0.1"}]
    end
    ```

  2. Ensure `ticker` is started before your application:

    ```elixir
    def application do
      [applications: [:ticker]]
    end
    ```

  3. Add ticker to your supervised worker list

    Module is the module you want to call.
    Function is the function on the module you want to call.
    Interval is the interval in milliseconds that you want this function repeatedly called.
    This example is every 30 seconds.

    ```elixir
    children = [
      worker(Ticker, [%{module: SomeWorker, function: :work, interval: 30_000}])
    ]
    opts = [strategy: :one_for_one, name: MyApp.Supervisor]
    Supervisor.start_link(children, opts)
    ```
