# 기존 데이터 삭제
Task.destroy_all

puts "샘플 작업 데이터 생성 중..."

# 현재 시간 기준
today = Time.current

# 개발 관련 작업
tasks = [
  # 개발 관련 작업
  {
    title: "리액트 컴포넌트 리팩토링",
    description: "사용자 프로필 페이지의 컴포넌트를 더 재사용 가능하도록 리팩토링하기. 특히 상태 관리 부분 개선 필요.",
    due_date: today + 2.days,
    completed: false
  },
  {
    title: "API 엔드포인트 문서화",
    description: "프로젝트의 모든 API 엔드포인트를 Swagger로 문서화하고 팀에 공유하기.",
    due_date: today + 1.day,
    completed: false
  },
  {
    title: "데이터베이스 인덱스 최적화",
    description: "사용자 테이블과 주문 테이블의 쿼리 성능 향상을 위한 인덱스 추가 및 최적화.",
    due_date: today + 3.days,
    completed: false
  },
  {
    title: "코드 리뷰 진행",
    description: "동료의 PR #234, #235 코드 리뷰 진행하기. 특히 보안 관련 부분 중점적으로 확인.",
    due_date: today + 4.hours,
    completed: true
  },
  {
    title: "CI/CD 파이프라인 개선",
    description: "빌드 시간 단축을 위한 CI/CD 파이프라인 최적화. 캐싱 전략 적용 및 병렬 테스트 실행 구성.",
    due_date: today + 5.days,
    completed: false
  },
  
  # 공부 관련 작업
  {
    title: "GraphQL 기초 학습",
    description: "GraphQL의 기본 개념과 쿼리 작성 방법 학습. Apollo Client 사용법도 함께 공부하기.",
    due_date: today + 7.days,
    completed: false
  },
  {
    title: "알고리즘 문제 풀이",
    description: "LeetCode에서 트리와 그래프 관련 문제 5개 풀기. 특히 DFS/BFS 알고리즘 복습.",
    due_date: today + 1.day,
    completed: false
  },
  {
    title: "도커 컴포즈 학습",
    description: "다중 컨테이너 애플리케이션 구성을 위한 Docker Compose 심화 학습.",
    due_date: today + 4.days,
    completed: false
  },
  {
    title: "CS 기초 복습: 운영체제",
    description: "프로세스와 스레드, 메모리 관리, 스케줄링 알고리즘 등 운영체제 핵심 개념 복습.",
    due_date: today + 10.days,
    completed: false
  },
  {
    title: "영어 회화 연습",
    description: "기술 인터뷰 대비 영어 회화 연습. 특히 기술적 설명을 영어로 표현하는 연습 필요.",
    due_date: today + 14.days,
    completed: false
  },
  
  # 운동 관련 작업
  {
    title: "러닝 30분",
    description: "집 근처 공원에서 30분 조깅. 페이스 5분 30초/km 유지하기.",
    due_date: today + 1.day,
    completed: false
  },
  {
    title: "상체 근력 운동",
    description: "푸시업 3세트(15회), 풀업 3세트(8회), 숄더프레스 3세트(12회) 진행.",
    due_date: today + 2.days,
    completed: false
  },
  {
    title: "하체 근력 운동",
    description: "스쿼트 4세트(15회), 런지 3세트(10회), 레그프레스 3세트(12회) 진행.",
    due_date: today + 4.days,
    completed: false
  },
  {
    title: "스트레칭 루틴",
    description: "전신 스트레칭 20분. 특히 어깨와 허리 집중적으로 풀어주기.",
    due_date: today + 6.hours,
    completed: true
  },
  {
    title: "헬스장 PT 세션",
    description: "개인 트레이너와 1시간 PT 세션. 이번 주 목표: 코어 강화.",
    due_date: today + 3.days,
    completed: false
  },
  
  # 생활 관련 작업
  {
    title: "장보기",
    description: "주간 식료품 구매: 닭가슴살, 계란, 야채, 과일, 견과류 등. 건강식 위주로 구매하기.",
    due_date: today + 1.day,
    completed: false
  },
  {
    title: "집안 대청소",
    description: "주방, 욕실, 침실 청소 및 정리. 특히 책상 주변 케이블 정리 필요.",
    due_date: today + 2.days,
    completed: false
  },
  {
    title: "세금 신고 준비",
    description: "연말정산 관련 서류 정리 및 필요 증빙 자료 수집.",
    due_date: today + 5.days,
    completed: false
  },
  {
    title: "친구 생일 선물 구매",
    description: "다음 주 친구 생일 선물로 기술 관련 책이나 가젯 고려 중. 온라인 쇼핑몰 비교 후 구매.",
    due_date: today + 4.days,
    completed: false
  },
  {
    title: "병원 정기 검진",
    description: "연간 건강 검진 예약 및 방문. 특히 눈 검사와 혈액 검사 반드시 포함.",
    due_date: today + 7.days,
    completed: false
  }
]

# 데이터베이스에 작업 추가
tasks.each do |task_data|
  task = Task.create!(task_data)
  puts "작업 생성: #{task.title}"
end

puts "총 #{Task.count}개의 샘플 작업이 생성되었습니다."
