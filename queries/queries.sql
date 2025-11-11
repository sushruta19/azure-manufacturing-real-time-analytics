-- Landing View
SELECT * 
FROM delta.`abfss://landing@storageadlsmanufacture.dfs.core.windows.net/factory_streaming/feeder`
;

SELECT * 
FROM delta.`abfss://landing@storageadlsmanufacture.dfs.core.windows.net/factory_streaming/drillcutter`
;

SELECT * 
FROM delta.`abfss://landing@storageadlsmanufacture.dfs.core.windows.net/factory_streaming/polisher`
;

SELECT * 
FROM delta.`abfss://landing@storageadlsmanufacture.dfs.core.windows.net/factory_streaming/inspector`
;
-- Bronze View
SHOW TABLES IN cata_manufacture.`01_bronze`;
SELECT * 
FROM cata_manufacture.`01_bronze`.feeder_raw
;

SELECT * FROM cata_manufacture.`01_bronze`.drillcutter_raw ;
SELECT * FROM cata_manufacture.`01_bronze`.polisher_raw ;
SELECT * FROM cata_manufacture.`01_bronze`.inspector_raw ;

-- Silver View
SHOW TABLES IN cata_manufacture.`02_silver`;
SELECT * FROM cata_manufacture.`02_silver`.drillcutter_enriched ;
SELECT * FROM cata_manufacture.`02_silver`.polisher_enriched ;
SELECT * FROM cata_manufacture.`02_silver`.inspector_enriched ;
SELECT * FROM cata_manufacture.`02_silver`.feeder_enriched ;


