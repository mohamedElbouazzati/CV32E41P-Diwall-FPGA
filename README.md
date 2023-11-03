# CV32E41P-Diwall-FPGA
FPGA cost implementation for the CV32E41P with Diwall

| Network Processor | HPCs | Diwall | Overhead (LUT) | Overhead (FF) | Freq (MHz) |
|-------------------|------|-------|-----------------|----------------|------------|
| CV32E41P V1 (Base) | 1 (Default) | :x: | 4676 (+00%) | 2136 (+00%) | 65.69 |
| CV32E41P V1' | 2 | :x: | 4777 (+2.16%) | 2217 (+3.79%) | 65.60 |
| CV32E41P V1'' | 3 | :x: | 4897 (+4.73%) | 2298 (+7.58%) | 65.62 |
| CV32E41P V2 (Previous work) | 2 | :white_check_mark: | 5105 (+9.17%) | 2352 (+10.11%) | 65.50 |
| **CV32E41P V3 (This work)** | 3 | :white_check_mark: | 5345 (+14.30%) |2625 (+22.89%) | 65.07 |

# References : 
- Previous work : [M. E. Bouazzati, R. Tessier, P. Tanguy and G. Gogniat, "A Lightweight Intrusion Detection System against IoT Memory Corruption Attacks," 2023 26th International Symposium on Design and Diagnostics of Electronic Circuits and Systems (DDECS), Tallinn, Estonia, 2023, pp. 118-123, doi: 10.1109/DDECS57882.2023.10139718.](https://ieeexplore.ieee.org/document/10139718)
- This work :"under submission"
