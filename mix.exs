defmodule EcstaticDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecstatic_demo,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {EcstaticDemo.Application, []},
      extra_applications: [:logger],
      start_phases: [ configure: []]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      #{:ecstatic, git: "https://github.com/notproperlycut/ecstatic.git", branch: "bootstrap/handlers"}
      {:ecstatic, path: "../ecstatic"}
    ]
  end

  defp aliases do
    [
      up: ["ecstatic.up"],
      down: ["ecstatic.down"],
    ]
  end
end
