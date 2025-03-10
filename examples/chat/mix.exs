defmodule Chat.MixProject do
  use Mix.Project

  def project do
    [
      app: :chat,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Chat, []}
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.15.0"},
      {:bandit, "~> 1.2.0"},
      {:websock_adapter, "~> 0.5.0"},
      {:jason, "~> 1.4.0"},
      {:ex_webrtc, path: "../../."},
      {:ex_sctp, github: "elixir-webrtc/ex_sctp"}
    ]
  end
end
