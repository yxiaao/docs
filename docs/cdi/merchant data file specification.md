# Merchant data file specification

## Data file naming
merchant-V02-{MID}-{generation_timestamp}.csv

`MID`: Merchant ID

`generation_timestamp`: Unix timestamp of the file generation, e.g. 1587657600000 refers to 24th April 2020 00:00:00

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
| 5        | SID - QFPay stire ID                                |
| 6        | BR No.                                              |
| 7        | no. of transactions of the batch                    |
| 8        | total amount of transactions of the current file    |
| 9        | no. of transactions of the batch                    |
| 10        | total amount of transactions of the current file    |

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
| 2        | no. of transactions of the batch                    |
| 3        | total amount of transactions of the current file    |
| 4        | no. of transactions of the batch                    |
| 5        | total amount of transactions of the current file    |


## Samples of data files
(privately shared)