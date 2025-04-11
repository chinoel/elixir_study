# 논리 연산도 별거 없습니다.
IO.puts(-20 || true)
IO.puts(false || 42)

# 어라? 다른 언어에서는 true/false가 나와야하는데 왜 -20, 42가 나올까요?
# 엘릭서에서 || 연산자는 truthy값을 반환합니다.
# truthy이 쓰레기는 참 같은 값을 주는데 false랑 nil 빼고 전부 truthy입니다.
# 그래서 -20은 truthy값이기 때문에 -20이 나옵니다.

# 그러면 둘다 false인 경우는 어떻게 될까요?
IO.puts(false || false)
# false || false는 false가 나옵니다.
# 신기하지 않나요?

# 별거 없다 했는데 별거 있어요
# && 연산자도 비슷합니다.
IO.puts(-20 && true)
IO.puts(false && 42)
IO.puts(42 && nil)

# 다만 truthy값을 반환하는게 아니라 둘다 true 경우에는 true를 반환합니다.
# 반대로 false나 nil인 경우 둘 중 해당되는 게 나와요
# 아 nil이 왜 아무것도 출력 안하나 싶은데 nil은 아무것도 출력 안합니다.

# 뭐 부정의 부정도 있어야겠죠
IO.puts(!true)
IO.puts(!false)

# 그거랑 and, or, not 있습니다.
IO.puts(true and 42)
IO.puts(false or true)
IO.puts(not false)
# 아, 근데 첫번째 인자값에 무조건 true나 false가 들어가야 합니다.
# 안그러면 에러 터져요
# IO.puts(42 and true)

# 뭐 앨릭서가 얼랭 쉬운 버전이라는데 얼랭은 andalso, orelse 씁니다.

# 마지막 비교연산인데 ==, ===, !=, !==, >, >=, <, <=
# 이건 왠만한 언어랑 똑같아서 좀 다른 ==랑 ===만 비교하고 넘어갈게요.
IO.puts(2 == 2.0)
IO.puts(2 === 2.0)

# ==은 그냥 대충 비교합니다. ===은 존나 깐깐하게 비교합니다.
# 끝입니다.

# 아 더 있다. 비교할 때 우선 순위가 있는데 이건 비교하다 욕하지 말고 알아두세요
# 숫자 < 애텀 < 참조 < 함수 < 포트 < pid < 튜플 < 맵 < 리스트 < 비트스트링

# 뭐 대충 보여드리면 이런겁니다.
IO.puts(1 < :a)
IO.puts(:a < :b)
IO.puts({:hello, :world} > [1, 2, 3])
