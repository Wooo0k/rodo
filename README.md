# 로도(RODO) - 간편한 작업 관리 도구

<div align="center">
  <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" alt="Ruby" />
  <img src="https://img.shields.io/badge/Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white" alt="Rails" />
  <img src="https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind CSS" />
</div>

## 📝 프로젝트 소개

**로도(RODO)** - 일상 업무와 개인 작업을 효율적으로 관리할 수 있는 심플한 작업 관리 애플리케이션입니다. 직관적인 UI와 필수 기능에 집중하여 사용자가 작업에 집중할 수 있도록 도와줍니다.

## ✨ 주요 기능

- **작업 관리**: 작업 생성, 조회, 수정, 삭제 기능
- **작업 상태 관리**: 진행 중/완료 상태 전환 기능
- **마감일 기준 정렬**: 마감일이 빠른 순서로 작업 정렬
- **직관적인 UI**: Tailwind CSS를 활용한 모던하고 반응형 디자인

## 🛠️ 기술 스택

- **백엔드**: Ruby on Rails
- **프론트엔드**: HTML, ERB, Tailwind CSS
- **데이터베이스**: SQLite(개발), PostgreSQL(배포)

## 📋 모델 구조

### Task 모델
- `title`: 작업 제목 (string, 필수)
- `description`: 작업 설명 (text)
- `due_date`: 마감일 (datetime, 필수)
- `completed`: 완료 여부 (boolean)

## 🚀 시작하기

### 요구사항
- Ruby 3.x
- Rails 7.x
- Node.js & Yarn

### 설치 및 실행

```bash
# 저장소 클론
git clone https://github.com/yourusername/rodo.git
cd rodo

# 의존성 설치
bundle install
yarn install

# 데이터베이스 설정
rails db:create
rails db:migrate

# 서버 실행
bin/dev
```

## 🎨 UI 특징

- **공간 효율성**: 화면 상단 여백 최소화로 작업 공간 최대화
- **상태 구분**: 진행 중/완료 작업 탭으로 구분
- **직관적인 아이콘**: 작업 완료, 수정, 삭제 등 아이콘 활용
- **한국어 지원**: 모든 UI 요소 한국어로 제공

## 📱 스크린샷

(스크린샷 추가 예정)

## 🤝 기여하기

1. 이 저장소를 포크합니다
2. 새 기능 브랜치를 생성합니다 (`git checkout -b feature/amazing-feature`)
3. 변경사항을 커밋합니다 (`git commit -m '새로운 기능 추가'`)
4. 브랜치에 푸시합니다 (`git push origin feature/amazing-feature`)
5. Pull Request를 생성합니다

## 📄 라이선스

MIT 라이선스에 따라 배포됩니다. 자세한 내용은 `LICENSE` 파일을 참조하세요.
