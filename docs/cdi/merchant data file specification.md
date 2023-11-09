# Merchant data file specification

## Data file naming
merchant-V02-{MID}-{generation_timestamp}.csv

`MID`: Merchant ID

`generation_timestamp`: Unix timestamp of the file generation, e.g. 1587657600000 refers to 24th April 2020 00:00:00

## File Content

### Record type

| Record type | description        |
|-------------|--------------------|
| 00          | header record (optional)     |
| 01          | data header        |
| 02          | data records       |
| 99          | tailer record      |

### record type 02 - Data record

| Field No | description             |
|----------|-------------------------|
| 1        | record type             |
| 2        | ID                      |
| 3        | Name                    |
| 4        | Role, e.g. merchant, store, etc   |
| 5        | Address                 |
| 6        | Onboard date - format in YYYY-MM-DD |
| 7        | (Reserved)              |
| 8        | (Reserved)              |
| 9        | (Reserved)              |


### record type 99 - trailer record

| Field No | description                                         |
|----------|-----------------------------------------------------|
| 1        | record type                                         |
| 2        | no. of data rows                                    |


## Samples of data files
(privately shared)