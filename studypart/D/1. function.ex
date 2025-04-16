# 벌써 함수라니..
# 한 10% 온거 같으니 좀 열심히 해봅시다.

# 익명함수
# 말 그대로 이름이 없어요. 보통 자바에서 스트림? 뭐시기 넘길때 -> 이런거 쓰잖아요. 요거 말합니다.
sum = fn a, b -> a + b end
# 3
IO.puts(sum.(1, 2))

# 뭐 귀찮기도 하고 누가 a, b 이따구로 하면 만들고 싶겠어요. 전에 배운 &로 줄이죠
sum = &(&1 + &2)
# 3
IO.puts(sum.(1, 2))

# 다음은 패턴매칭입니다.
# 단순히 변수를 다루기보단 함수 시그니처에서도 적용할 수 있습니다.
handle_result = fn
  {:ok, result} -> IO.puts("Heandling result... #{result}")
  {:ok, _} -> IO.puts("This would be never run as previous will be matched beforehand.")
  {:error} -> IO.puts("An error has occurred!")
end
some_result = 1
IO.puts(handle_result.({:ok, some_result}))
IO.puts(handle_result.({:error}))


# 이름이 있는 함수
# 차후 쉽게 호출할 수 있도록 함수를 이름과 같이 정의합니다.
# 보통 모듈 내에서 def로 정의하지만 지금은 이름이 있는 함수를 다루는 것에 집중합시다
defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
end

IO.puts(Greeter.hello("World!"))


# 한 줄로 줄 이 고 싶다면 do::::::~~~!!!!!!!!
defmodule Gretter do
  def hello(name), do: "hello, " <> name
end

# 아 재귀도 해봐야죠! 이거 없으면 뭔 언어입니까!
# 재귀는 함수가 자기 자신을 호출하는 것입니다.
defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

IO.puts(Length.of([1, 2, 3, 4, 5]))


# 함수는 내부 인자의 개수를 조합해서 만들어내거든요?
# 근데 이건 뻔하니까 안할게요

# 함수와 패턴 매칭
defmodule Gretter1 do
  def hello(%{name: person_name}) do
    IO.puts("Hello, #{person_name}")
  end
end

fred = %{
  name: "Fred",
  age: 30,
  city: "New York"
}

Gretter1.hello(fred)
# name이랑 매칭되서 되는건데 name 없으면 오류 뻥 터집니당

teddy = %{
  age: 30,
  city: "New York"
}

# Gretter1.hello(teddy)
# 이건 패턴 매칭이 아니라 그냥 에러입니다. 궁금하면 주석 풀어서 테스트 하셈
# 오늘 쓰는거 너무 귀찮아져서 대충 씀


# private 함수
# 뭐 얘도 접근 제어 할 수 있음
# 이거 def가 쓰는거고 defp가 private 함수임
defmodule Greeter2 do
  def hello(name) do
    greet(name)
  end

  defp greet(name) do
    "Hello, " <> name
  end
end

# 이 상태에서 private 함수는 호출할 수 없음
# Greeter2.greet("World!")


# 대충 빨리 넘길게용
# 가드
# 가드는 제어 구조에서 휙 넘어갔었는데 대충 만지고 감
defmodule GOTT do
  def hello(name) when is_list(name) do
    name = Enum.join(name, ", ")
    hello(name)
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

IO.puts(GOTT.hello(["World", "Elixir"]))



# 기본 값 인자
# 인자에 기본값을 할당하고 싶다면 인자 \\ 값 문법을 쓰세용
defmodule Greeter3 do
  def hello(name \\ "World") do
    "Hello, " <> name
  end
end

IO.puts(Greeter3.hello())


# 끝
