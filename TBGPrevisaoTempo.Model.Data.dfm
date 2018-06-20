object ModelData: TModelData
  OldCreateOrder = False
  Height = 309
  Width = 527
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 
      'http://apiadvisor.climatempo.com.br/api/v1/weather/locale/5980/c' +
      'urrent?token=97a8f41ef0d91a0b843d52c210ece558'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 56
    Top = 32
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 56
    Top = 88
  end
  object RESTResponse1: TRESTResponse
    Left = 56
    Top = 144
  end
end
