# 코드를 쓰면 아주 신명나는 경우가 있습니다.
# foo(bar(bzer(sexy_boy_function(oott))))
# 뭐.. 되긴해도 상당히 더럽잖아요? 좀 보기 좋게 해보죠.
# other_function() |> new_function |> baz() |> bar() |> foo()
# 이게 바로 파이프 연산자입니다.
# 파이프 연산자는 |> 기호로 표현됩니다.
# 파이프 연산자는 왼쪽의 결과를 오른쪽 함수의 첫 번째 인자로 전달합니다.

"Elixir rocks" |> String.split(" ")
# 위 코드는 "Elixir rocks"라는 문자열을 공백으로 나누어 ["Elixir", "rocks"]라는 리스트를 만듭니다.

# 좋은 습관만 알려주고 이것도 끝내겠습니다.
# 함수 인자 1개 이상은 반드시 괄호를 쓰세요.
# 이 거지같은 언어에서는 다른 사람이 전혀 다른 뜻으로 이해할 수도 있걸랑요
# 끝내겠습니당
