# Merchant data file specification

## Data file naming
MERCHANT-V02-{MID}-{generation_timestamp}.csv

`MID`: Merchant ID

`generation_timestamp`: Unix timestamp of the file generation, e.g. 1587657600000 refers to 24th April 2020 00:00:00

## File Content

### Record type

| Record type | description        |
|-------------|--------------------|
| 00          | header record      |
| 01          | data title         |
| 02          | data row           |
| 99          | tailer record      |

### record type 02 - Data record

| Field No | description                                         |
|----------|-----------------------------------------------------|
| 1        | record type                                         |
| 2        | ID                                                  |
| 3        | Name                                                |
| 4        | role, e.g. merchant, store, etc                     |
| 5        | Address                                             |
| 6        | (reserved)                                          |
| 7        | (reserved)                                          |
| 8        | (reserved)                                          |
| 9        | (reserved)                                          |


### record type 99 - trailer record

| Field No | description                                         |
|----------|-----------------------------------------------------|
| 1        | record type                                         |
| 2        | no. of data rows                                    |


## Samples of data files
(privately shared)