# 마지막으로 map인데 이건 알다시피 키-값 저장소입니다.
# 어떤 타입이든 될 수 있고 순서를 따르지 않아요. 맵은 %{}로 정의할 수 있어요
map = %{:foo => "bar", "hello" => :world}
IO.puts(map[:foo]) # bar
IO.puts(map["hello"]) # world


# 아, 근데 엘릭서 1.2부터는 변수를 맵의 키로 쓸수 있어요.
key = "hello"
IO.inspect((%{key => "world"}))

# map이니 당연히 중복은 안되죠. 중복값 있으면 새 값으로 대체됩니다.
map = %{:foo => "bar", :foo => "baz"}
IO.inspect(map) # %{foo: "baz"}
# 뭐 에러뜨는걸 볼수 있는데 warning 경고창이고 실행엔 문제 없어요
# 근데 이렇게 쓰면 내가 생각한 결과가 아닐 수 있다는 거니 신경쓰시라는겁니다.

# 쓰다보면 신기한 점은 모든 키가 애텀인 맵을 정의하기 위한 특별한 문법도 있습니다.
map = %{foo: "bar", hello: "world"}
test = map == %{foo: "bar", hello: "world"}
IO.inspect(test) # true

# 애텀 키 접근을 위한 특별한 문법도 있어요.
map = %{foo: "bar", hello: "world"}
IO.inspect(map.foo) # bar

# 맵의 또다른 부분은 갱신을 위한 독자적 문법도 있습니다.
map = %{foo: "bar", hello: "world"}
map = %{map | foo: "baz"}
IO.inspect(map) # %{foo: "baz", hello: "world"}



# 마지막으로 맵에 갱신하려는 키가 이미 존재할 때만 존재하는데, 키가 없으면 KeyError가 발생되니 주의하세요.
# 새로운 키는 Map.put(map, :foo, "baz) 이런식으로 추가할 수 있습니다.
# 키가 없으면 KeyError가 발생되니 주의하세요.
# 오늘 학습은 여기까지 다음은 Enum 모듈입니다.
