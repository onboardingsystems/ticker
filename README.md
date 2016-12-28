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
