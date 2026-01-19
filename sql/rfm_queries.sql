-- RFM aggregation query
-- Recency: days since last purchase
-- Frequency: number of unique invoices
-- Monetary: total spend

SELECT
    CustomerID,
    MAX(InvoiceDate) AS last_purchase_date,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(Quantity * UnitPrice) AS monetary
FROM transactions
GROUP BY CustomerID;
