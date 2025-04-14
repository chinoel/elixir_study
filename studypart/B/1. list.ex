# 사실 list는 뭐 없어요. 파이썬이랑 똑같습니다.
# 다만, 출력할 때는 inspect를 씁니다.
list = [3.14, :pie, "Apple"]
IO.inspect(list)

# Elixir는 연결 리스트로서 리스트 컬렉션을 구현합니다.
# 따라서 리스트 길이 구하는 게 o(n)이 걸리는데 ㅈㄴ 오래걸리죠?
# 따라서 값은 앞에 추가하는 게 뒤에 붙이는 것보다 빠릅니다.
list = ["n" | list]
IO.inspect(list)

# 뒤에 추가하면?
list = list ++ ["Cherry"]
IO.inspect(list)

# 뭐 하다보면 2개 이어 붙일 일도 있는데 이것도 간단해요
listA = [1, 2]
listB = [3, 4, 5]
listC = listA ++ listB
IO.inspect(listC)

# 무려 리스트를 빼는 것도 있어요!
# 장점은 존재하지 않아도 뺄수 있어요. 오류로 욕하지 않아도 되는 장점!
listC = listC -- [1, 2]
IO.inspect(listC)

listC = listC -- [7]
IO.inspect(listC)

# 아 중복 값에 조심해야합니다. 같은 값 여러개 있어도 왼쪽에서 가장 먼저 만난 것만 없어지거든요
listTest = [1,2,2,3,2,3]
listRemove = [1,2,3,2]
listResult = listTest -- listRemove
IO.inspect(listResult)

#  값 비교는 엄격한 비교를 사용합니다. 타입 다르면 못 없애요
IO.inspect([1] -- [1.0]) # 1
IO.inspect([2.0] -- [2.0]) # nil

# 리스트는 보통 head, tail로 나누어져 있습니다.
# head는 첫번째 원소, tail은 나머지 원소를 의미합니다.
# 유용한 함수로는 hd, tl이 있습니다.
IO.inspect(hd(list)) # head
IO.inspect(tl(list)) # tail


# 리스트는 여기까지 할게요
