defmodule ResumeGenerator.Factories.UserFactory do
  alias ResumeGenerator.Accounts.User

  defmacro __using__(_opts) do
    quote do
      def user_factory do
        %User{
          uuid: UUID.uuid4(),
          name: "Tester Test",
          email: "tester@example.com"
        }
      end
    end
  end
end
