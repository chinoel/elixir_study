# 컴포지션
# 모듈 구조체 만드는 건 아니 이제 그 안에 기능들을 컴포지션을 사용해 추가하는 법을 배워보죠

# alias
# 모듈에 별칭을 만들 수 있어요
defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greetings, as: Hi

  def greeting(name), do: Hi.basic(name)
end

defmodule Examples do
  def greeting(name), do: Sayings.Greetings.basic(name)
end

# 함수랑 매크로 불러올때는 import~
import List
IO.puts(last([1, 2, 3]))

# 뒤에 only 붙이면 선택해서 가져올 수도 있어요
# import List, only: [last: 1]
# 반대로 빼려면 except

# require
# 어떤 모듈이 필요하다고 선언하면 컴파일 한 뒤 불러오게 됩니다.

# use
# 현재 모듈의 정의를 다른 모듈이 수정할 수 있게 합니다.
defmodule Hello do
  defmacro __using__(_opts) do
    quote do
      def hello(name), do: "Hi, #{name}"
    end
  end
end

defmodule Example do
  use Hello
end

IO.puts(Example.hello("test"))
# 대충 재정의 됬다고 경고 터지긴하는데 문제 없음

defmodule Hello do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")

    quote do
      def hello(name), do: unquote(greeting) <> ", " <> name
    end
  end
end

defmodule Example do
  use Hello, greeting: "Hola"
end

# 이제 이 짓거리 하면 Hi가 Hola로 바껴서 나옵니다.


# 마지막 Mix 하고 엘릭서 복기 마치고 피닉스로 백엔드 박치기하러 갑니다.
