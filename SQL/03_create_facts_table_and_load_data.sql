--Create Fact Table This is the central table.
DROP TABLE FACT_TICKETS;
CREATE TABLE FACT_TICKETS (
    TICKET_ID VARCHAR2(20),

    OPEN_DATE_KEY NUMBER,
    CLOSE_DATE_KEY NUMBER,

    CATEGORY_KEY NUMBER,
    AGENT_KEY NUMBER,
    DEPARTMENT_KEY NUMBER,
    PRIORITY_KEY NUMBER,
    STATUS_KEY NUMBER,
    IMPACT_KEY NUMBER,

    RESOLUTION_HOURS NUMBER(10,2),
    SLA_HOURS NUMBER(10,2),
    USER_FEEDBACK_RATING NUMBER(4,2),

    SLA_BREACHED NUMBER(1),

    CONSTRAINT PK_FACT PRIMARY KEY (TICKET_ID)
);

--Load Fact Table,This joins staging to dimensions.
INSERT INTO FACT_TICKETS
(
    TICKET_ID,
    OPEN_DATE_KEY,
    CLOSE_DATE_KEY,
    CATEGORY_KEY,
    AGENT_KEY,
    DEPARTMENT_KEY,
    PRIORITY_KEY,
    STATUS_KEY,
    IMPACT_KEY,
    RESOLUTION_HOURS,
    SLA_HOURS,
    USER_FEEDBACK_RATING,
    SLA_BREACHED
)
SELECT

    s.TicketID,

    TO_NUMBER(
        TO_CHAR(
            TO_DATE(s.DateTimeOpened,'MM/DD/YYYY HH24:MI'),
            'YYYYMMDD'
        )
    ) AS OPEN_DATE_KEY,

    CASE
        WHEN s.DateTimeClosed IS NOT NULL
        THEN TO_NUMBER(
                TO_CHAR(
                    TO_DATE(s.DateTimeClosed,'MM/DD/YYYY HH24:MI'),
                    'YYYYMMDD'
                )
             )
        ELSE 0
    END AS CLOSE_DATE_KEY,

    c.CATEGORY_KEY,
    a.AGENT_KEY,
    d.DEPARTMENT_KEY,
    p.PRIORITY_KEY,
    st.STATUS_KEY,
    i.IMPACT_KEY,

    s.ResolutionHours,
    s.SLAHours,

    s.UserFeedbackRating,

    CASE
        WHEN s.ResolutionHours > s.SLAHours
        THEN 1
        ELSE 0
    END AS SLA_BREACHED

FROM STG_TICKETS s

JOIN DIM_CATEGORY c
    ON s.ServiceCategory = c.CATEGORY_NAME

JOIN DIM_AGENT a
    ON s.AssignedTo = a.AGENT_NAME

JOIN DIM_DEPARTMENT d
    ON s.Department = d.DEPARTMENT_NAME

JOIN DIM_PRIORITY p
    ON s.PriorityLevel = p.PRIORITY_NAME

JOIN DIM_STATUS st
    ON s.Status = st.STATUS_NAME

JOIN DIM_IMPACT i
    ON s.ImpactLevel = i.IMPACT_NAME;

COMMIT;

SELECT
    CASE
        WHEN s.DateTimeClosed IS NOT NULL
        THEN TO_NUMBER(
                TO_CHAR(
                    TO_DATE(s.DateTimeClosed,'MM/DD/YYYY HH24:MI'),
                    'YYYYMMDD'
                )
             )
        ELSE 0
    END AS CLOSE_DATE_KEY
FROM STG_TICKETS s
FETCH FIRST 5 ROWS ONLY;























