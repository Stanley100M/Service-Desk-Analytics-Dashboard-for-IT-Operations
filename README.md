# Service-Desk-Analytics-Dashboard-for-IT-Operations
A data-driven IT service management (ITSM) analytics project designed to monitor and optimize service desk operations. The dashboard provides visibility into ticket lifecycles, support team performance, incident categories, SLA adherence, and customer satisfaction through interactive visualizations.


## Tools and Technologies
- SQL Server
- Power BI(Data warehousing)
- DAX
- Excel
- CSV
- SQL Server
- Data Modeling
- Star Schema
- ETL
- Business Intelligence


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
![Star Schema](https://github.com/Stanley100M/Service-Desk-Analytics-Dashboard-for-IT-Operations/blob/main/Screenshots/KIMBALL%20STAR%20SCHEMA.JPG)

- Facts Table
  ![Facts Table](https://github.com/Stanley100M/Service-Desk-Analytics-Dashboard-for-IT-Operations/blob/main/Screenshots/fact_table.PNG)
- Staging Table
  ![Facts Table](https://github.com/Stanley100M/Service-Desk-Analytics-Dashboard-for-IT-Operations/blob/main/Screenshots/sql_staging_table.png)


## Power BI Dashboard
1. Executive Summary
2. Service Desk Performance

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
- SLA Compliance: The most notable finding was the SLA compliance rate of 53.3%. This indicated that almost one in every two tickets exceeded its target resolution time. I used dimensional analysis to identify which categories and departments were associated with the highest breach rates, allowing me to pinpoint operational bottlenecks and areas for service improvement.
- Top SLA Breach Categories: Password Reset, Network Connectivity, Mobile Device Support, and Phishing Email Reports recorded the highest number of SLA breaches. These categories represent key operational pressure points and should be prioritized for process optimization, resource allocation, and automation initiatives to improve SLA compliance and service delivery performance.
- Departmental Demand: IT, Risk & Compliance, Treasury, and Branch Operations accounted for the highest proportion of service desk tickets, indicating that these business-critical functions are the most dependent on IT services. The concentration of support requests suggests opportunities to improve system reliability, automate repetitive requests, and develop targeted support strategies to reduce ticket volumes and enhance operational efficiency.
- Priority Analysis: High and Medium priority tickets represented the majority of service desk requests, indicating that support teams were primarily engaged in resolving issues with moderate to significant business impact. The prevalence of High priority incidents highlights the need for proactive problem management and root-cause analysis, while the large volume of Medium priority requests presents opportunities for automation, self-service solutions, and process optimization to improve operational efficiency.
- Agent Workload Distribution: Ticket assignments were distributed relatively evenly across support agents, with each agent handling between 13% and 16% of total tickets. This suggests a balanced workload allocation, although Irene managed the highest share at 16%, indicating slightly greater involvement in service desk operations.
- Agent Efficiency: Esther demonstrated the highest resolution efficiency, resolving 15.72% of all tickets with an average resolution time of 19 hours, while Joseph recorded the longest average resolution time at 25 hours, highlighting a potential opportunity to review workload complexity, ticket types, or process bottlenecks.
- Customer Satisfaction: The average customer satisfaction rating was 3.01, with Lucy and Irene receiving the highest ratings; notably, both agents were also the second and third fastest at resolving tickets, suggesting a strong link between timely resolution and positive customer experience
- Resolution Time Analysis: The average ticket resolution time was 22.81 hours, but issues related to MFA Support (27.6 hrs), Core Banking Application Access (27.2 hrs), and New User Setup (26.7 hrs) took significantly longer to resolve, suggesting that access management and user provisioning processes are key contributors to service delays.

## Key Recommendations
- Implement **self-service automation and password reset tools** to reduce SLA breaches in high-volume categories such as Password Reset, MFA Support, and Mobile Device Support, which are currently major drivers of service delays.
- Optimize **access management and user provisioning workflows**, particularly for Core Banking Application Access and New User Setup, as these categories show consistently high resolution times and indicate process bottlenecks.
- Introduce a **Knowledge Base (KB) and guided troubleshooting flows** for recurring Medium priority incidents to reduce dependency on the service desk and improve first-contact resolution rates.
- Conduct a **root-cause analysis of SLA breaches (53.3% compliance rate)** to identify systemic issues such as tooling gaps, process inefficiencies, or insufficient prioritization rules.
- Strengthen **proactive problem management** for recurring high-impact categories, especially Network Connectivity and Phishing Email Reports, to reduce repeat incidents and improve overall service stability.
- Review and optimize **ticket backlog management processes**, since 10% of tickets remain unresolved, to prevent accumulation of aging tickets that may negatively impact SLA performance.
- Benchmark and replicate best practices from **high-performing agents like Esther, Lucy, and Irene**, as their strong resolution speed and customer satisfaction scores indicate effective handling strategies.
- Provide targeted support or workload review for agents such as **Joseph**, where longer resolution times suggest potential complexity imbalances or efficiency gaps.
- Improve **incident prevention strategies for IT, Risk & Compliance, Treasury, and Branch Operations**, as these departments generate the highest ticket volumes and would benefit from system stability improvements and workflow automation.
- Align **priority classification rules and escalation processes**, since a high proportion of High and Medium priority tickets indicates significant operational pressure and potential inconsistency in ticket triaging.
- Enhance **service desk capacity planning during peak months (September–November)** to proactively manage increased ticket volumes and maintain SLA performance during high-demand periods.
- Strengthen the relationship between **resolution time and customer satisfaction**, by enforcing faster handling of priority tickets, as faster agents consistently achieved higher CSAT scores.

### Conclusion: 
This analysis demonstrates how data-driven ITSM can improve operational efficiency, reduce SLA breaches, and enhance user satisfaction through targeted process improvements and automation strategies.
 

## 👤 Author

 Stanley Eric  

Business Intelligence Analyst | Data Analyst | Tableau Developer

