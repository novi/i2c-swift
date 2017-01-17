# i2c-swift

I2C Bus Library for Swift

## Supported Platform

* [I2C tiny USB](https://github.com/novi/i2c_tiny_usb) adapter (Mac)
* I2C Kernel device (/dev/i2c-*) (Linux, Raspberry Pi etc...)

## Building

Install libusb package.

### macOS

```
$ brew install libusb-compat libusb
```

### Linux(Ubuntu 16.04)


```
$ sudo apt-get install i2c-tools libi2c-dev
```

## Usage

```swift
// create a device (see table below.)
let device = try I2CTinyUSB()
// or
let device = try I2CBusDevice(portNumber: 0) 

// write data and read 5 bytes of data to slave address 0x23
let readData = try device.write(toAddress: 0x23, data: dataToWrite, readBytes: 5)
readData.count == 5 // true

```

| Platform | Bus connection |   Driver   |      Class     |
|----------|----------------|------------|----------------|
|  macOS   |  I2C tiny USB  |   libusb   | `I2CTinyUSB`   |
|  Linux   |  I2C tiny USB  | /dev/i2c-* | `I2CBusDevice` | 
|  Linux   | Native I2C bus | /dev/i2c-* | `I2CBusDevice` |  

See [demo project](https://github.com/novi/i2c-swift-example) for every platform.

