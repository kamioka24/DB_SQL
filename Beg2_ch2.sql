-- areaIDはusersテーブルとareaテーブル両方に存在するため、area.で指定する必要がある。
SELECT userID, name, area.areaID, area_name -- 複数ある場合はカンマ(,)で区切る。
FROM users
  INNER JOIN jobs ON jobs.jobID = users.jobID
  -- jobsテーブルをjobIDでusersテーブルと連結させている。
  INNER JOIN area ON area.areaID = users.areaID
  -- areaテーブルをareaIDでusersテーブルと連結させている。
WHERE
  userID >= 10 AND userID < 20;
-- 条件が複数の場合は AND や && で繋ぐ。