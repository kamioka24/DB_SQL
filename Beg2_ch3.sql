-- 日次・月次のアクセス数を求める

-- 4/1~4/30までの日付別アクセス数を出力
SELECT DATE(startTime), COUNT(logID)
FROM eventlog
WHERE DATE(startTime) BETWEEN '2015-04-01' AND '2015-04-30'
GROUP BY DATE(startTime);


-- 月別のアクセス数を出力
SELECT DATE_FORMAT(startTime, '%Y-%m'), COUNT(logID)
FROM eventlog
GROUP BY DATE_FORMAT(startTime, '%Y-%m');