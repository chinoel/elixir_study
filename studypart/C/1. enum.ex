# 진도가 상당히 느린 거 같지만, 아직 메인이 아니라서 그렇습니다.
# 메인은 스프링 부트랑 Next.js만 파고 있어서 그렇습니다.

# 우선 Enum 모듈은 열거 가능한 것들을 이용하기 위한 70개 이상의 함수가 있습니다.
# 튜플을 제외한 이전에 공부했던 내용들은 열거 가능합니다.

# 테스트 코드부터 시작합니다.
Enum.__info__(:functions)
|> Enum.each(fn {function, arity} ->
  IO.puts("#{function}/#{arity}")
end)

# 출력된 결과로 상당히 많은 함수가 있다는 것을 알 수 있습니다.
# 열거형은 함수형 프로그래밍의 핵심이며, 개쩌는 개발을 할 수 있게 됩니다.

# 함수들은 Enum 문서를 보면됩니다.
# https://hexdocs.pm/elixir/Enum.html

# 몇개 써보도록 하겠습니다.


# all?
# all?은 모든 요소가 주어진 조건을 만족하는지 확인합니다.
# 맞다면 true, 아니면 false를 반환합니다.
IO.puts(Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)) # false
IO.puts(Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)) # true



# any?
# any?는 true인 요소가 하나라도 있으면 true, 아니면 false를 반환합니다.
IO.puts(Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)) # true


# chunk_every
# 컬렉션을 작은 묶음으로 쪼개야 할 때 이거 쓰면 됩니다.
IO.inspect(Enum.chunk_every([1, 2, 3, 4, 5], 2))
# IO.put 하다가 안나오면 IO.inspect로 생각하시면 편합니다.

# chunk_by
# 이건 크기가 아닌 기준에 따라 묶는 근거가 있다면 사용할 수 있습니다.
# 열거할 수 있는 컬렌션과 함수를 받아서, 주어진 함수의 결과값이 변할 때마다 그룹을 새로 시작할 수 있죠
IO.inspect(Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) -> String.length(x) end))
IO.inspect(Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) -> String.length(x) end))

# 무슨 느낌인지 알거같죠?


# map_every
# 이건 묶는다 하더라도 원하는 것을 얻기 어려울 때가 있습니다.
# 모든 n번째의 아이템을 가져오며, 항상 첫번째 것에도 적용되는 특징이 있습니다.
IO.inspect(Enum.map_every([1,2,3,4,5,6,7,8,9], 3, fn x -> x + 1000 end))

# 사실 하다보니 재밌어지네요. 조금만 더 해봅시다.

# each
# 이건 새로운 값을 만들어내지 않고 반복문?이라 생각하면 편해요. 확인하세요
Enum.each(["one", "two", "three"], fn s -> IO.puts(s) end)

# 와 쓰다보니 자동완성 이거 처음엔 개 쓰레기라 생각했는데, 적당한 쓰레기로 정정할게요
# fn 치는데 예제는 괄호 치라는데 여긴 그냥 fn이랑 end만 띄워주고 욕 박을랬는데,
# 생각해보니 괜찮게되네요. 이제 빠르게 할게요.

# map
# 각 아이템 별 함수를 적용해 새로운 컬렉션 만들때 씁니다.
IO.inspect(Enum.map([0, 1, 2, 3], fn x -> x - 1 end))

# min
# 최소값을 찾습니다.
IO.inspect(Enum.min([1, 2, 3, 4, 5, 6, 7, 8, 9]))

# 근데 비어있을 수도 있잖아요? 익명 함수 쓸수 있습니다.
IO.inspect(Enum.min([], fn -> :lol end))

# max
# 최대값을 찾습니다. 아 익명 함수도 동일합니다.
IO.inspect(Enum.max([1, 2, 3, 4, 5, 6, 7, 8, 9]))

# filter
# 조건에 맞는 true 값만 필터링합니당
IO.inspect(Enum.filter([1,2,3,4], fn x -> rem(x, 2) == 0 end))

# reduce
# 컬렉션을 하나의 값으로 추려낼 수 있습니다.
# 말이 혼란스러울 수 있는데 하나로 뭉친다는 말입니다.
# 선택사항으로 축적자의 값을 지정해야하는데 만약 없으면 열거형 목록의 제일 앞 값이 축적자가 됩니다.
# 코드로 보시죠
IO.inspect(Enum.reduce([1, 2, 3], 10, fn x, acc -> x + acc end))
# 축적자 없이도 가능합니다.
IO.inspect(Enum.reduce([1, 2, 3], fn x, acc -> x + acc end))
# 문자도 확인해보죠
IO.inspect(Enum.reduce(["a","b","c"], "1", fn x, acc -> x <> acc end))


# sort
# 이건 너무 뻔하다. 제일 쉽다.
IO.inspect(Enum.sort([3, 2, 1]))

# 역순도 비슷함
IO.inspect(Enum.sort([3, 2, 1], :desc))


# uniq
# 중복된 값을 제거하는데 이건 이름만 좀 다르지 비슷하고 편하고 좋음
IO.inspect(Enum.uniq([1, 1, 1, 2, 3, 1, 4, 3, 1, 2, 3]))


# 캡처 연산자(&)
# Enum 모듈에 있는 많은 함수들은 익명 함수를 인자로 받습니다.
# 직접 보시죠
IO.inspect(Enum.map([1,2,3], fn number -> number + 3 end))
# 보통 이런식으로 값 넘겼었는데 이제 캡처 연산자를 쓴다면?

IO.inspect(Enum.map([1,2,3], &(&1 + 3)))
# 아니 위에꺼랑 같은 결과인데 식이 더 줄었다?!!
# &로 줄여버릴 수 있고 &1은 1번째 인자라는 뜻. 즉 입력이 2개면 &2도 추가하면 되겠죵

# Enum은 이 정도면 대충 아는 수준이니 바로 패턴 매칭으로 갑시다.
