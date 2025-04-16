# 와 맥에서 윈도우로 오니까 스트레스가 80% 감소?!
# 내 삶 95%가 윈도우로 살아서 그런지 정신 나갈뻔하다가 돌아왔슴니다.

# 모듈 바로 시작해보죠!
# 모듈이 그냥 이름 공간 안에 함수 구성할 수 있는데 직접 보세요
defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

IO.puts(Example.greeting("Sean"))

# 아.. 이 자동완성에 딸깍딸깍의 맛이 사람을 미치게 합니다.
# 나중에 장비 지원금 주면 저 맥? 그딴거 안사요. 윈도우 삽니다.
# 근데 카공은 맥만한게 없긴하던데..

# 잡소리 줄여서 사실 모듈이 뭐 다른 언어랑 크게 다른 게 없어요

defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}"
  end
end
IO.puts(Example.Greetings.morning("JAVA"))

# 진짜 별거 없죠?
# 이제 별거 있는 거 해볼게요.


# 모듈 속성
defmodule ExampleTest do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

IO.puts(ExampleTest.greeting("test"))

# 일반적으로 상수로 속성을 넣을 수 있죠. 대표적으로 3가지 있습니다.
# moduledoc : 모듈 설명
# doc : 함수 매크로 설명
# behaviour : OTP나 사용자가 따로 정의할 수 있는 비헤이비어에 사용


# 구조체
# 이건 키와 기본값 쌍으로 이뤄진 특별한 "MAP" 입니다.
# 구조체는 자신이 정의된 모듈의 이름을 가져오니 정의할 때 반드시 모듈 안에서 정의해아합니다!
# 모듈 안에 구조체 하나만 정의하는 일도 자주 있습니다.

# 보통 defstruct와 함께 필드와 기본값으로 이뤄진 키워드 리스트로 구조체를 정의할 수 있습니다.
defmodule Example.User do
  defstruct name: "Sean", roles: []
end

# 구조체를 몇 개 만들어보죠

# defmodule Main do
#   def make_user do
#     %Example.User{name: "gogo"}
#     steve = %Example.User{name: "Steve"}
#   end
# end

# 왜 이따구로 쓰냐고요? 함수형 모듈인데 메모리가 위에서 읽는데 이 엘릭서라는 쓰레기 언어는요
# "너 왜 내 안에 있어?" 라고 저에게 물으면서 에러를 뱉어냅니다.
# 그래서요. 분명 end 처리 했는데 한몸이래요..ㅋㅋㅋㅋ
# 그렇다니 그냥 분해시켜버려야합니다.

# 구조체 내용도 맵이랑 동일하게 변경할 수 있어요.
# 특이한 점은 맵에 대해서도 구조체에 매칭시킬 수 있다 정도?

# 엘릭서 1.8 구조체에는 커스텀 Introspection이 포함되어 있어요.
# 이건 sean을 살펴봐야합니다.
# IO.puts(inspect(sean))

# 아 근데 저 1.7x라서 저거 못써요. 넘길게요
# 저게 뭐냐면 지금 존재하는 모든 필드가 표시된다네요.
