USE [CSIDW]

GO

/****** Object:  StoredProcedure [dbo].[web_sr_GetAdjustments]    Script Date: 8/2/2017 10:06:54 AM ******/

SET ANSI_NULLS OFF

GO

SET QUOTED_IDENTIFIER OFF

GO


Alter PROCEDURE [dbo].[web_sr_GetAdjustments]

@period nvarchar(50)

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

	  ,CO.[CountryName]

	  ,T.[SubBusinessUnit]

	  ,COM.[CompanyName]

	  ,SSN.[SubSegmentName]

	  ,AST.[AccountSubTypeName]

	  ,SCN.[SubCategoryName]

	  ,CN.[CurrencyName]

	  ,P.[period]

	  

  FROM [CSIDW].[dbo].[Adjustment] A

  INNER JOIN [CSIDW].[dbo].[AdjustmentType] AT ON AT.[AdjustmentTypeID] = A.[AdjustmentTypeID]

  INNER JOIN [CSIDW].[dbo].[PeriodID] P ON P.[PeriodID] = A.[PeriodID]

  INNER JOIN [CSIDW].[dbo].[CurrencyID] CN ON CN.[CurrencyID] = A.[CurrencyID]

  INNER JOIN [CSIDW].[dbo].[CountryID] CO ON CO.[CountryID] = A.[CountryID]

  INNER JOIN [CSIDW].[dbo].[SubBusinessUnitID] T ON T.[SubBusinessUnitID] = A.[SubBusinessUnitID]

  INNER JOIN [CSIDW].[dbo].[CompanyID] COM ON COM.[CompanyID] = A.[CompanyID]

  INNER JOIN [CSIDW].[dbo].[SubSegmentID] SSN ON SSN.[SubSegmentID] = A.[SubSegmentID]

  INNER JOIN [CSIDW].[dbo].[AccountSubTypeID] AST ON AST.[AccountSubTypeID] = A.[AccountSubTypeID]

  INNER JOIN [CSIDW].[dbo].[SubCategoryID] SCN ON SCN.[SubCategoryID] = A.[SubCategoryID]

  WHERE AT.[AdjustmentTypeName] = @AdjustmentTypeName;  

GO  
