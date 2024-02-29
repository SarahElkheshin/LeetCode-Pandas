SELECT A1.MACHINE_ID, ROUND(AVG(A2.TIMESTAMP - A1.TIMESTAMP),3) AS processing_time 
FROM ACTIVITY A1 JOIN ACTIVITY A2 
ON A1.MACHINE_ID = A2.MACHINE_ID
AND A1.PROCESS_ID = A2.PROCESS_ID 
AND A1.ACTIVITY_TYPE= 'start'
AND A2.ACTIVITY_TYPE= 'end'
GROUP BY A1.MACHINE_ID