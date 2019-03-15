use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :document_generator, DocumentGeneratorWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :document_generator, DocumentGenerator.Repo,
  username: "postgres",
  password: "postgres",
  database: "document_generator_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
