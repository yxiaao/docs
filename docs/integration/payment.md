# Payment

## PayType Table

Code | Description 
--------- | ------- 
800008 | Consumer Present QR Code Mode (CPM) for WeChat, Alipay, UNIONPAY Quick Pass
800101 | Alipay Merchant Presented QR Code Payment in store (MPM) (Overseas Merchants)
800108 | Alipay Consumer Presented QR Code Payment (CPM) (Overseas & HK Merchants)
801101 | Alipay Online WEB (in browser Chrome etc.) Payment (Overseas Merchants) **
801107 | Alipay Online WAP (in mobile browser Chrome etc.) Payment (Overseas Merchants) 
801110 | Alipay in-APP Payments (Overseas Merchants)
800107 | Alipay Service Window H5 Payment (in Alipay APP H5 payments)
801501 | Alipay Merchant Presented QR Code (MPM) Payment (HK Merchants)
801510 | Alipay In-App Payment (HK Merchants)
801512 | Alipay Online WAP Payment (HK Merchants)
801514 | Alipay Online WEB Payment (HK Merchants)
800201 | WeChat Merchant Presented QR Code Payment (MPM) (Overseas & HK Merchants)
800208 | WeChat Consumer Presented QR Code Payment (CPM) (Overseas & HK Merchants)
800207 | WeChat JSAPI Payment - WeChat Official Account Payment (in Wechat App)(Overseas & HK Merchants)
800212 | WeChat JSAPI Payment - WeChat Official Account Payment (in Wechat App)(CA Merchants)****
800210 | WeChat in-APP Payment (Overseas & HK Merchants)
800213 | WeChat Mini-Program Payment (Overseas & HK Merchants)
801008 | WeChat Pay HK Consumer Presented QR Code Payment (CPM) (Direct Settlement, HK Merchants) 
801010 | WeChat Pay HK In-App Payment (Direct Settlement, HK Merchants) 
805801 | PayMe Merchant Presented QR Code Payment in store (MPM) (HK Merchants)
805808 | PayMe Consumer Presented QR Code Payment (CPM) (HK Merchants)
805814 | PayMe Online WEB (in browser Chrome etc.) Payment (HK Merchants)
805812 | PayMe Online WAP (in mobile browser Chrome etc.) Payment (HK Merchants) 
805810 | PayMe In-App Payment (HK Merchants)
800701 | UNIONPAY Quick Pass Merchant Presented QR Code Payment (MPM) 
800708 | UNIONPAY Quick Pass Consumer Presented QR Code Payment (CPM) 
801208 | LINEPAY dynamic QRC Payment - Consumer Present Mode (CPM) (TH Merchants)
801301 | LINEPAY Online Payment (TH Merchants)
801408 | AIRPAY dynamic QRC Payment - Consumer Present Mode (CPM) (TH Merchants)
801701 | NETSPAY Merchant Presented QR Code Payment (MPM) 
801801 | Alipay Pre-Authorization dynamic QRC Payment - Consumer Present Mode (CPM)
801808 | Alipay Pre-Authorization dynamic QRC Payment - Merchant Present Mode (MPM)  
801810 | Alipay Pre-Authorization in-APP Payment
801814 | Alipay Pre-Authorization Online Payment
801908 | Origami Consumer Presented QR Code Payment (CPM) 
802001 | FPS Merchant Presented QR Code Payment (MPM) (HK Merchants)*** 
802201 | AIRPAY Online Payment (TH Merchants)
802301 | PayNow Merchant Presented QR Code Payment (MPM) (SG Merchants)*** 
802901 | PromptPay dynamic QRC Payment - Merchant Present Mode (MPM) (TH Merchants)***
803001 | eWallet dynamic QRC Payment - Merchant Present Mode (MPM)
803008 | eWallet dynamic QRC Payment - Consumer Present Mode (CPM)
803101 | VIA dynamic QRC Payment - Merchant Present Mode (MPM) (JP and HK Merchants)
803108 | VIA dynamic QRC Payment - Consumer Present Mode (CPM) (JP and HK Merchants)
803208 | Touch 'n Go (TNG) dynamic QRC Payment - Consumer Present Mode (CPM) (MY Merchants)   
803214 | Touch 'n Go (TNG) Online Payment (MY Merchants)**
803301 | Razer dynamic QRC Payment - Merchant Present Mode (MPM) (MY Merchants)
803308 | Razer dynamic QRC Payment - Consumer Present Mode (CPM) (MY Merchants)
803314 | Razer Online Payment ** (MY Merchants)
803701 | Octopus dynamic QRC Payment - Merchant Present Mode (MPM) (HK Merchants) 
803712 | Octopus WAP Payment (HK Merchants) 
803801 | Dash dynamic QRC Payment - Merchant Present Mode (MPM) (SG Merchants)
803808 | Dash dynamic QRC Payment - Consumer Present Mode (CPM) (SG Merchants)
804001 | Boost dynamic QRC Payment - Merchant Present Mode (MPM) (MY Merchants)
804008 | Boost dynamic QRC Payment - Consumer Present Mode (CPM) (MY Merchants)
804014 | Boost Online Payment (MY Merchants)**
804101 | Maybank dynamic QRC Payment - Merchant Present Mode (MPM) (MY Merchants)
804108 | Maybank dynamic QRC Payment - Consumer Present Mode (CPM) (MY Merchants)
804114 | Maybank Online Payment (MY Merchants)**
804201 | GrabPay dynamic QRC Payment - Merchant Present Mode (MPM) (MY and SG Merchants)
804208 | GrabPay dynamic QRC Payment - Consumer Present Mode (CPM) (MY Merchants)
804214 | GrabPay Online Payment (MY Merchant)** (SG Merchants)*
805208 | TrueMoney dynamic QRC Payment - Consumer Present Mode (CPM) (TH Merchants)
805401 | ThaiQR dynamic QRC Payment - Merchant Present Mode (MPM) (SG and MY Merchants)***
805508 | Credit Card: first_data Quick Payment Mode (HK Merchant) |
805514 | Credit Card: first_data Security Verification Payment Mode (HK Merchants) |
805601 | GoPay dynamic QRC Payment - Merchant Present Mode (MPM)***
805612 | GoPay WAP Payment***

## Currencies

The below listed currencies are currently available in our payment network. Please consult **technical.support@qfpay.global** to verify that your API credentials and selected <code>pay_type</code> support your desired currency.

Code | Description 
--------- | ------- 
AED | Arab Emirates Dirham
CNY | Chinese Yuan
EUR | Euro 
HKD | Hong Kong Dollar 
IDR | Indonesian Rupiah
JPY | Japanese Yen
MMK | Myanmar Kyat
MYR | Malaysian Ringgit 
SGD | Singapore Dollar
THB | Thai Baht
USD | United States Dollar
CAD | Canadian Dollar
AUD | Australian Dollar 

## API Endpoint for Payments

=== "shell"

    ```shell
    Request Header:

    {
      Content-Type: application/x-www-form-urlencoded;
      X-QF-APPCODE: D5589D2A1F2E42A9A60C37**********
      X-QF-SIGN: 6FB43AC29175B4602FF95F8332028F19
    }

    Request Body:

    {
      mchid=ZaMVg*****&out_trade_no=01234567890123&pay_type=800101&txamt=10&txcurrcd=EUR&txdtm=2019-12-25 14:21:28
    }
    ```

=== "python"

    ``` python
    #coding=utf8
    import urllib.request, urllib.parse, urllib.error, urllib.request, urllib.error, urllib.parse, hashlib
    import requests
    import datetime
    import string

    # Enter Client Credentials
    environment = 'https://openapi-test.qfpay.com'
    app_code = 'D5589D2A1F2E42A9A60C37*********'
    client_key = '0E32A59A8B454940A2FF39**********'


    # Create parameter values for data payload
    current_time = datetime.datetime.now().replace(microsecond=0)                                

    print(current_time)

    # Create signature
    def make_req_sign(data, key):
        keys = list(data.keys())
        keys.sort()
        p = []
        for k in keys: 
            v = data[k]
            p.append('%s=%s'%(k,v))
        unsign_str = ('&'.join(p) + key).encode("utf-8")
        s = hashlib.md5(unsign_str).hexdigest()
        return s.upper()


    # Body payload
    txamt = '10' #In USD,EUR,etc. Cent
    txcurrcd = 'EUR'
    pay_type = '800101' # Alipay CPM = 800108 , MPM = 800101
    auth_code='283854702356157409' #CPM only
    out_trade_no = '01234567890123'
    txdtm = current_time
    goods_name = 'test1'   
    auth_code = '280438849930815813'
    mchid = 'ZaMVg*****'
    key = client_key


    #data ={'txamt': txamt, 'txcurrcd': txcurrcd, 'pay_type': pay_type, 'out_trade_no': out_trade_no, 'txdtm': txdtm, 'goods_name': goods_name, 'udid': udid, 'auth_code': auth_code, 'mchid': mchid}
    data ={'txamt': txamt, 'txcurrcd': txcurrcd, 'pay_type': pay_type, 'out_trade_no': out_trade_no, 'txdtm': txdtm, 'mchid': mchid}

    r = requests.post(environment+"/trade/v1/payment",data=data,headers={'X-QF-APPCODE':app_code,'X-QF-SIGN':make_req_sign(data, key)})

    print(r.json())
    ```


=== "java"

    ```java
    import java.text.SimpleDateFormat;
    import java.util.Date;
    import java.util.HashMap;
    import java.util.Map;

    public class TestMain {
        public static void main(String args[]){
            String appcode="D5589D2A1F2E42A9A60C37*********";
            String key="0E32A59A8B454940A2FF39*********";
            String mchid="ZaMVg*****";

            String pay_type="800101";
            String out_trade_no= "01234567890123";
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String date=df.format(new Date());
            String txdtm=date;
            String txamt="10";
            String txcurrcd="EUR";

            Map<String, String> unsortMap = new HashMap<>();
            unsortMap.put("mchid", mchid);
            unsortMap.put("pay_type", pay_type);
            unsortMap.put("out_trade_no", out_trade_no);
            unsortMap.put("txdtm", txdtm);
            unsortMap.put("txamt", txamt);
            unsortMap.put("txcurrcd", txcurrcd);
            //unsortMap.put("product_name", product_name);
            //unsortMap.put("valid_time", "300");

            String data=QFPayUtils.getDataString(unsortMap);
            System.out.println("Data:\n"+data+key);
            String md5Sum=QFPayUtils.getMd5Value(data+key);
            System.out.println("Md5 Value:\n"+md5Sum);

            String url="https://openapi-test.qfpay.com";
            String resp= Requests.sendPostRequest(url+"/trade/v1/payment", data, appcode,key);
            System.out.println(resp);
        }
    }
    ```

=== "javascript"

    ```javascript
    // Enter Client Credentials
    const environment = 'https://openapi-test.qfpay.com'
    const app_code = 'D5589D2A1F2E42A9A60C37*********'
    const client_key = '0E32A59A8B454940A2FF39*********'

    // Generate Timestamp
    var dateTime = new Date().toISOString().replace(/T/, ' ').replace(/\..+/, '')
    console.log(dateTime)

    // Body Payload
    const key = client_key
    var tradenumber = String(Math.round(Math.random() * 1000000000))
    console.log(tradenumber)

    var payload = {
    'txamt': '10', // In USD,EUR,etc. Cent
    'txcurrcd': 'EUR',
    'pay_type': '800101', // Alipay CPM = 800108 , MPM = 800101
    'out_trade_no': tradenumber,
    'txdtm': dateTime,
    'mchid': 'ZaMVg*****'
    };

    // Signature Generation
    const ordered = {};
    Object.keys(payload).sort().forEach(function(key) {
      ordered[key] = payload[key] });
    console.log(ordered)

    var str = [];
    for (var p in ordered)
    if (ordered.hasOwnProperty(p)) {
    str.push((p) + "=" + (ordered[p]));
    }
    var string = str.join("&")+client_key;
    console.log(string)

    const crypto = require('crypto')
    var hashed = crypto.createHash('md5').update(string).digest('hex')
    console.log(hashed)


    // API Request
    var request = require("request");
    request({
      uri: environment+"/trade/v1/payment",
      headers: {
        'X-QF-APPCODE': app_code,
        'X-QF-SIGN': hashed
      },
      method: "POST",
      form: payload,
      }, 
      function(error, response, body) {
      console.log(body);
    });
    ```

=== "php"
    ```php
    <?php
    ob_start();
      function GetRandStr($length){
      $str='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
      $len=strlen($str)-1;
      $randstr='';
      for($i=0;$i<$length;$i++){
      $num=mt_rand(0,$len);
      $randstr .= $str[$num];
      }
      return $randstr;
      }
      
        $url = 'https://test-openapi-eur.qfapi.com';
        $api_type = '/trade/v1/payment';
        $pay_type = '800101';
        //$mchid = "MNxMp11FV35qQN"; //Only agents must provide this parameter
        $app_code = 'FF2FF74F2F2E42769A4A73*********'; //API credentials are provided by QFPay
        $app_key = '7BE791E0FD2E48E6926043B*********'; //API credentials are provided by QFPay
        $now_time = date("Y-m-d H:i:s"); //Get current date-time
        
        $fields_string = '';
        $fields = array(
          //'mchid' => urlencode($mchid),
          'pay_type' => urlencode($pay_type),
          'out_trade_no' => urlencode(GetRandStr(20)),
          'txcurrcd' => urlencode('EUR'),
          'txamt' => urlencode(2200),
          'txdtm' => $now_time
        );
        ksort($fields); //Ascending dictionary sorting A-Z
        print_r($fields);
        
        foreach($fields as $key=>$value) { 
      $fields_string .= $key.'='.$value.'&' ;
      }
      $fields_string = substr($fields_string , 0 , strlen($fields_string) - 1);
      
      $sign = strtoupper(md5($fields_string . $app_key));
      
      //// Header ////
      $header = array();
      $header[] = 'X-QF-APPCODE: ' . $app_code;
      $header[] = 'X-QF-SIGN: ' . $sign;
      
      //Post Data
      $ch = curl_init();
      curl_setopt($ch, CURLOPT_URL, $url . $api_type);
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
      curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
      curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
      curl_setopt($ch, CURLOPT_POST, 1);
      curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);
      $output = curl_exec($ch);
      curl_close($ch);    

      $final_data = json_decode($output, true);
      print_r($final_data);

    ob_end_flush();
    ?>
    ```




### HTTP Request

`POST ../trade/v1/payment`

Listed below are the most common parameters for the payment endpoint. Please refer to the payment scenario applicable to you for additional parameters.


### Public Payment Request Parameters

Parameter name | Parameter code | Mandatory | Type | Description
--------- | -------- | --------- | ------- | ------- 
Payment amount | <code>txamt</code> | Yes | Int(11) | Amount of the transaction. Unit in cents (i.e. 100 = $1) 
Currency | <code>txcurrcd</code> | Yes | String(3) | Transaction currency. View the [Currencies](#currencies) table for a complete list of available currencies
Payment type | <code>pay_type</code> | Yes | String(6) | Please refer to the section [Payment Codes](#payment-codes) for a complete list of payment types
API Order Number | <code>out_trade_no</code> | Yes | String(128)| External transaction number / Merchant platform transaction number: This parameter must be unique for each payment and refund request under the same merchant account in the system.
Request transaction time | <code>txdtm</code> | Yes | String(20) | Transaction time format：<br> YYYY-MM-DD hh:mm:ss 
Authorization Code | <code>auth_code</code> | Yes<br> (CPM only) | String(128) | Specifies the authorization code for scanning a barcode/QR Code. The <code>auth_code</code> returned is unique in each authorization. Each <code>auth_code</code> can be used only once and will automatically expire in one day. For testing CPM with Alipay and WeChat Pay the <code>auth_code</code> can be extracted with any QRC reader or manually found in the consumer wallet below the barcode.
Order expiration time | <code>expired_time</code> | No<br> (MPM only) | String(3)  | QRC expiration time in unit minutes. The default expiration time is 30 minutes. The parameter can manually be adjusted to a minimum of 5 minutes, and up to a maximum of 120 minutes.<br> Available for: <br>800201 - WeChat scan code<br>800101 - Alipay scan code <br>801512 - Alipay Hong Kong WAP payment<br>801501 - Alipay Hong Kong scan code<br>801107 - Alipay overseas WAP payment<br>801101 - Alipay overseas scan code<br>801010 - WeChat Hong Kong APP<br>801510 - Alipay Hong Kong APP
Product name identification | <code>goods_name</code> | No | String(64) | Goods Name / Marking: Cannot exceed 20 alphanumeric or contain special characters. Cannot be empty for app payment. Parameter needs to be **UTF-8** encoded if it is written in Chinese characters.
QF Pay merchant number | <code>mchid</code> | No | String(16) | May or may not be given to merchant. If MCHID is given, it is mandatory to provide the MCHID .On the contrary, if MCHID is not provided, merchants shall not pass in the MCHID parameter in the API request. 
Time zone | <code>txzone</code> | No | String(5) | Transaction Time zone: Record of the transaction in local time, default time zone is Beijing time UTC+8 (+0800). 
Device ID | <code>udid</code> | No | String(40) |  Unique transaction device ID. Is displayed on the merchant portal. 


### Public Payment Response Parameters

Parameter name | Parameter code | Type | Description 
--------- | -------- | --------- | ------- 
Payment type | <code>pay_type</code> | String(6) | Please refer to the section [Payment Codes](#payment-codes) for a complete list of payment types 
System transaction time | <code>sysdtm</code> | String(20) | Format：YYYY-MM-DD hh:mm:ss <br> This parameter value is used as the cut-off time for settlements. | 
Request transaction time | <code>txdtm</code> | String(20) | Format：YYYY-MM-DD hh:mm:ss  | 
Response message | <code>resperr</code> | String(128) |  
Payment amount | <code>txamt</code> | Int(11) |  
Other message information | <code>respmsg</code> | String(128) |  
External transaction number | <code>out_trade_no</code> | String(128) | External transaction number  
QFPay transaction number | <code>syssn</code> | String(40) | 
Wallet/Channel transaction number| <code>chnlsn</code> | String | 
Return code | <code>respcd</code> | String(4) | 0000 = Request successful. <br> 1143/1145 = merchants are required to continue to query the transaction result. <br> All other return codes indicate transaction failure. Please refer to the page [Transaction Status Codes](#transaction-status-codes) for a complete list of response codes. 


> The above command returns JSON structured like this:

```json
{
    "txdtm": "2019-12-25 14:21:28",
    "qrcode": "https://qr.alipay.com/bax01781r3pu4fjaqazt4091",
    "pay_type": "800101",
    "resperr": "success",
    "out_trade_no": "01234567890123",
    "syssn": "20191225000200020060996533",
    "sysdtm": "2019-12-25 14:22:37",
    "paydtm": "2019-12-25 14:22:37",
    "txcurrcd": "EUR",
    "respmsg": "",
    "cardcd": "",
    "udid": "qiantai2",
    "txamt": "10",
    "respcd": "0000",
    "chnlsn": ""
}
```



## Transaction Status Codes

| Return code | Description                                               |
| ---------- | ------------------------------------------------------------ |
| 0000       | Transaction successful    |
| 1100       | System under maintenance (1100)    |
| 1101       | Reversal error (1101)     |
| 1102       | Duplicate request (1102)  |
| 1103       | Request format error (1103)  |
| 1104       | Request parameter error (1104)  | 
| 1105       | Device not activated (1105)  |
| 1106       | Invalid device (1106)  |
| 1107       | Device not allowed (1107)  |
| 1108       | Signature error (1108)    |
| 1125       | Transaction has been refunded already (1125)    |
| 1136       | The transaction does not exist or is not operational (1136)    |
| 1142       | Order already closed (1142)    |
| 1143       | The order has not been paid for, the password is currently being entered (1143)   |
| 1145       | Please wait while processing (1145)    |
| 1147       | Wechat pay transaction error (1147)    |
| 1150       | Your billing method is T0 and does not support canceling transactions. (1150)    |
| 1155       | Refund request denied (1155)    |
| 1181       | Order expired (1181)    |
| 1201       | Insufficient balance, please use a different payment method (1201)   |
| 1202       | Incorrect or expired payment code, please show the correct payment code or refresh the payment code and retry (1202)   |
| 1203       | Merchant account esrror, confirm that the payment account is configured correctly (1203)  |
| 1204       | Bank error, confirm that the payment wallet is functionable (1204)  |
| 1205       | The transaction failed. Please try again later (1205)  |
| 1212       | Please use the UnionPay overseas payment code (1212)  |
| 1241       | The store does not exist or the status is incorrect. Do not conduct payments (1241)  |
| 1242       | The store has not been configured correctly, unable to conduct payments (1242)  |
| 1243       | The store has been disabled. Do not conduct payments, contact the owner to confirm (1243)  |
| 1250       | The transaction is forbidden. For more information please contact QFPay Customer Service Team (1250) |
| 1251       | The store has not been configured correctly, we are currently working to fix this problem (1251)  |
| 1252       | System error when making the order request (1252)  |
| 1254       | A problem occured. We are currently resolving the issue (1254)  |
| 1260       | The order has already been paid for, please confirm the transaction result before conducting more transactions (1260) |
| 1261       | The order has not been paid for, please confirm the transaction result before conducting more transactions (1261)  |
| 1262       | The order has been refunded, please confirm the order status before conducting more transactions (1262)  |
| 1263       | The order has been cancelled, please confirm the order status before conducting more transactions (1263) |
| 1264       | The order has been closed, please confirm the order status before conducting more transactions (1264)  |
| 1265       | The transaction cannot be refunded. Refunds for transactions between 11:30pm to 0:30am and special promotions cannot be processed. (1265)  |
| 1266       | The transaction amount is wrong, please confirm the order status (1266)  |
| 1267       | The order information does not match, please confirm the order status (1267) |
| 1268       | The order does not exist, please confirm the order status (1268) |
| 1269       | Today's unsettled transaction amount is insufficient. Refunds cannot be processed. Please confirm that the balance is sufficient (1269) |
| 1270       | This currency does not support partial refunds (1270) |
| 1271       | The selected transaction does not support partial refunds (1271) |
| 1272       | The refund amount is greater than the maximum amount that can be refunded for the original transaction (1272) |
| 1294       | The transaction may be non-compliant and has been prohibited by the bank (1294) |
| 1295       | The connection is slow, waiting for a network response (1295) |
| 1296       | The connection is slow, waiting for a network response. Please try again later or use other payment methods (1296) |
| 1297       | The banking system is busy. Please try again later or use other payment methods (1297) |
| 1298       | The connection is slow, waiting for a network response. In case you have already paid, do not repeat the payment. Please confirm the result later (1298) |
| 2005       | The customer payment code is incorrect or has expired, please refresh and restart the transaction process (2005) |
| 2011       | Transaction serial number repeats (2011) |



