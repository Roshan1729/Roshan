CREATE PROCEDURE [dbo].[uspGetAdjustments]
@listperiod nvarchar(50)
		,@AdjustmentTypeName nvarchar(50)
		,@CountryName nvarchar(50)
		,@SubBusinessUnit nvarchar(50)
		,@CompanyName nvarchar(50)
		,@SubSegmentName nvarchar(50)
		,@AccountSubTypeName nvarchar(50)
		,@SubCategoryName nvarchar(50)
		,@CurrencyName nvarchar(50)
AS   

    SET NOCOUNT ON;  
    SELECT [AdjustmentID]
      ,A.[AdjustmentDate]
      ,A.[PeriodID]
      ,A.[AdjustmentQuantity]
      ,A.[AdjustmentAmountSpotUSD]
      ,A.[AdjustmentAmountLCY]
      ,A.[AdjustmentAmountAvgUSD]
      ,A.[AdjustmentCostSpotUSD]
      ,A.[AdjustmentCostLCY]
      ,A.[AdjustmentCostAvgUSD]
      ,A.[AdjustmentComment]X
      ,A.[CountryID]
      ,A.[SubBusinessUnitID]
      ,A.[CompanyID]
      ,A.[SubSegmentID]
      ,A.[AccountSubTypeID]
      ,A.[SubCategoryID]
      ,A.[CurrencyID]
      ,A.[UpdateUser]
      ,A.[UpdateDate]
      ,AT.[AdjustmentTypeName]
  FROM [CSIDW].[dbo].[Adjustment] A
  INNER JOIN [CSIDW].[dbo].[AdjustmentType] AT ON AT.[AdjustmentTypeID] = A.[AdjustmentTypeID]
  WHERE AT.[AdjustmentTypeName] = @AdjustmentTypeName;  
GO  