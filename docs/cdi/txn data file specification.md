# Data file specification

## Data file naming
TXN-V02-{MID}-{from:YYYYMMDD}-{to:YYYMMDD}-{generation_timestamp}[-{split_index}].csv

`MID`: Merchant ID

`from:YYYYMMDD`: Start date of the transaction, e.g. 20200101 refers to 1st Jan 2020 00:00:00

`to:YYYYMMDD`: End date of the transaction, e.g. 20200101 refers to 1st Jan 2020 23:59:59

`generation_timestamp`: Unix timestamp of the file generation, e.g. 1587657600000 refers to 24th April 2020 00:00:00

`split_index`: Optional, only present when the file is split into multiple files. e.g. 1 refers to the first file of the split files.

## File Content

### Record type

| Record type | description        |
|-------------|--------------------|
| 00          | header record      |
| 01          | transaction header |
| 02          | transaction detail |
| 99          | tailer record      |

### record type 00 - Header record

| Field No | description                                         |
|----------|-----------------------------------------------------|
| 1        | record type                                         |
| 2        | from date                                           |
| 3        | to date                                             |
| 4        | MID - QFPay merchant ID                             |
| 5        | BR No.                                              |
| 6        | total of amount of transactions of the batch        |
| 7        | total of amount of transactions of the current file |

### record type 02 - Data record

| Field No | description             |
|----------|-------------------------|
| 1        | Store Name              |
| 2        | Cashier                 |
| 3        | Transaction type        |
| 4        | Transaction Date        |
| 5        | Transaction time        |
| 6        | Transaction amount      |
| 7        | Transaction status      |
| 8        | Transaction ID          |
| 9        | Original Transaction ID |
| 10       | Currency                |
| 11       | UDID                    |
| 12       | Merchant Order ID       |
| 13       | Remark                  |
| 14       | Store ID                |
| 15       | External Order ID       |
| 16       | Consumer Source         |



### record type 99 - trailer record

| Field No | description                                         |
|----------|-----------------------------------------------------|
| 1        | record type                                         |
| 2        | no. of transactions                                 |
| 3        | total of amount of transactions of the batch        |
| 4        | total of amount of transactions of the current file |


## Samples of data files
(privately shared)