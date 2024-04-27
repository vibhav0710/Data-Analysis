--Cleaned Dim_Product Table--
SELECT 
p.ProductKey AS 'Product Key',
p.ProductAlternateKey AS 'Product Item Code',
      --[ProductSubcategoryKey],
      --[WeightUnitMeasureCode],
      --[SizeUnitMeasureCode],
p.EnglishProductName AS 'Product Name',
c.EnglishProductCategoryName AS 'Product Category', --Joined in from Category
s.EnglishProductSubcategoryName AS 'Product Sub Category', --Joined in from Sub Category
      --[SpanishProductName],
      --[FrenchProductName],
      --[StandardCost],
      --[FinishedGoodsFlag],
p.Color AS 'Product Color',
      --[SafetyStockLevel],
      --[ReorderPoint],
      --[ListPrice],
p.Size AS 'Product Size',
      --[SizeRange],
      --[Weight],
      --[DaysToManufacture],
p.ProductLine AS 'Product Line',
      --[DealerPrice],
      --[Class],
      --[Style],
p.ModelName AS 'Product Model Name',
      --[LargePhoto],
p.EnglishDescription AS 'Product Description',
      --[FrenchDescription],
      --[ChineseDescription],
      --[ArabicDescription],
      --[HebrewDescription],
      --[ThaiDescription],
      --[GermanDescription],
      --[JapaneseDescription],
      --[TurkishDescription],
      --[StartDate],
      --[EndDate],
ISNULL(p.Status, 'Outdated') AS 'Product Status'
FROM 
DimProduct p
LEFT JOIN DimProductSubCategory s ON s.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN DimProductCategory c ON c.ProductCategoryKey = s.ProductCategoryKey
ORDER BY p.ProductKey