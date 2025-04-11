# boolean
IO.puts(true)
IO.puts(false)

# Atom (애텀 = 상수라고 생각하면 편함)
:foo
IO.puts(:foo)

# 비교? 당연히 되지
IO.puts(:foo == :bar)

# 아 그러고보니 true랑 false도 Atom임 (is_atom은 어떤거냐면 atom인지 아닌지 확인하는거임)
IO.puts(is_atom(true))
IO.puts(is_atom(false))

# 암튼 true랑 false는 Atom임
IO.puts(:true == true)
IO.puts(:false == false)

# 아 이거 엘릭서 모듈 이름도 Atom임
IO.puts(is_atom(MyApp.MyModule))

# 아니다 그냥 대문자로 시작하는 거 다 Atom임
IO.puts(is_atom(Elixir))

# Atom은 내장 포함 라이브러리 모듈 참조할 때도 씀
IO.puts :crypto.strong_rand_bytes(3) |> Base.encode16()
# 쓰고보니 생각났는데 얼랭 모듈 호출할때는 : 콜론 써야함

# 벌써 좀 이상한 언어라는 소리가 나올텐데 이제 변수했음
# 근데 이제 시작임
