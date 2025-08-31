> 📊**Sales** **Data** **Analysis** **Project**
>
> **<u>ProjectOverview</u>**

Thisprojectdemonstratesa **completedataanalyticsworkflow**
startingfromrawsales datatogeneratingactionablebusinessinsightsthrough
**SQLdatacleaning,** **transformation,and** **visualizationinTableau**.

Thegoalofthisprojectwasto:

> 1\. Importand explorerawsalesdata.
>
> 2\. Perform systematic**datacleaningand** **preprocessingusingSQL**.
> 3. Builda **clean,analysis-readydataset**fordownstream reporting. 4.
> Conductexploratorydataanalysis(EDA) withSQL queries.
>
> 5\.
> Create**interactivedashboardsinTableau**forbusinessdecision-making.

Thisend-to-end pipelinereflectshowreal-worldcompanydatacanbetransformed
into meaningfulinsightsfor stakeholders.

**️<u>ProjectStructure</u>**

> • **sales_data_sample.csv**→Originalrawdataset.
>
> • **Sales** **Analysis.sql**→SQL
> scriptfordatacleaning,transformation,andanalysis queries.
>
> • **Clean_Sales.csv**→Finalcleaned datasetreadyfor visualization.
>
> • **Tableau** **Work.twbx**→Tableauworkbookwithdashboardsand
> visualizations.
>
> **<u>DataCleaning & Transformation (SQL)</u>**

Keystepsperformed intheSQL script:

> • **DataQualityChecks**
>
> o Countedtotal records.
>
> o Checked for **missingvalues**and**duplicates**. •
> **CleaningRulesApplied**
>
> o Removed rowswithnegative/zeropricesor quantities. o
> Keptonly**completed** **(Shipped)orders**.
>
> o Standardized categoricalvalues(e.g.,“SHIPPED”→“Shipped”). o Trimmed
> extraspacesintextfields.
>
> • **DataStandardization**
>
> o Renamed columnstoaconsistentformat.
>
> o Converted order datesintoproper SQL DATEformat. o
> Truncatednumericvaluesto2decimalplaces.
>
> • **FeatureEngineering**
>
> o Created anewfield line_total_revenue = quantity × unit_price. o
> Added KPIsfor**totalrevenue**, **averageordervalue**, **top**
> **customers**,and
>
> **best-sellingproduct** **lines**.
>
> **<u>Analysis Queries (SQL)</u>**

Somekeybusinessquestionsaddressed:

> • **TotalCompanyRevenue**.
>
> • **Best-SellingProduct** **Lines**.
>
> • **Top** **5CustomersbyRevenue** **Contribution**. •
> **KeyPerformanceIndicators(KPIs)**:
>
> o TotalOrders
>
> o TotalCustomers o TotalRevenue
>
> o AverageOrder Value
>
> • **MonthlySalesTrends**over time(Year &Month).
>
> **<u>Visualization(Tableau)</u>**

Thecleaned datasetwasimported intoTableautocreate
**interactivedashboards**that showcase:

> • **SalesOverviewDashboard**:Revenue,Orders,Customers,AOV. •
> **Product** **LinePerformance**:Best-sellingcategoriesbyrevenue. •
> **CustomerInsights**:Top customersranked bysales.
>
> • **Time-SeriesAnalysis**:Monthlyrevenuetrendsacrossyears.

Thesedashboardsallowdecision-makersto**trackcompanyperformance,identify**
**growthareas,and** **understand** **customerbehavior**.

**<u>Skills Demonstrated</u>**

> • **SQL(MySQL):**Datacleaning,transformation,EDAqueries.
>
> •
> **DataPreprocessing:**Handlingduplicates,missingvalues,inconsistentformats.
> • **Tableau:**Buildingdashboards,visualstorytelling,KPIs,and trend
> analysis.
>
> • **DataAnalyticsWorkflow:**End-to-end pipelinefrom rawdata→cleaned
> dataset→ insights.
