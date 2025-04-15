# 상당히 뺑 돌아오긴했는데 이게 if문, case, cond, with를 할 수 있겠네요!

# if와 unless입니다.
# if랑 unless는 사실 말 그대로 동일하지만 언어 구조가 아닌 매크로거든요.
# 일단 알아볼게요. 근데 unless는 잘 안쓰는게 좋습니다.
# Elixir 팀에서 안쓰는 게 좋다고 했고 미래에는 사라질거라서 안쓰는게 좋습니다.
# 이유가 어째서냐고요? if문이 가독성이 더 좋으니까요? 부정은 ! 이런거 쓰면 되죠.

IO.puts(
  if String.valid?("Hello") do
    "Valid String"
  else
    "Invalid String"
  end
)

IO.puts(
  unless is_integer("hello") do
    "Not an Int"
  end
)

IO.puts(
  if "a string value" do
    "Truthy"
  end
)

# case문입니다.
# 이것도 뭐 별거 없어요
IO.puts(
  case {:ok, "Hello World"} do
    {:ok, result} -> result
    {:error} -> "Error"
    _ -> "Catch All"
  end
)

# 왜 _를 쓰냐고요?
# 이건 없으면 일치하는 패턴이 없을 때 오류가 발생해요.
# 그래서 _를 쓰면 모든 패턴을 다 잡아주죠.

IO.puts(
  case :even do
    :odd -> "Odd"
    _ -> "Not Odd"
  end
)

# _는 default라 생각하는 게 제일 편합니다.
# 아 case는 가드 구문 지원하니까 대강 익혀두세요

IO.puts(
  case {1, 2, 3} do
    {1, x, 3} when x > 0 ->
      "Will match"

    _ ->
      "Won't match"
  end
)

# cond
# 이건 값이 아닌 조건식에 매치해야 할 때 쓰면 됩니다.
# if, else 보단, else if에 가깝겠네요.
IO.puts(
  cond do
    2 + 2 == 5 ->
      "is this?"

    2 * 2 == 3 ->
      "real is true?"

    1 + 1 == 2 ->
      "yes"
  end
)

# 여기도 조건식 없으면 에러 터지는데 true로 막을 수 있습니다.
IO.puts(
  cond do
    1 + 1 == 3 ->
      "no!!!"

    true ->
      "null..."
  end
)


# with
# 이건 중첩된 csee 구문이나 깔끔한 파이프 연산을 할 수 없을 때 쓰면 됩니다.
# 좀 어려운 말인데 키워드, 제너레이터, 식으로 구성되었습니다.
# 일단 보죠
user = %{first: "Sean", last: "Huang"}
IO.puts(
  with {:ok, first} <- Map.fetch(user, :first),
    {:ok, last} <- Map.fetch(user, :last),
    do: last <> ", " <> first
)

# 매치가 실패하면 매치되지 않은 값이 반환됩니다.
# 여기까지 할게요
