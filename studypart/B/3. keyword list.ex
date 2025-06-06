# 키워드 리스트는 뭔가 싶지도 한데 키워드 리스트와 맵은 Elixir의 연관 컬렉션입니다.
# Elixir에서 키워드 리스트는 첫번째 원소가 애텀, 2개의 원소를 가진 특별한 튜플들의 리스트입니다.
# 따라서 키워드 리스트는 리스트와 성능이 비슷합니다.
# 걍 그림으로 보죠. map이 생각날 겁니다.
list = [foo: "bar", hello: "world"]

# 키워드 리스트는 3가지 특징이 있는데 중요합니다.
# 1. 모든 키는 애텀입니다.
# 2. 키는 정렬되어 있습니다.
# 3. 키는 유일하지 않아도 됩니다.

# map이랑 비슷하다했는데 다른건 유일하지 않아도 된다는 점이죠.
# 따라서 키워드 리스트는 함수에 옵션을 전달할 때 많이 사용됩니다.
