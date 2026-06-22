--Creating a staging tickets table and importing csv data into the table

CREATE TABLE stg_tickets (
    TicketID VARCHAR2(20),
    DateTimeOpened VARCHAR2(20),
    DateTimeClosed VARCHAR2(20),
    ServiceCategory VARCHAR2(100),
    PriorityLevel VARCHAR2(20),
    ImpactLevel VARCHAR2(20),
    Status VARCHAR2(50),
    AssignedTo VARCHAR2(50),
    Department VARCHAR2(100),
    ResolutionHours NUMBER(10,2),
    SLAHours NUMBER(10,2),
    UserFeedbackRating NUMBER(4,2)
);



























