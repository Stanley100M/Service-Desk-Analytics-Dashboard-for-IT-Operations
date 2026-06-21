# Service-Desk-Analytics-Dashboard-for-IT-Operations
A data-driven IT service management (ITSM) analytics project designed to monitor and optimize service desk operations. The dashboard provides visibility into ticket lifecycles, support team performance, incident categories, SLA adherence, and customer satisfaction through interactive visualizations.


## Tools Used
- SQL Server
- Power BI(Data warehousing)
- DAX
- Excel/CSV

## Key Features
- Ticket lifecycle monitoring
- SLA compliance tracking
- Support team performance analysis
- Customer satisfaction reporting
- Incident category analysis

## Data Model
Star schema with:
- Fact_Tickets
- Dim_Date
- Dim_Agent
- Dim_Priority
- Dim_Status
- Dim_Category
- Dim_Impact
- Dim_Department

## KPIs
- Total Tickets
- Open and Closed Tickets
- SLA Compliance %
- SLA Breach %
- Avg Resolution Time
- Avg Feedback Rating
- CSAT Score
- First Contact Resolution Rate

## Key Valuable Insights
- Ticket volume peaked in the month of September to November, suggesting periods of increased operational activity or recurring system issues.
- Open vs Closed Ticket Performance: The service desk resolved 90% of all tickets logged during the year, reflecting strong operational efficiency. However, 10% of tickets remained open, forming a backlog that may affect service quality and SLA compliance. Further analysis of backlog drivers is recommended to improve resolution performance and reduce outstanding workload.
- The most notable finding was the SLA compliance rate of 53.3%. This indicated that almost one in every two tickets exceeded its target resolution time. I used dimensional analysis to identify which categories and departments were associated with the highest breach rates, allowing me to pinpoint operational bottlenecks and areas for service improvement.
- Top SLA Breach Categories: Password Reset, Network Connectivity, Mobile Device Support, and Phishing Email Reports recorded the highest number of SLA breaches. These categories represent key operational pressure points and should be prioritized for process optimization, resource allocation, and automation initiatives to improve SLA compliance and service delivery performance.
- Departmental Demand: IT, Risk & Compliance, Treasury, and Branch Operations accounted for the highest proportion of service desk tickets, indicating that these business-critical functions are the most dependent on IT services. The concentration of support requests suggests opportunities to improve system reliability, automate repetitive requests, and develop targeted support strategies to reduce ticket volumes and enhance operational efficiency.
- Priority Analysis: High and Medium priority tickets represented the majority of service desk requests, indicating that support teams were primarily engaged in resolving issues with moderate to significant business impact. The prevalence of High priority incidents highlights the need for proactive problem management and root-cause analysis, while the large volume of Medium priority requests presents opportunities for automation, self-service solutions, and process optimization to improve operational efficiency.
- Agent Workload Distribution: Ticket assignments were distributed relatively evenly across support agents, with each agent handling between 13% and 16% of total tickets. This suggests a balanced workload allocation, although Irene managed the highest share at 16%, indicating slightly greater involvement in service desk operations.
- Agent Efficiency: Esther demonstrated the highest resolution efficiency, resolving 15.72% of all tickets with an average resolution time of 19 hours, while Joseph recorded the longest average resolution time at 25 hours, highlighting a potential opportunity to review workload complexity, ticket types, or process bottlenecks.
- Customer Satisfaction: The average customer satisfaction rating was 3.01, with Lucy and Irene receiving the highest ratings; notably, both agents were also the second and third fastest at resolving tickets, suggesting a strong link between timely resolution and positive customer experience



## Dashboard Pages
1. Executive Summary
2. Service Desk Performance
3. Incident Analysis
4. SLA & Customer Satisfaction
