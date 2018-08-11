defmodule DocumentGenerator.Factories.ResumeFactory do
  alias DocumentGenerator.Documents.Resume

  defmacro __using__(_opts) do
    quote do
      def resume_factory do
        %Resume{
          interests: "I'm interested in rock climbing",
          languages: "Polish (native), English (proficient)",
          programming_languages: "Elixir, Ruby, C#, JavaScript",
          technologies: "Rails, Phoenix, React, ElasticSearch, Websockets, Docker"
        }
      end
    end
  end
end
