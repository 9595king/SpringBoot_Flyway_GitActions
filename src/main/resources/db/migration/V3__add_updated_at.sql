 -- V3: 수정 시각 컬럼 추가
 ALTER TABLE memo ADD COLUMN updated_at DATETIME(6) NULL;

 -- 이미 있는 메모(V2가 넣은 첫 메모 등)는 작성 시각으로 채움 (데이터 마이그레이션)
 UPDATE memo SET updated_at = created_at WHERE updated_at IS NULL;