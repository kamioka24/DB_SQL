SELECT COUNT(*) AS アクティブユーザー数
FROM users;
-- => ユーザー数が数字で出力される。(カラム名、アクティブユーザーとして)

SELECT COUNT(*) AS アクティブユーザー数
FROM users
WHERE deleted_at IS NULL; -- 退会日時がNULL、すなわち退会していないユーザーを出力する。
-- => ユーザー数から退会者数を除いた数を出力する。

SELECT
  DATE(eventlog.startTime) AS 日付,
  COUNT(DISTINCT eventlog.userID) AS アクティブユーザー数 -- 重複を除く。
FROM eventlog
  INNER JOIN users ON users.userID = eventlog.userID
WHERE deleted_at IS NULL
GROUP BY DATE(eventlog.startTime);
-- 日付別にアクティブユーザー数を出力する。