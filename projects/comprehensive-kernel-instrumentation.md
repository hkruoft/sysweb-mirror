---
title: Comprehensive Kernel Instrumentation with Dynamic Binary Instrumentation
image: images/uoft.jpg
---
## Description
Dynamic binary instrumentation (DBI) has been used extensively at the user level to develop bug-finding and security tools, such as Memcheck and Program Shepherd­ing. These tools are supported by sophisticated frameworks, such as DynamoRIO and Intel’s Pin, which enable complete program coverage, simplify the task of writing instrumenta­tion, and preserve the original application behavior. However, comprehensive DBI frameworks do not exist for operating system kernels, thwarting the development of dependability and security tools for kernels. We are porting the user-space DynamoRIO DBI framework to the Linux kernel, enabling comprehensive operating system kernel instrumentation, including the execution of native de­vice drivers. In this presentation, we discuss the key challeng­es in designing an in-kernel DBI framework, and our design for addressing them. We also discuss uses of this framework to develop kernel-space tools for debugging and security.

## Team
- [Angela Demke Brown](https://www.cs.toronto.edu/~demke)
- [Ashvin Goel](http://www.eecg.toronto.edu/~ashvin)
- [Peter Feiner](http://www.cs.toronto.edu/~peter/)

## Sponsor
[![image]({{ "/images/nserc.jpg" | relative_url }}){:width="250px"}](https://www.nserc-crsng.gc.ca/)
