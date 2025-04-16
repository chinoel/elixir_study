## 이거 어떻게 만들었냐 물을 수 있는데
### mix new example 입니당

## 설명을 할게 없네용
## 여기다 대충 박아넣을게요


1. mix new {프로젝트}
2. cd {프로젝트}
3. iex -S mix
    > 여기서 iex가 편한 사람들은 이게 친숙할겁니다
4. mix compile
    > 컴파일
5. mix.exs
      defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  > 이거 자바에서 보시던 의존성입니다.
6. mix deps.get
    > npm install? 이랑 비슷해요
7. 끝 이제 프로젝트 진행하세요. 쉽죠?


추가로 몇가지 더 알려주면 피닉스 아카이브 깔아야합니다.
mix archive.install hex phx_new

제가 할건 백엔드기에 프로젝트는 다음과 같이 생성 후 프로젝트를 진행합니다. (no html, no assest)
mix phx.new rtc_signaling --no-html --no-assets