CREATE PROCEDURE [dbo].[uspGetAdjustmentDropDownValues]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @listperiod VARCHAR(MAX)

	SELECT @listperiod = COALESCE(@listStr + ',', '') + period
	FROM (
		SELECT DISTINCT period
		FROM dbo.period
		) p;

	DECLARE @listAdjustmentType VARCHAR(MAX)

	SELECT @listAdjustmentType = COALESCE(@listStr + ',', '') + AdjustmentTypeName
	FROM (
		SELECT DISTINCT AdjustmentTypeName
		FROM dbo.AdjustmentType
		) at;

	DECLARE @listCurrencyName VARCHAR(MAX)

	SELECT @listCurrencyName = COALESCE(@listStr + ',', '') + CurrencyName
	FROM (
		SELECT DISTINCT CurrencyName
		FROM dbo.Currency
		) cn;

	DECLARE @listCountryName VARCHAR(MAX)

	SELECT @listCountryName = COALESCE(@listStr + ',', '') + CountryName
	FROM (
		SELECT DISTINCT CountryName
		FROM dbo.Country
		) co;

	DECLARE @listSubBusinessUnit VARCHAR(MAX)

	SELECT @listSubBusinessUnit = COALESCE(@listStr + ',', '') + SubBusinessUnitName
	FROM (
		SELECT DISTINCT SubBusinessUnitName
		FROM dbo.SubBusinessUnit
		) t;

	DECLARE @listCompanyName VARCHAR(MAX)

	SELECT @listCompanyName = COALESCE(@listStr + ',', '') + CompanyName
	FROM (
		SELECT DISTINCT CompanyName
		FROM dbo.Company
		) com;

	DECLARE @listSubSegmentName VARCHAR(MAX)

	SELECT @listSubSegmentName = COALESCE(@listStr + ',', '') + SubSegmentName
	FROM (
		SELECT DISTINCT SubSegmentName
		FROM dbo.SubSegment
		) ssn;

	DECLARE @listAccountSubTypeName VARCHAR(MAX)

	SELECT @listAccountSubTypeName = COALESCE(@listStr + ',', '') + AccountSubTypeName
	FROM (
		SELECT DISTINCT AccountSubTypeName
		FROM dbo.AccountSubType
		) ast;

	DECLARE @listSubCategoryName VARCHAR(MAX)

	SELECT @listSubCategoryName = COALESCE(@listStr + ',', '') + SubCategoryName
	FROM (
		SELECT DISTINCT SubCategoryName
		FROM dbo.SubCategory
		) scn;

	SELECT @listperiod AS PeriodList
		,@listAdjustmentType AS AdjustmentTypeList
		,@listCountryName AS CountryNameList
		,@listSubBusinessUnit AS SubBusinessUnitList
		,@listCompanyName AS CompanyNameList
		,@listSubSegmentName AS SubSegmentNameList
		,@listAccountSubTypeName AS AccountSubTypeNameList
		,@listSubCategoryName AS SubCategoryNameList
		,@listCurrencyName AS CurrencyNameList
END;
