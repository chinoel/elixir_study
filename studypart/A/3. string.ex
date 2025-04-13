# 문자열은 별거 없어요. 똑같음
IO.puts("Hello, World!")

# 지 알아서 UTF-8로 인코딩 해주니까 이 부분은 생각하지 않아도 됩니다.
IO.puts("안녕하세요")

# 아, 줄바꿈이랑 이스케이프도 쓸 수 있어요.
IO.puts("Hello, World!\n안녕하세요")
IO.puts("Hello, World!\t안녕하세요")

# 근데 왜 ello, World!	\x{C548}\x{B155}\x{D558}\x{C138}\x{C694} 이따구로 나오냐고요?
# VSCode 출력창에서는 non-ASCII 문자로 보여주니 버그는 아닙니다. 뭐 암튼 그래요
