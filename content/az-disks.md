---
title: "Virtual disks"
date: 2019-02-11
draft: false
categories: ["Azure"]
tags: ["az cli", "virtual machine"]
---

[Microsoft documentation](https://docs.microsoft.com/ru-ru/azure/virtual-machines/linux/about-disks-and-vhds)

az vm disk attach \
    --resource-group "psdemo-rg" \
    --vm-name "psdemo-linux-2" \
    --name "psdemo-linux-2-st0" \
    --new \
    --size-gb 25 \
    --sku "Premium_LRS" #Other options are StandardSSD_LRS and Standard_LRS
