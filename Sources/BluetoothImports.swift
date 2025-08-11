#if DEBUG
@preconcurrency import CoreBluetoothMock
import Foundation

public typealias CBManagerState = CBMManagerState
public typealias CBCentralManager = CBMCentralManager
public typealias CBCentralManagerDelegate = CBMCentralManagerDelegate
public typealias CBPeripheral = CBMPeripheral
public typealias CBUUID = CBMUUID
public typealias CBConnectionEventMatchingOption = CBMConnectionEventMatchingOption
public typealias CBPeripheralState = CBMPeripheralState
public typealias CBConnectionEvent = CBMConnectionEvent
public typealias CBService = CBMService
public typealias CBCharacteristic = CBMCharacteristic
public typealias CBL2CAPPSM = CBML2CAPPSM
public typealias CBL2CAPChannel = CBML2CAPChannel
public typealias CBDescriptor = CBMDescriptor
public typealias CBCharacteristicProperties = CBMCharacteristicProperties
public typealias CBCharacteristicWriteType = CBMCharacteristicWriteType
public typealias CBPeripheralDelegate = CBMPeripheralDelegate

extension CBMCentralManager {
    static func using(delegate: CBMCentralManagerDelegate?, queue: DispatchQueue?, options: [String: Any]?) -> CBMCentralManager {
        CBMCentralManagerFactory.instance(delegate: delegate, queue: queue, options: options)
    }
}

#else
@preconcurrency import CoreBluetooth

public typealias CBManagerState = CBManagerState
public typealias CBCentralManager = CBCentralManager
public typealias CBCentralManagerDelegate = CBCentralManagerDelegate
public typealias CBPeripheral = CBPeripheral
public typealias CBUUID = CBUUID
public typealias CBConnectionEventMatchingOption = CBConnectionEventMatchingOption
public typealias CBPeripheralState = CBPeripheralState
public typealias CBConnectionEvent = CBConnectionEvent
public typealias CBService = CBService
public typealias CBCharacteristic = CBCharacteristic
public typealias CBL2CAPPSM = CBL2CAPPSM
public typealias CBL2CAPChannel = CBL2CAPChannel
public typealias CBDescriptor = CBDescriptor
public typealias CBCharacteristicProperties = CBCharacteristicProperties
public typealias CBCharacteristicWriteType = CBCharacteristicWriteType
public typealias CBPeripheralDelegate = CBPeripheralDelegate
#endif
