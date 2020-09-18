SELECT
  eventlog.userID AS ユーザーID,
  sum(events.increase_exp) AS 合計,
  AVG(events.increase_exp) AS 平均
FROM
  eventlog
  INNER JOIN events ON events.eventID = eventlog.eventID
GROUP BY eventlog.userID
HAVING SUM(events.increase_exp) >= 3000;


-- -----------------SQLの処理の流れ-------------------

-- FROM       対象テーブルからデータを取り出す
-- WHERE      条件に一致するレコードを絞り込み
-- GROUP BY   グループ化
-- HAVING     集計結果から絞り込み
-- SELECT     指定したカラムだけを表示