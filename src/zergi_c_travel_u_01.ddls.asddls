@EndUserText.label: 'Projection view for Travel'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZERGI_C_TRAVEL_U_01
  as projection on ZERGI_I_TRAVEL_U_01
{
      //ZERGI_I_TRAVEL_U_01
  key TravelID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
      AgencyID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Customer', element: 'CustomerID' } } ]
      CustomerID,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      //ZERGI_I_TRAVEL_U_01
      _Agency,
      _Booking : redirected to composition child ZSERGI_C_BOOKING_U_01,
      _Currency,
      _Customer
}
