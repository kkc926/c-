# 가장 큰 부분합 구하기
# 정수들의 리스트가 입력으로 들어옵니다. 이 정수들의 리스트를 일부분만 잘라내어 모두 더했을 때의 값을 부분합이라 부릅니다. 이때 가장 큰 부분합을 구해봅시다.
#
# 예를 들어, [-10, -7, 5, -7, 10, 5, -2, 17, -25, 1]이 입력으로 들어왔다면 [10, 5, -2, 17]을 모두 더한 30이 정답이 됩니다.
#
# ※입력에는 최소 하나 이상의 양수가 존재합니다.
#
# ※이 문제에는 여러 종류의 풀이법이 존재합니다. 각 풀이법의 시간 복잡도를 고려하면서 여러가지 방법으로 문제를 풀어 봅시다.


def maxSubArray(nums):
    totalSub = 0
    maxSub = 0
    for i in nums:
        totalSub += i
        if totalSub < 0:
            totalSub = 0
        elif totalSub >= maxSub:
            maxSub = totalSub
    return maxSub


def main():
    print(maxSubArray([-10, -7, 5, -7, 10, 5, -2, 17, -25, 1]))  # 30이 리턴되어야 합니다


if __name__ == "__main__":
    main()