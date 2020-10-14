import functools


def solution(n):
    splited = list(str(n))
    print(splited)
    answer = functools.reduce(lambda a, b: int(a)+int(b), splited)

    # [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.

    return int(answer)


print(solution(123))
print(solution(987))
print(solution(98799))
print(solution(0))
