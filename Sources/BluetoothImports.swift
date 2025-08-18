#if CBMDebug
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

public typealias CBManagerState = CoreBluetooth.CBManagerState
public typealias CBCentralManager = CoreBluetooth.CBCentralManager
public typealias CBCentralManagerDelegate = CoreBluetooth.CBCentralManagerDelegate
public typealias CBPeripheral = CoreBluetooth.CBPeripheral
public typealias CBUUID = CoreBluetooth.CBUUID
public typealias CBConnectionEventMatchingOption = CoreBluetooth.CBConnectionEventMatchingOption
public typealias CBPeripheralState = CoreBluetooth.CBPeripheralState
public typealias CBConnectionEvent = CoreBluetooth.CBConnectionEvent
public typealias CBService = CoreBluetooth.CBService
public typealias CBCharacteristic = CoreBluetooth.CBCharacteristic
public typealias CBL2CAPPSM = CoreBluetooth.CBL2CAPPSM
public typealias CBL2CAPChannel = CoreBluetooth.CBL2CAPChannel
public typealias CBDescriptor = CoreBluetooth.CBDescriptor
public typealias CBCharacteristicProperties = CoreBluetooth.CBCharacteristicProperties
public typealias CBCharacteristicWriteType = CoreBluetooth.CBCharacteristicWriteType
public typealias CBPeripheralDelegate = CoreBluetooth.CBPeripheralDelegate
#endif
