#line 1 "sdhc.c"





























#line 1 "d:\\git\\windows-driver-samples\\sd\\miniport\\sdhc\\sdhc.h"



























#pragma once
#line 30 "d:\\git\\windows-driver-samples\\sd\\miniport\\sdhc\\sdhc.h"

#pragma warning(disable:4214)   
#pragma warning(disable:4201)   
#pragma warning(disable:4115)   
























































































































































































































































































































#pragma pack(push)
#pragma pack(1)





typedef struct _SD_HOST_CONTROLLER_REGISTERS {

    union {
        struct {
            USHORT Low;
            USHORT High;
        } Argument2;
        struct {
            USHORT Low;
            USHORT High;
        } SDMAAddress;
    } Argument2;

    USHORT BlockSize;                     

    USHORT BlockCount;                    

    union {
        struct {
            USHORT Low;                  
            USHORT High;                 
        } Argument1;
        ULONG Ulong;
    } Argument1;

    union {
        struct {
            USHORT DMAEnable : 1;
            USHORT BlockCountEnable : 1;
            USHORT AutoCommandEnable : 2;
            USHORT DataTransferDirectionSelect : 1;
            USHORT MultiBlockSelect : 1;
            USHORT Reserved0 : 10;
        } Flags;
        USHORT Value;                     
    } TransferMode;

    union {
        struct {
            USHORT ResponseTypeSelect : 2;
            USHORT Reserved0 : 1;
            USHORT CommandCRCCheckEnable : 1;
            USHORT CommandIndexCheckEnable : 1;
            USHORT DataPresentSelect : 1;
            USHORT CommandType : 2;
            USHORT CommandIndex : 6;
            USHORT Reserved1 : 2;
        } Flags;
        USHORT Value;                     
    } Command;

    union {

        struct {
            union {
                struct {
                    ULONG ReservedManufacturerTest0 : 1;
                    ULONG ReservedManufacturerTest1 : 1;
                    ULONG ReservedAppspecific : 1;
                    ULONG AKE_SEQ_ERROR : 1;
                    ULONG ReservedSDIO : 1;
                    ULONG APP_CMD : 1;
                    ULONG Reserved0 : 2;
                    ULONG READY_FOR_DATA : 1;
                    ULONG CURRENT_STATE : 4;
                    ULONG ERASE_RESSET : 1;
                    ULONG CARD_ECC_DISABLE : 1;
                    ULONG WP_ERASE_SKIP : 1;
                    ULONG CSD_OVERWRITE : 1;
                    ULONG RESERVED_DEFERRED_RESPONSE : 1;
                    ULONG RESERVED : 1;
                    ULONG ERROR : 1;
                    ULONG CC_ERROR : 1;
                    ULONG CARD_ECC_FAILED : 1;
                    ULONG ILLEGAL_COMMAND : 1;
                    ULONG COM_CRC_ERROR : 1;
                    ULONG LOCK_UNLOCK_FAILED : 1;
                    ULONG CARD_IS_LOCKED : 1;
                    ULONG WP_VIOLATION : 1;
                    ULONG ERASE_PARAM : 1;
                    ULONG ERASE_SEQ_ERROR : 1;
                    ULONG BLOCK_LEN_ERROR : 1;
                    ULONG ADDRESS_ERROR : 1;
                    ULONG OUT_OF_RANGE : 1;
                } Flags;
                ULONG Ulong;
            } CardStatus;
        } R1;

        struct {
            ULONG Reserved0[3];
            ULONG CardStatus;
        } R1b;

        struct {
            union {

                struct {
                    USHORT ManufacturingData : 12;
                    USHORT Reserved0 : 4;
                    ULONG SerialNumber;
                    UCHAR Revision;
                    UCHAR ProductName[5];
                    USHORT ApplicationID;
                    UCHAR ManufactureID;
                } CID;

                struct {
                    UCHAR Reserved0 : 2;
                    UCHAR FILE_FORMAT : 2;
                    UCHAR TMP_WRITE_PROTECT : 1;
                    UCHAR PERM_WRITE_PROTECT : 1;
                    UCHAR COPY : 1;
                    UCHAR FILE_FORMAT_GRP : 1;

                    USHORT Reserved1 : 5;
                    USHORT WRITE_BL_PARTIAL : 1;
                    USHORT WRITE_BL_LEN : 4;
                    USHORT R2W_FACTOR : 3;
                    USHORT Reserved2 : 2;
                    USHORT WP_GRP_ENABLE : 1;

                    ULONG WP_GRP_SIZE : 7;
                    ULONG SECTOR_SIZE : 7;
                    ULONG ERASE_BLK_EN : 1;
                    ULONG C_SIZE_MULT : 3;
                    ULONG VDD_W_CURR_MAX : 3;
                    ULONG VDD_W_CURR_MIN : 3;
                    ULONG VDD_R_CURR_MAX : 3;
                    ULONG VDD_R_CURR_MIN : 3;
                    ULONG C_SIZE_LOW : 2;

                    ULONG C_SIZE_HIGH : 10;
                    ULONG Reserved3 : 2;
                    ULONG DSR_IMP : 1;
                    ULONG READ_BLK_MISALIGN : 1;
                    ULONG WRITE_BLK_MISALIGN : 1;
                    ULONG READ_BL_PARTIAL : 1;
                    ULONG READ_BL_LEN : 4;
                    ULONG CCC : 12;

                    UCHAR TRAN_SPEED;
                    UCHAR NSAC;
                    UCHAR TAAC;

                    UCHAR Reserved4 : 6;
                    UCHAR CSD_STRUCTURE : 2;
                } CSDv1;

                struct {
                    UCHAR Reserved0 : 2;
                    UCHAR FILE_FORMAT : 2;
                    UCHAR TMP_WRITE_PROTECT : 1;
                    UCHAR PERM_WRITE_PROTECT : 1;
                    UCHAR COPY : 1;
                    UCHAR FILE_FORMAT_GRP : 1;

                    USHORT Reserved1 : 5;
                    USHORT WRITE_BL_PARTIAL : 1;
                    USHORT WRITE_BL_LEN : 4;
                    USHORT R2W_FACTOR : 3;
                    USHORT Reserved2 : 2;
                    USHORT WP_GRP_ENABLE : 1;

                    ULONG WP_GRP_SIZE : 7;
                    ULONG SECTOR_SIZE : 7;
                    ULONG ERASE_BLK_EN : 1;
                    ULONG Reserved3 : 1;
                    ULONG DeviceSizeLow : 16;

                    ULONG DeviceSizeHigh : 6;
                    ULONG Reserved4 : 6;
                    ULONG DSR_IMP : 1;
                    ULONG READ_BLK_MISALIGN : 1;
                    ULONG WRITE_BLK_MISALIGN : 1;
                    ULONG READ_BL_PARTIAL : 1;
                    ULONG READ_BL_LEN : 4;
                    ULONG CCC : 12;

                    UCHAR TRAN_SPEED : 8;
                    UCHAR NSAC : 8;
                    UCHAR TAAC : 8;
                    UCHAR Reserved5 : 6;
                    UCHAR CSD_STRUCTURE : 2;
                } CSDv2;
            } Register;
        } R2;

        struct {
            union {
                struct {
                    ULONG Reserved0 : 7;
                    ULONG ReservedLowVoltageRange : 1;
                    ULONG Reserved1 : 7;
                    ULONG Voltage27V_28V : 1;
                    ULONG Voltage28V_29V : 1;
                    ULONG Voltage29V_30V : 1;
                    ULONG Voltage30V_31V : 1;
                    ULONG Voltage31V_32V : 1;
                    ULONG Voltage32V_33V : 1;
                    ULONG Voltage33V_34V : 1;
                    ULONG Voltage34V_35V : 1;
                    ULONG Voltage35V_36V : 1;
                    ULONG SwitchingTo18VAccepted : 1;
                    ULONG Reserved2 : 5;
                    ULONG CardCapacityStatus : 1;
                    ULONG CardPowerUpStatus : 1;
                } Flags;
                ULONG ULong;
            } Ocr;
        } R3;

        struct {
            UCHAR Buffer[16];
        } R4;

        struct {
            UCHAR Buffer[16];
        } R5;

        struct {
            union {
                struct {
                    USHORT ReservedManufacturerTest0 : 1;
                    USHORT ReservedManufacturerTest1 : 1;
                    USHORT ReservedAppspecific : 1;
                    USHORT AKE_SEQ_ERROR : 1;
                    USHORT ReservedSDIO : 1;
                    USHORT APP_CMDEnable : 1;
                    USHORT Reserved0 : 2;
                    USHORT READY_FOR_DATA : 1;
                    USHORT CurrentState : 4;

                    USHORT ERROR : 1;
                    USHORT ILLEGAL_COMMAND : 1;
                    USHORT COM_CRC_ERROR : 1;
                } Flags;
                USHORT Register;
            } CardStatusBits;

            USHORT NewRCA : 16;
        } R6;

        struct {
            ULONG CheckPattern : 8;
            ULONG VoltageAccepted : 4;
            ULONG Reserved : 20;
        } R7;

        struct {
            USHORT Response0;                     
            USHORT Response1;                     
            USHORT Response2;                     
            USHORT Response3;                     
            USHORT Response4;                     
            USHORT Response5;                     
            USHORT Response6;                     
            USHORT Response7;                     
        } Words;
        UCHAR Buffer[16];
    } Response;

    union {
        struct {
            USHORT BufferDataPort0;               
            USHORT BufferDataPort1;               
        } Words;
        ULONG Port;
    } BufferDataPort;

    union {
        struct {
            USHORT PresentState0;                 
            USHORT PresentState1;                 
        } Words;
        struct {
            ULONG CommandInhibitCMD : 1;
            ULONG CommandInhibitDAT : 1;
            ULONG DATLineActive : 1;
            ULONG ReTuningRequest : 1;
            ULONG Reserved0 : 4;
            ULONG WriteTransferActive : 1;
            ULONG ReadTransferActive : 1;
            ULONG BufferWriteEnable : 1;
            ULONG BufferReadEnable : 1;
            ULONG Reserved1 : 4;
            ULONG CardInserted : 1;
            ULONG CardStateStable : 1;
            ULONG CardDetectPinLevel : 1;
            ULONG WriteProtectSwitchPinLevel : 1;
            ULONG DATLineSignalLevel : 4;
            ULONG CMDLineSignalLevel : 1;
            ULONG Reserved2 : 7;
        } Flags;
    } PresentState;

    union {
        struct {
            UCHAR LEDControlOn : 1;
            UCHAR DataTransferWidth4Bit : 1;
            UCHAR HighSpeedEnable : 1;
            UCHAR DMASelect : 2;
            UCHAR ExtendedDataTransferWidth8Bit : 1;
            UCHAR CardDetectTestLevelCardInserted : 1;
            UCHAR CardDetectSignalSelectionEnable : 1;
        } Flags;
        UCHAR Byte;                  
    } HostControl1;

    union {
        struct {
            UCHAR SDBusPowerOn : 1;
            UCHAR SDBUSVoltageSelect : 3;
            UCHAR Reserved0 : 4;
        } Flags;
        UCHAR Byte;                  
    } PowerControl;

    union {
        struct {
            UCHAR StopAtBlockGapRequest : 1;
            UCHAR ContinueRequest : 1;
            UCHAR ReadWaitControlEnable : 1;
            UCHAR InterruptAtBlockGapEnable : 1;
            UCHAR Reserved0 : 4;
        } Flags;
        UCHAR Byte;               
    } BlockGapControl;

    union {
        struct {
            UCHAR WakeupEventEnableOnSDCardInterrupt : 1;
            UCHAR WakeupEventEnableOnSDCardInsertion : 1;
            UCHAR WakeupEventEnableOnSDCardRemoval : 1;
            UCHAR Reserved0 : 5;
        } Flags;
        UCHAR Byte;                 
    } WakeupControl;

    union {
        struct {
            USHORT InternalClockEnable : 1;
            USHORT InternalClockStable : 1;
            USHORT SDClockEnable : 1;
            USHORT Reserved0 : 2;
            USHORT ClockGeneratorSelectProgrammable : 1;
            USHORT FrequencySelectUpperBits : 2;
            USHORT FrequencySelectLowerBits : 8;
        } Flags;
        USHORT Word;                  
    } ClockControl;

    union {
        struct {
            UCHAR DataTimeoutCounterValue : 4;
            UCHAR Reserved0 : 4;
        } Flags;
        UCHAR Byte;                
    } TimeoutControl;

    union {
        struct {
            UCHAR SoftwareResetForAll : 1;
            UCHAR SoftwareResetForCMDLine : 1;
            UCHAR SoftwareResetForDATLine : 1;
            UCHAR Reserved0 : 5;
        } Flags;
        UCHAR Byte;                 
    } SoftwareReset;

    union {
        struct {
            USHORT CommandComplete : 1;
            USHORT TransferComplete : 1;
            USHORT BlockGapEvent : 1;
            USHORT DMAInterrupt : 1;
            USHORT BufferWriteReady : 1;
            USHORT BufferReadReady : 1;
            USHORT CardInsertion : 1;
            USHORT CardRemoval : 1;
            USHORT CardInterrupt : 1;
            USHORT INT_A : 1;
            USHORT INT_B : 1;
            USHORT INT_C : 1;
            USHORT RetuningEvent : 1;
            USHORT Reserved0 : 2;
            USHORT ErrorInterrupt : 1;
        } Flags;
        USHORT Word;
    } NormalInterruptStatus;

    union {
        struct {
            USHORT CommandTimeoutError : 1;
            USHORT CommandCRCError : 1;
            USHORT CommandEndBitError : 1;
            USHORT CommandIndexError : 1;
            USHORT DataTimeoutError : 1;
            USHORT DataCRCError : 1;
            USHORT DataEndBitError : 1;
            USHORT CurrentLimitError : 1;
            USHORT AutoCMD12Error : 1;
            USHORT ADMAError : 1;
            USHORT TuningError : 1;
            USHORT Reserved0 : 1;
            USHORT VendorSpecific : 4;
        } Flags;
        USHORT Word;
    } ErrorInterruptStatus;

    union {
        struct {
            USHORT CommandCompleteStatusEnable : 1;
            USHORT TransferCompleteStatusEnable : 1;
            USHORT BlockGapEventStatusEnable : 1;
            USHORT DMAInterruptStatusEnable : 1;
            USHORT BufferWriteReadyStatusEnable : 1;
            USHORT BufferReadReadyStatusEnable : 1;
            USHORT CardInsertionStatusEnable : 1;
            USHORT CardRemovalStatusEnable : 1;
            USHORT CardInterruptStatusEnable : 1;
            USHORT INT_AStatusEnable : 1;
            USHORT INT_BStatusEnable : 1;
            USHORT INT_CStatusEnable : 1;
            USHORT RetuningEventStatusEnable : 1;
            USHORT Reserved0 : 2;
            USHORT FixedToZero : 1;
        } Flags;
        USHORT Word;   
    } NormalInterruptStatusEnable;

    union {
        struct {
            USHORT CommandTimeoutErrorStatusEnable : 1;
            USHORT CommandCRCErrorStatusEnable : 1;
            USHORT CommandEndBitErrorStatusEnable : 1;
            USHORT CommandIndexErrorStatusEnable : 1;
            USHORT DataTimeoutErrorStatusEnable : 1;
            USHORT DataCRCErrorStatusEnable : 1;
            USHORT DataEndBitErrorStatusEnable : 1;
            USHORT CurrentLimitErrorStatusEnable : 1;
            USHORT AutoCMD12ErrorStatusEnable : 1;
            USHORT ADMAErrorStatusEnable : 1;
            USHORT TuningErrorStatusEnable : 1;
            USHORT Reserved0 : 1;
            USHORT VendorSpecificStatusEnable : 4;
        } Flags;
        USHORT Word;
    } ErrorInterruptStatusEnable;    

    union {
        struct {
            USHORT CommandCompleteSignalEnable : 1;
            USHORT TransferCompleteSignalEnable : 1;
            USHORT BlockGapEventSignalEnable : 1;
            USHORT DMAInterruptSignalEnable : 1;
            USHORT BufferWriteReadySignalEnable : 1;
            USHORT BufferReadReadySignalEnable : 1;
            USHORT CardInsertionSignalEnable : 1;
            USHORT CardRemovalSignalEnable : 1;
            USHORT CardInterruptSignalEnable : 1;
            USHORT INT_ASignalEnable : 1;
            USHORT INT_BSignalEnable : 1;
            USHORT INT_CSignalEnable : 1;
            USHORT RetuningEventSignalEnable : 1;
            USHORT Reserved0 : 2;
            USHORT FixedToZero : 1;
        } Flags;
        USHORT Word;
    } NormalInterruptSignalEnable;   

    union {
        struct {
            USHORT CommandTimeoutErrorSignalEnable : 1;
            USHORT CommandCRCErrorSignalEnable : 1;
            USHORT CommandEndBitErrorSignalEnable : 1;
            USHORT CommandIndexErrorSignalEnable : 1;
            USHORT DataTimeoutErrorSignalEnable : 1;
            USHORT DataCRCErrorSignalEnable : 1;
            USHORT DataEndBitErrorSignalEnable : 1;
            USHORT CurrentLimitErrorSignalEnable : 1;
            USHORT AutoCMD12ErrorSignalEnable : 1;
            USHORT ADMAErrorSignalEnable : 1;
            USHORT TuningErrorSignalEnable : 1;
            USHORT Reserved0 : 1;
            USHORT VendorSpecificSignalEnable : 4;
        } Flags;
        USHORT Word;
    } ErrorInterruptSignalEnable;    

    union {
        struct {
            USHORT AutoCMD12NotExecuted : 1;
            USHORT AutoCMD12TimeoutError : 1;
            USHORT AutoCMD12CRCError : 1;
            USHORT AutoCMD12EndBitError : 1;
            USHORT AutoCMDIndexError : 1;
            USHORT Reserved0 : 2;
            USHORT CommandNotIssuedByAutoCMD12Error : 1;
            USHORT Reserved1 : 8;
        } Flags;
        USHORT Word;
    } AutoCMDErrorStatus;            

    union {
        struct {
            USHORT UHSModeSelect : 3;
            USHORT Signalling18V : 1;
            USHORT DriverStrengthSelect : 2;
            USHORT ExecuteTuning : 1;
            USHORT SamplingClockSelect : 1;
            USHORT Reserved : 6;
            USHORT AsynchronousInterruptEnable : 1;
            USHORT PresetValueEnable : 1;
        } Flags;
        USHORT Word;
    } HostControl2;                  

    union {
        struct {
            ULONGLONG TimeoutClockFrequency : 6;
            ULONGLONG Reserved0 : 1;
            ULONGLONG TimeoutClockUnit : 1;
            ULONGLONG BaseClockFrequencyForSDClock : 8;
            ULONGLONG MaxBlockLength : 2;
            ULONGLONG EmbeddedDrive8Bit : 1;
            ULONGLONG ADMA2SUpport : 1;
            ULONGLONG Reserved1 : 1;
            ULONGLONG HighSpeedSupport : 1;
            ULONGLONG SDMASupport : 1;
            ULONGLONG SuspendResumeSupport : 1;
            ULONGLONG VoltageSupport33 : 1;
            ULONGLONG VoltageSupport30 : 1;
            ULONGLONG VoltageSupport18 : 1;
            ULONGLONG Reserved2 : 1;
            ULONGLONG SystemBus64bitSupport : 1;
            ULONGLONG AsynchronousInterruptSupport : 1;
            ULONGLONG SlotType : 2;
            ULONGLONG SDR50Support : 1;
            ULONGLONG SDR104Support : 1;
            ULONGLONG DDR50Support : 1;
            ULONGLONG Reserved3 : 1;
            ULONGLONG DriverTypeASupport : 1;
            ULONGLONG DriverTypeCSupport : 1;
            ULONGLONG DriverTypeDSupport : 1;
            ULONGLONG Reserved4 : 1;
            ULONGLONG TimerCountForRetuning : 4;
            ULONGLONG Reserved5 : 1;
            ULONGLONG UseTuningForSDR50 : 1;
            ULONGLONG RetuningModes : 2;
            ULONGLONG ClockMultiplier : 8;
            ULONGLONG Reserved6 : 8;
        } Flags;
        struct {
            USHORT Capabilities0;                 
            USHORT Capabilities1;                 
            USHORT Capabilities2;                 
            USHORT Capabilities3;                 
        } Words;
        ULONGLONG ULongLong;
    } Capabilities;

    union {
        struct {
            ULONGLONG MaxCurrent33V : 8;
            ULONGLONG MaxCurrent30V : 8;
            ULONGLONG MaxCurrent18V : 8;
            ULONGLONG Reserved0 : 40;
        } Flags;
        struct {
            USHORT MaxCurrentCaps0;               
            USHORT MaxCurrentCaps1;               
            USHORT MaxCurrentCaps2;               
            USHORT MaxCurrentCaps3;               
        } Words;
        ULONGLONG ULongLong;
    } MaxCurrentCaps;

    union {
        struct {
            USHORT ForceEventForAutoCMD12NotExecuted : 1;
            USHORT ForceEventForAutoCMD12TimeoutError : 1;
            USHORT ForceEventForAutoCMD12CRCError : 1;
            USHORT ForceEventForAutoCMD12EndBitError : 1;
            USHORT ForceEventForAutoCMD12IndexError : 1;
            USHORT Reserved0 : 2;
            USHORT ForceEventForCommandNotIssuedByAutoCMD12Error : 1;
            USHORT Reserved1 : 8;
        } Flags;
        USHORT Word;             
    } ForceEventAutoCMDError;

    union {
        struct {
            USHORT ForceCommandTimeoutError : 1;
            USHORT ForceCommandCRCError : 1;
            USHORT ForceCommandEndBitError : 1;
            USHORT ForceCommandIndexError : 1;
            USHORT ForceDataTimeoutError : 1;
            USHORT ForceDataCRCError : 1;
            USHORT ForceDataEndBitError : 1;
            USHORT ForceCurrentLimitError : 1;
            USHORT ForceAutoCMD12Error : 1;
            USHORT ForceADMAError : 1;
            USHORT Reserved0 : 2;
            USHORT VendorSpecific : 4;
        } Flags;
        USHORT Word;           
    } ForceEventInterruptError;

    union {
        struct {
            UCHAR ADMAErrorStates : 2;
            UCHAR ADMALengthMismatchError : 1;
            UCHAR Reserved0 : 5;
        } Flags;
        UCHAR Byte;
    } ADMAErrorStatus;

    UCHAR Reserved0;                     
    USHORT Reserved1;                     

    union {
        struct {
            USHORT ADMASystemAddress0;            
            USHORT ADMASystemAddress1;            
            USHORT ADMASystemAddress2;            
            USHORT ADMASystemAddress3;            
        } Words;
        ULONGLONG ULongLong;
    } ADMASystemAddress;

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueInit;                   

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueDefaultSpeed;           

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueHighSpeed;              

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueSDR12;                  

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueSDR25;                  

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueSDR50;                  

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueSDR104;                 

    union {
        struct {
            USHORT SDCLKFrequencySelectValue : 10;
            USHORT ClockGeneratorSelectValue : 1;
            USHORT Reserved0 : 3;
            USHORT DriverStrengthSelectValue : 2;
        } Flags;
        USHORT Word;
    } PresetValueDDR50;                  

    UCHAR Reserved2[112];                

    union {
        struct {
            ULONG NumberOfClockPins : 3;
            ULONG Reserved0 : 1;
            ULONG NumberOfInterruptInputPins : 2;
            ULONG Reserved1 : 2;
            ULONG BusWidthPreset : 7;
            ULONG Reserved2 : 1;
            ULONG ClockPinSelect : 3;
            ULONG Reserved3 : 1;
            ULONG InterruptPinSelect : 3;
            ULONG Reserved4 : 1;
            ULONG BackEndPowerControl : 7;
            ULONG Reserved5 : 1;
        } Flags;
        struct {
            USHORT Low;           
            USHORT High;         
        } Words;
        ULONG Ulong;
    } SharedBusControl;

    UCHAR Reserved3[12];                 
    UCHAR Reserved4[12];                 

    union {
        struct {
            USHORT Slot1 : 1;
            USHORT Slot2 : 1;
            USHORT Slot3 : 1;
            USHORT Slot4 : 1;
            USHORT Slot5 : 1;
            USHORT Slot6 : 1;
            USHORT Slot7 : 1;
            USHORT Slot8 : 1;
            USHORT Reserved0 : 8;
        } Flags;
        USHORT Word;           
    } SlotInterruptStatus;

    union {
        struct {
            USHORT SpecificationVersionNumber : 8;
            USHORT VendorVersionNumber : 8;
        } Flags;
        USHORT Word;         
    } HostControllerVersion;

} SD_HOST_CONTROLLER_REGISTERS, *PSD_HOST_CONTROLLER_REGISTERS;


C_ASSERT(sizeof(SD_HOST_CONTROLLER_REGISTERS) == 256);

#pragma pack(pop)







#pragma pack(1)





typedef union _SDHC_HOST_CONTROL_REGISTER {
    struct {
        UCHAR LedControl:1;
        UCHAR DataTransferWidth:1;
        UCHAR HgihSpeedEnable:1;
        UCHAR DmaSelect:2;
        UCHAR Reserved1:1;
        UCHAR CardDetectTestLevel:1;
        UCHAR CardDetectSignalSlection:1;
    };
    UCHAR AsUchar;
} SDHC_HOST_CONTROL_REGISTER, *PSDHC_HOST_CONTROL_REGISTER;

typedef union _SDHC_HOST_CONTROL2_REGISTER {
    struct {
        USHORT UhsModeSelect:3;
        USHORT SignalingEnable1_8V:1;
        USHORT DriverStrengthSelect:2;
        USHORT ExecuteTuning:1;
        USHORT SamplingClockSelect:1;
        USHORT Reserved:6;
        USHORT AsyncInterruptEnable:1;
        USHORT PresetValueEnable:1;
    };
    USHORT AsUshort;
} SDHC_HOST_CONTROL2_REGISTER, *PSDHC_HOST_CONTROL2_REGISTER;
        





typedef union _SDHC_POWER_CONTROL_REGISTER {
    struct {
        UCHAR SdBusPower:1;
        UCHAR SdBusPowerSelect:3;
        UCHAR Reserved1:4;
    };
    UCHAR AsUchar;
} SDHC_POWER_CONTROL_REGISTER, *PSDHC_POWER_CONTROL_REGISTER;






typedef union _SDHC_CLOCK_CONTROL_REGISTER {
    struct {
        USHORT InternalClockEnable:1;
        USHORT InternalClockStable:1;
        USHORT SdClockEnable:1;
        USHORT Reserved1:4;
        USHORT SdclkFrequencySelect:8;
    };
    UCHAR AsUshort;
} SDHC_CLOCK_CONTROL_REGISTER, *PSDHC_CLOCK_CONTROL_REGISTER;






typedef union _SDHC_TRANSFER_MODE_REGISTER {
    struct {
        USHORT DmaEnable:1;
        USHORT BlockCountEnable:1;
        USHORT AutoCmd12Enable:1;
        USHORT AutoCmd23Enable:1;
        USHORT DataTranferDirectionSelect:1;
        USHORT BlockModeSelect:1;
        USHORT Reserved2:10;
    };
    USHORT AsUshort;
} SDHC_TRANSFER_MODE_REGISTER, *PSDHC_TRANSFER_MODE_REGISTER;






typedef union _SDHC_CAPABILITIES_REGISTER {
   struct {
        ULONG TimeoutClockFrequency:6;
        ULONG Reserved1:1;
        ULONG TimeoutClockUnit:1;
        ULONG BaseClockFrequency:8;
        ULONG MaxBlockLength:2;
        ULONG Support8BitBus:1;
        ULONG Adma2Support:1;
        ULONG Reserved2:1;
        ULONG HighSpeedSupport:1;
        ULONG DmaSupport:1;
        ULONG SuspendResumeSupport:1;
        ULONG Voltage33:1;
        ULONG Voltage30:1;
        ULONG Voltage18:1;
        ULONG Reserved3:1;
        ULONG SystemBus64Support:1;
        ULONG AsynchronousInterruptSupport:1;
        ULONG SlotType:2;
    };
    ULONG AsUlong;
} SDHC_CAPABILITIES_REGISTER, *PSDHC_CAPABILITIES_REGISTER;

typedef union _SDHC_CAPABILITIES2_REGISTER {
   struct {
        ULONG SDR50Support:1;
        ULONG SDR104Support:1;
        ULONG DDR50Support:1;
        ULONG Reserved1:1;
        ULONG DriverTypeA:1;
        ULONG DriverTypeC:1;
        ULONG DriverTypeD:1;
        ULONG Reserved2:1;
        ULONG RetuningTimerCount:4;
        ULONG Reserved3:1;
        ULONG UseTuningForSDR50:1;
        ULONG RetuningModes:2;
        ULONG ClockMultiplier:8;
        ULONG Reserved4:8;
    };
    ULONG AsUlong;
} SDHC_CAPABILITIES2_REGISTER, *PSDHC_CAPABILITIES2_REGISTER;






































typedef union _SDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY {
    struct {
        ULONG Attribute:3;
        ULONG Reserved1:1;
        ULONG Action:2;
        ULONG Reserved2:10;
        ULONG Length:16;
    };
    ULONG AsUlong;
} SDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY, *PSDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY;

#pragma pack()





typedef union _SDHC_VOLTAGE_PROFILE {
    struct {
        ULONG Reserved1 : 7;
        ULONG VoltageLow : 1;
        ULONG Voltage20 : 1;
        ULONG Voltage21 : 1;
        ULONG Voltage22 : 1;
        ULONG Voltage23 : 1;
        ULONG Voltage24 : 1;
        ULONG Voltage25 : 1;
        ULONG Voltage26 : 1;
        ULONG Voltage27 : 1;
        ULONG Voltage28 : 1;
        ULONG Voltage29 : 1;
        ULONG Voltage30 : 1;
        ULONG Voltage31 : 1;
        ULONG Voltage32 : 1;
        ULONG Voltage33 : 1;
        ULONG Voltage34 : 1;
        ULONG Voltage35 : 1;
    };
    ULONG AsUlong;
} SDHC_VOLTAGE_PROFILE, *PSDHC_VOLTAGE_PROFILE;

typedef enum _SDHC_SPEED_MODE {
    SdhcSpeedModeNormal = 0,
    SdhcSpeedModeHigh,
    SdhcSpeedModeSDR50,
    SdhcSpeedModeDDR50,
    SdhcSpeedModeSDR104,
    SdhcSpeedModeHS200,
    SdhcSpeedModeHS400
} SDHC_SPEED_MODE;



typedef struct _SDHC_EXTENSION {

    BOOLEAN Removable;

    
    
    

    PHYSICAL_ADDRESS PhysicalBaseAddress;
    PVOID BaseAddress;
    SIZE_T BaseAddressSpaceSize;
    PSD_HOST_CONTROLLER_REGISTERS BaseAddressDebug;

    
    
    

    SDPORT_CAPABILITIES Capabilities;
    SDHC_SPEED_MODE SpeedMode;
    UCHAR SpecVersion;

    
    
    

    PSDPORT_REQUEST OutstandingRequests[1];
    USHORT UnhandledEvents;
      
} SDHC_EXTENSION, *PSDHC_EXTENSION;







NTSTATUS
DriverEntry(
    _In_ PVOID DriverObject,
    _In_ PVOID RegistryPath
    );





SDPORT_GET_SLOT_COUNT SdhcGetSlotCount;








SDPORT_GET_SLOT_CAPABILITIES SdhcGetSlotCapabilities;








SDPORT_INITIALIZE SdhcSlotInitialize;







SDPORT_ISSUE_BUS_OPERATION SdhcSlotIssueBusOperation;








SDPORT_GET_CARD_DETECT_STATE SdhcSlotGetCardDetectState;







SDPORT_GET_WRITE_PROTECT_STATE SdhcSlotGetWriteProtectState;







SDPORT_INTERRUPT SdhcSlotInterrupt;












SDPORT_ISSUE_REQUEST SdhcSlotIssueRequest;








SDPORT_GET_RESPONSE SdhcSlotGetResponse;









SDPORT_TOGGLE_EVENTS SdhcSlotToggleEvents;









SDPORT_CLEAR_EVENTS SdhcSlotClearEvents;








SDPORT_REQUEST_DPC SdhcRequestDpc;










SDPORT_SAVE_CONTEXT SdhcSaveContext;







SDPORT_RESTORE_CONTEXT SdhcRestoreContext;







SDPORT_PO_FX_POWER_CONTROL_CALLBACK SdhcPoFxPowerControlCallback;

















NTSTATUS
SdhcResetHost(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ UCHAR ResetType
    );

NTSTATUS
SdhcSetVoltage(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ SDPORT_BUS_VOLTAGE VoltageProfile
    );

NTSTATUS
SdhcSetClock(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Frequency
    );

NTSTATUS
SdhcSetBusWidth(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ UCHAR BusWidth
    );

NTSTATUS
SdhcSetSpeed(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ SDPORT_BUS_SPEED Speed
    );

NTSTATUS
SdhcSetHighSpeed(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    );

NTSTATUS
SdhcSetUhsMode(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ USHORT Mode
    );

NTSTATUS
SdhcSetSignaling(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    );

NTSTATUS
SdhcExecuteTuning(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

VOID
SdhcSetLed(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    );

NTSTATUS
SdhcSetPresetValue(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    );

NTSTATUS
SdhcEnableBlockGapInterrupt(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    );

VOID
SdhcSetBlockGapControl(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Continue,
    _In_ BOOLEAN RequestStop
    );

VOID
SdhcSetBlockGapControl(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Continue,
    _In_ BOOLEAN RequestStop
    );

VOID
SdhcEnableInterrupt(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG NormalMask
    );

VOID
SdhcDisableInterrupt(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG NormalMask
    );

USHORT
SdhcGetInterruptStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

USHORT
SdhcGetErrorStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

USHORT
SdhcGetAutoCmd12ErrorStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

USHORT
SdhcGetAdmaErrorStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

VOID
SdhcAcknowledgeInterrupts(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ USHORT Interrupts
    );

BOOLEAN
SdhcIsCardInserted(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

BOOLEAN
SdhcIsWriteProtected(
    _In_ PSDHC_EXTENSION SdhcExtension
    );

NTSTATUS
SdhcSendCommand(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

NTSTATUS
SdhcGetResponse(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_COMMAND Command,
    _Out_ PVOID ResponseBuffer
    );

NTSTATUS
SdhcSetTransferMode(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

VOID
SdhcReadDataPort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _Out_writes_all_(Length) PUCHAR Buffer,
    _In_ SIZE_T Length
    );

VOID
SdhcWriteDataPort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_reads_(Length) PUCHAR Buffer,
    _In_ ULONG Length
    );

NTSTATUS
SdhcBuildTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

NTSTATUS
SdhcStartTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

NTSTATUS
SdhcBuildPioTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

NTSTATUS
SdhcBuildAdmaTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

NTSTATUS
SdhcStartPioTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );

NTSTATUS
SdhcStartAdmaTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    );





USHORT
SdhcCalcClockFrequency(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG TargetFrequency,
    _Out_opt_ PULONG ActualFrequency
    );

USHORT
SdhcConvertEventsToHwMask(
    _In_ ULONG Events
    );

NTSTATUS
SdhcConvertErrorToStatus(
    _In_ USHORT Error
    );

NTSTATUS
SdhcCreateAdmaDescriptorTable(
    _In_ PSDPORT_REQUEST Request,
    _In_ BOOLEAN Use64BitDescriptor,
    _Out_ PULONG TotalTransferLength
    );

VOID
SdhcInitializePciConfigSpace(
    _In_ PSD_MINIPORT Miniport
    );

__forceinline
USHORT
SdhcGetHwUhsMode(
    _In_ SDPORT_BUS_SPEED BusSpeed
    )

{

    NT_ASSERT(BusSpeed != SdBusSpeedNormal);

    NT_ASSERT(BusSpeed != SdBusSpeedHigh);

    switch (BusSpeed) {
    case SdBusSpeedSDR12:
        return 0x0000;

    case SdBusSpeedSDR25:
        return 0x0001;

    case SdBusSpeedSDR50:
        return 0x0002;

    case SdBusSpeedDDR50:
        return 0x0002;

    case SdBusSpeedSDR104:
        return 0x0002;

    
    
    

    case SdBusSpeedHS200:
    case SdBusSpeedHS400:
    default:
        break;
    }

    NT_ASSERTMSG("SDHC - Invalid bus speed selected", FALSE);

    return 0;
}

__forceinline
USHORT
SdhcConvertEventsToHwMask(
    _In_ ULONG EventMask
    )

{

    return EventMask & 0xFFFF;
}

__forceinline
USHORT
SdhcConvertErrorsToHwMask(
    _In_ ULONG ErrorMask
    )

{

    return ErrorMask & 0xFFFF;
}

__forceinline
NTSTATUS
SdhcConvertErrorToStatus(
    _In_ USHORT Error
    )

{

    if (Error == 0) {
        return STATUS_SUCCESS;
    }

    if (Error & (0x0001 | 0x0010)) {
        return STATUS_IO_TIMEOUT;
    }

    if (Error & (0x0002 | 0x0020)) {
        return STATUS_CRC_ERROR;
    }

    if (Error & (0x0004 | 0x0040)) {
        return STATUS_DEVICE_DATA_ERROR;
    }

    if (Error & 0x0008) {
        return STATUS_DEVICE_PROTOCOL_ERROR;
    }

    if (Error & 0x0080) {
        return STATUS_DEVICE_POWER_FAILURE;
    }

    return STATUS_IO_DEVICE_ERROR;
}






__forceinline
VOID
SdhcWriteRegisterUlong(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _In_ ULONG Data
    )

{

    SdPortWriteRegisterUlong(SdhcExtension->BaseAddress, Register, Data);
    return;
}

__forceinline
VOID
SdhcWriteRegisterUshort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _In_ USHORT Data
    )

{

    SdPortWriteRegisterUshort(SdhcExtension->BaseAddress, Register, Data);
    return;
}

__forceinline
VOID
SdhcWriteRegisterUchar(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _In_ UCHAR Data
    )

{

    SdPortWriteRegisterUchar(SdhcExtension->BaseAddress, Register, Data);
    return;
}

__forceinline
ULONG
SdhcReadRegisterUlong(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register
    )

{
    return SdPortReadRegisterUlong(SdhcExtension->BaseAddress, Register);
}

__forceinline
USHORT
SdhcReadRegisterUshort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register
    )

{
    return SdPortReadRegisterUshort(SdhcExtension->BaseAddress, Register);
}

__forceinline
UCHAR
SdhcReadRegisterUchar(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register
    )

{
    return SdPortReadRegisterUchar(SdhcExtension->BaseAddress, Register);
}

__forceinline
VOID
SdhcReadRegisterBufferUlong(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _Out_writes_all_(Length) PULONG Buffer,
    _In_ ULONG Length)

{
    SdPortReadRegisterBufferUlong(SdhcExtension->BaseAddress,
                                  Register,
                                  Buffer,
                                  Length);
}

__forceinline
VOID
SdhcReadRegisterBufferUshort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _Out_writes_all_(Length) PUSHORT Buffer,
    _In_ ULONG Length)

{
    SdPortReadRegisterBufferUshort(SdhcExtension->BaseAddress,
                                   Register,
                                   Buffer,
                                   Length);
}

__forceinline
VOID
SdhcReadRegisterBufferUchar(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _Out_writes_all_(Length) PUCHAR Buffer,
    _In_ ULONG Length)

{
    SdPortReadRegisterBufferUchar(SdhcExtension->BaseAddress,
                                  Register,
                                  Buffer,
                                  Length);
}

__forceinline
VOID
SdhcWriteRegisterBufferUlong(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _In_reads_(Length) PULONG Buffer,
    _In_ ULONG Length
    )

{

    SdPortWriteRegisterBufferUlong(SdhcExtension->BaseAddress,
                                   Register,
                                   Buffer,
                                   Length);
}

__forceinline
VOID
SdhcWriteRegisterBufferUshort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _In_reads_(Length) PUSHORT Buffer,
    _In_ ULONG Length
    )

{

    SdPortWriteRegisterBufferUshort(SdhcExtension->BaseAddress,
                                    Register,
                                    Buffer,
                                    Length);
}

__forceinline
VOID
SdhcWriteRegisterBufferUchar(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Register,
    _In_reads_(Length) PUCHAR Buffer,
    _In_ ULONG Length
    )

{

    SdPortWriteRegisterBufferUchar(SdhcExtension->BaseAddress,
                                   Register,
                                   Buffer,
                                   Length);

}

__forceinline
UCHAR
SdhcGetResponseLength(
    _In_ PSDPORT_COMMAND Command
    )

















{
    
    UCHAR Length;
    
    switch (Command->ResponseType) {
    case SdResponseTypeR1:
    case SdResponseTypeR3:
    case SdResponseTypeR4:
    case SdResponseTypeR5:
    case SdResponseTypeR6:
    case SdResponseTypeR1B:
    case SdResponseTypeR5B:
        Length = 4;
        break;

    case SdResponseTypeR2:
        Length = 16;
        break;

    case SdResponseTypeNone:
        Length = 0;
        break;

    default:

        NT_ASSERTMSG("Invalid response type", FALSE);

        Length = 0;
        break;
    }

    return Length;
}





#line 31 "sdhc.c"









NTSTATUS
DriverEntry(
    _In_ PVOID DriverObject,
    _In_ PVOID RegistryPath
    )



















{

    SDPORT_INITIALIZATION_DATA InitializationData;

    RtlZeroMemory(&InitializationData, sizeof(InitializationData));
    InitializationData.StructureSize = sizeof(InitializationData);

    
    
    

    InitializationData.GetSlotCount = SdhcGetSlotCount;
    InitializationData.GetSlotCapabilities = SdhcGetSlotCapabilities;
    InitializationData.Initialize = SdhcSlotInitialize;
    InitializationData.IssueBusOperation = SdhcSlotIssueBusOperation;
    InitializationData.GetCardDetectState = SdhcSlotGetCardDetectState;
    InitializationData.GetWriteProtectState = SdhcSlotGetWriteProtectState;
    InitializationData.Interrupt = SdhcSlotInterrupt;
    InitializationData.IssueRequest = SdhcSlotIssueRequest;
    InitializationData.GetResponse = SdhcSlotGetResponse;
    InitializationData.ToggleEvents = SdhcSlotToggleEvents;
    InitializationData.ClearEvents = SdhcSlotClearEvents;
    InitializationData.RequestDpc = SdhcRequestDpc;
    InitializationData.SaveContext = SdhcSaveContext;
    InitializationData.RestoreContext = SdhcRestoreContext;
    InitializationData.PowerControlCallback = SdhcPoFxPowerControlCallback;

    
    
    

    InitializationData.PrivateExtensionSize = sizeof(SDHC_EXTENSION);

    
    
    
    
    return SdPortInitialize(DriverObject, RegistryPath, &InitializationData);
}

NTSTATUS
SdhcGetSlotCount(
    _In_ PSD_MINIPORT Miniport,
    _Out_ PUCHAR SlotCount
    )





















{

    SDPORT_BUS_TYPE BusType;
    UCHAR Data;
    NTSTATUS Status;

    *SlotCount = 0;
    BusType = Miniport->ConfigurationInfo.BusType;
    switch (BusType) {
    case SdBusTypeAcpi:

        
        
        
        

        *SlotCount = 1;
        Status = STATUS_SUCCESS;
        break;

    case SdBusTypePci:
        Data = 0;
        Status = SdPortGetPciConfigSpace(Miniport, 
                                         0x40,
                                         &Data,
                                         sizeof(Data));

        if (!NT_SUCCESS(Status)) {
            return Status;
        }

        *SlotCount = (Data >> 4) + 1;
        if ((*SlotCount) > 6) {

            NT_ASSERT((*SlotCount) <= 6);

            Status = STATUS_UNSUCCESSFUL;
        }

        SdhcInitializePciConfigSpace(Miniport);
        Status = STATUS_SUCCESS;
        break;

    default:

        NT_ASSERT((BusType == SdBusTypeAcpi) || (BusType == SdBusTypePci));

        *SlotCount = 1;
        Status = STATUS_INVALID_PARAMETER;
        break;
    }

    return Status;
}

VOID
SdhcGetSlotCapabilities(
    _In_ PVOID PrivateExtension,
    _Out_ PSDPORT_CAPABILITIES Capabilities
    )




















{

    PSDHC_EXTENSION SdhcExtension;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    RtlCopyMemory(Capabilities, 
                  &SdhcExtension->Capabilities,
                  sizeof(SdhcExtension->Capabilities));
}

NTSTATUS
SdhcSlotInitialize(
    _In_ PVOID PrivateExtension,
    _In_ PHYSICAL_ADDRESS PhysicalBase,
    _In_ PVOID VirtualBase,
    _In_ ULONG Length
    )

















{

    PSDPORT_CAPABILITIES Capabilities;
    SDHC_CAPABILITIES_REGISTER CapabilitiesReg;
    SDHC_CAPABILITIES2_REGISTER Capabilities2Reg;
    ULONG CurrentLimits;
    ULONG CurrentLimitMax;
    ULONG CurrentLimitMask;
    ULONG CurrentLimitShift;
    UCHAR Index;
    PSDHC_EXTENSION SdhcExtension;
    USHORT SpecVersion;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;

    
    
    

    SdhcExtension->PhysicalBaseAddress = PhysicalBase;
    SdhcExtension->BaseAddress = VirtualBase;
    SdhcExtension->BaseAddressSpaceSize = Length;
    SdhcExtension->BaseAddressDebug = 
        (PSD_HOST_CONTROLLER_REGISTERS) VirtualBase;

    
    
    

    Capabilities = (PSDPORT_CAPABILITIES) &SdhcExtension->Capabilities;
    CapabilitiesReg.AsUlong =
        SdhcReadRegisterUlong(SdhcExtension, 0x40);

    Capabilities2Reg.AsUlong =
        SdhcReadRegisterUlong(SdhcExtension, 0x44);

    SpecVersion = SdhcReadRegisterUshort(SdhcExtension, 0xfe);
    Capabilities->SpecVersion = SpecVersion & 0xFF;
    Capabilities->MaximumOutstandingRequests = 1;
    Capabilities->MaximumBlockSize =
        (USHORT)(512 << CapabilitiesReg.MaxBlockLength);

    Capabilities->MaximumBlockCount = 0xFFFF;
    Capabilities->BaseClockFrequencyKhz =
        CapabilitiesReg.BaseClockFrequency * 1000;

    Capabilities->DmaDescriptorSize =
        sizeof(SDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY) +
        (CapabilitiesReg.SystemBus64Support ?
        sizeof(ULONGLONG) : sizeof(ULONG));

    Capabilities->AlignmentRequirement = 
        (CapabilitiesReg.SystemBus64Support ? 
            sizeof(ULONGLONG) : sizeof(ULONG)) - 1;

    
    
    
    

    Capabilities->PioTransferMaxThreshold = 64;
    Capabilities->Flags.UsePioForRead = TRUE;
    Capabilities->Flags.UsePioForWrite = TRUE;

    if (CapabilitiesReg.Adma2Support) {
        Capabilities->Supported.ScatterGatherDma = 1;
    }

    if (CapabilitiesReg.SystemBus64Support) {
        Capabilities->Supported.Address64Bit = 1;
    }

    if (CapabilitiesReg.Support8BitBus) {
        Capabilities->Supported.BusWidth8Bit = 1;
    }

    if (CapabilitiesReg.HighSpeedSupport) {
        Capabilities->Supported.HighSpeed = 1;
    }

    if (Capabilities2Reg.SDR50Support) {
        Capabilities->Supported.SDR50 = 1;
        Capabilities->Supported.SignalingVoltage18V = 1;
    }

    if (Capabilities2Reg.DDR50Support) {
        Capabilities->Supported.DDR50 = 1;
        Capabilities->Supported.SignalingVoltage18V = 1;
    }

    if (Capabilities2Reg.SDR104Support) {
        Capabilities->Supported.SDR104 = 1;
        Capabilities->Supported.SignalingVoltage18V = 1;
    }

    Capabilities->Supported.HS200 = 0;
    Capabilities->Supported.HS400 = 0;

    if (Capabilities2Reg.DriverTypeA) {
        Capabilities->Supported.DriverTypeA = 1;
    }

    if (Capabilities2Reg.DriverTypeC) {
        Capabilities->Supported.DriverTypeC = 1;
    }

    if (Capabilities2Reg.DriverTypeD) {
        Capabilities->Supported.DriverTypeD = 1;
    }

    Capabilities->Supported.DriverTypeB = 1;

    if (Capabilities2Reg.UseTuningForSDR50) {
        Capabilities->Supported.TuningForSDR50 = 1;
    }

    if (Capabilities2Reg.RetuningTimerCount != 0) {
        Capabilities->TuningTimerCountInSeconds =
            (1 << (Capabilities2Reg.RetuningTimerCount - 1));
    }

    if (Capabilities2Reg.RetuningModes == 0) {
        Capabilities->Supported.SoftwareTuning = 1;
    }

    Capabilities->Supported.AutoCmd12 = 1;
    if (SpecVersion >= 2) {
        Capabilities->Supported.AutoCmd23 = 1;
    }

    if (CapabilitiesReg.Voltage18) {
        Capabilities->Supported.Voltage18V;
    }

    if (CapabilitiesReg.Voltage30) {
        Capabilities->Supported.Voltage30V;
    }

    if (CapabilitiesReg.Voltage33) {
        Capabilities->Supported.Voltage33V;
    }

    
    
    

    CurrentLimitMask = 0;
    CurrentLimitShift = 0;
    if (Capabilities->Supported.Voltage33V) {
        CurrentLimitMask = 0xFF;
        CurrentLimitShift = 0;

    } else if (Capabilities->Supported.Voltage30V) {
        CurrentLimitMask = 0xFF00;
        CurrentLimitShift = 8;

    } else if (Capabilities->Supported.Voltage18V) {
        CurrentLimitMask = 0xFF0000;
        CurrentLimitShift = 16;
    }

    CurrentLimits = SdhcReadRegisterUlong(SdhcExtension, 0x48);
    CurrentLimitMax = 
        ((CurrentLimits & CurrentLimitMask) >> CurrentLimitShift) * 4;

    if (CurrentLimitMax >= 800) {
        Capabilities->Supported.Limit800mA;
    }

    if (CurrentLimitMax >= 600) {
        Capabilities->Supported.Limit600mA;
    }

    if (CurrentLimitMax >= 400) {
        Capabilities->Supported.Limit400mA;
    }

    if (CurrentLimitMax >= 200) {
        Capabilities->Supported.Limit200mA;
    }

    
    
    
    

    for (Index = 0; 
         Index < Capabilities->MaximumOutstandingRequests;
         Index += 1) {

        RtlZeroMemory(&SdhcExtension->OutstandingRequests[Index], 
                      sizeof(PSDPORT_REQUEST));
    }

    return STATUS_SUCCESS;
}

NTSTATUS
SdhcSlotIssueBusOperation(
    _In_ PVOID PrivateExtension,
    _In_ PSDPORT_BUS_OPERATION BusOperation
    )



















{

    PSDHC_EXTENSION SdhcExtension;
    NTSTATUS Status;

    Status = STATUS_INVALID_PARAMETER;
    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    switch (BusOperation->Type) {
    case SdResetHost:
        Status = SdhcResetHost(SdhcExtension, 
                               BusOperation->Parameters.ResetType);

        break;

    case SdSetClock:
        Status = SdhcSetClock(SdhcExtension,
                              BusOperation->Parameters.FrequencyKhz);

        break;

    case SdSetVoltage:
        Status = SdhcSetVoltage(SdhcExtension,
                                BusOperation->Parameters.Voltage);

        break;

    case SdSetBusWidth:
        Status = SdhcSetBusWidth(SdhcExtension,
                                 BusOperation->Parameters.BusWidth);

        break;

    case SdSetBusSpeed:
        Status = SdhcSetSpeed(SdhcExtension, BusOperation->Parameters.BusSpeed);
        break;

    case SdSetSignalingVoltage:
        Status = SdhcSetSignaling(SdhcExtension, 
                                  BusOperation->Parameters.SignalingVoltage);

        break;

    case SdSetDriveStrength:
        
        
        break;

    case SdSetDriverType:
        
        

        break;

    case SdSetPresetValue:
        Status = SdhcSetPresetValue(
                    SdhcExtension,
                    BusOperation->Parameters.PresetValueEnabled);

        break;

    case SdSetBlockGapInterrupt:
        Status = SdhcEnableBlockGapInterrupt(
                    SdhcExtension,
                    BusOperation->Parameters.BlockGapIntEnabled);

        break;

    case SdExecuteTuning:
        Status = SdhcExecuteTuning(SdhcExtension);
        break;

    default:
        Status = STATUS_INVALID_PARAMETER;
        break; 
    }

    return Status;
}

BOOLEAN
SdhcSlotGetCardDetectState(
    _In_ PVOID PrivateExtension
    )



















{

    PSDHC_EXTENSION SdhcExtension;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    return SdhcIsCardInserted(SdhcExtension);
}

BOOLEAN
SdhcSlotGetWriteProtectState(
    _In_ PVOID PrivateExtension
    )



















{

    PSDHC_EXTENSION SdhcExtension;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    return SdhcIsWriteProtected(SdhcExtension);
}

BOOLEAN
SdhcSlotInterrupt(
    _In_ PVOID PrivateExtension,
    _Out_ PULONG Events,
    _Out_ PULONG Errors,
    _Out_ PBOOLEAN NotifyCardChange,
    _Out_ PBOOLEAN NotifySdioInterrupt,
    _Out_ PBOOLEAN NotifyTuning
    )

















{

    PSDHC_EXTENSION SdhcExtension;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    *Events = (ULONG) SdhcGetInterruptStatus(SdhcExtension);

    
    
    
    

    if (*Events == 0) {
        return FALSE;
    }

    if (*Events & 0x8000) {
        *Errors = (ULONG) SdhcGetErrorStatus(SdhcExtension);
    }

    
    
    

    if (*Events & (0x0040 | 0x0080)) {
        *NotifyCardChange = TRUE;
        *Events &= ~(0x0040 | 0x0080);
    }

    
    
    
    
    if (*Events & 0x0100) {
        *NotifySdioInterrupt = TRUE;
        *Events &= ~0x0100;
    }

    
    
    

    if (*Events & 0x1000) {
        *NotifyTuning = TRUE;
        *Events &= ~0x1000;
    }

    
    
    
    
    
    

    SdhcAcknowledgeInterrupts(SdhcExtension, (USHORT) *Events);
    return (*Events != 0);
}

NTSTATUS
SdhcSlotIssueRequest(
    _In_ PVOID PrivateExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    ULONG Index;
    PSDHC_EXTENSION SdhcExtension;
    NTSTATUS Status;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;

    
    
    

    for (Index = 0;
         Index < SdhcExtension->Capabilities.MaximumOutstandingRequests;
         Index += 1) {

        if (SdhcExtension->OutstandingRequests[Index] == NULL) {
            SdhcExtension->OutstandingRequests[Index] = Request;
            break;
        }
    }

    
    
    

    switch (Request->Type) {
    case SdRequestTypeCommandNoTransfer:
    case SdRequestTypeCommandWithTransfer:
        Status = SdhcSendCommand(SdhcExtension, Request);
        break;

    case SdRequestTypeStartTransfer:
        Status = SdhcStartTransfer(SdhcExtension, Request);
        break;

    default:
        Status = STATUS_NOT_SUPPORTED;
        break;
    }

    return Status;
}

VOID
SdhcSlotGetResponse(
    _In_ PVOID PrivateExtension,
    _In_ PSDPORT_COMMAND Command,
    _Out_ PVOID ResponseBuffer
    )





















{

    PSDHC_EXTENSION SdhcExtension;
    NTSTATUS Status;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    Status = SdhcGetResponse(SdhcExtension, Command, ResponseBuffer);
    NT_ASSERT(NT_SUCCESS(Status));
}

VOID
SdhcRequestDpc(
    _In_ PVOID PrivateExtension,
    _Inout_ PSDPORT_REQUEST Request,
    _In_ ULONG Events,
    _In_ ULONG Errors
    )



















{

    ULONG Index;
    PSDHC_EXTENSION SdhcExtension;
    NTSTATUS Status;

    
    
    

    Request->RequiredEvents &= ~Events;

    
    
    

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    for (Index = 0; Index < 1; Index += 1) {
        if (SdhcExtension->OutstandingRequests[Index] == Request) {
            break;
        }
    }

    
    
    
    
    
    
    
    
    

    if (Errors) {
        Request->RequiredEvents = 0;
        SdhcExtension->OutstandingRequests[Index] = NULL;
        Status = SdhcConvertErrorToStatus((USHORT) Errors);
        SdPortCompleteRequest(Request, Status);

    } else if (Request->RequiredEvents == 0) {
        if (Request->Status != STATUS_MORE_PROCESSING_REQUIRED) {
            Request->Status = STATUS_SUCCESS;
        }

        SdhcExtension->OutstandingRequests[Index] = NULL;
        SdPortCompleteRequest(Request, Request->Status);
    }
}

VOID
SdhcSlotToggleEvents(
    _In_ PVOID PrivateExtension,
    _In_ ULONG EventMask,
    _In_ BOOLEAN Enable
    )





















{

    USHORT InterruptMask;
    PSDHC_EXTENSION SdhcExtension;

    InterruptMask = SdhcConvertEventsToHwMask(EventMask);
    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    if (Enable) {
        SdhcEnableInterrupt(SdhcExtension, 
                            InterruptMask);

    } else {
        SdhcDisableInterrupt(SdhcExtension, 
                             InterruptMask);
    }
}

VOID
SdhcSlotClearEvents(
    _In_ PVOID PrivateExtension,
    _In_ ULONG EventMask
    )

{

    USHORT Interrupts;
    PSDHC_EXTENSION SdhcExtension;

    SdhcExtension = (PSDHC_EXTENSION) PrivateExtension;
    Interrupts = SdhcConvertEventsToHwMask(EventMask);
    SdhcAcknowledgeInterrupts(SdhcExtension, Interrupts);
}

VOID
SdhcSaveContext(
    _In_ PVOID PrivateExtension
    )

















{
    UNREFERENCED_PARAMETER(PrivateExtension);
}

VOID
SdhcRestoreContext(
    _In_ PVOID PrivateExtension
    )

















{
    UNREFERENCED_PARAMETER(PrivateExtension);
}

NTSTATUS
SdhcPoFxPowerControlCallback(
    _In_ PSD_MINIPORT Miniport,
    _In_ LPCGUID PowerControlCode,
    _In_reads_bytes_opt_(InputBufferSize) PVOID InputBuffer,
    _In_ SIZE_T InputBufferSize,
    _Out_writes_bytes_opt_(OutputBufferSize) PVOID OutputBuffer,
    _In_ SIZE_T OutputBufferSize,
    _Out_opt_ PSIZE_T BytesReturned
    )






























{

    UNREFERENCED_PARAMETER(Miniport);
    UNREFERENCED_PARAMETER(PowerControlCode);
    UNREFERENCED_PARAMETER(InputBuffer);
    UNREFERENCED_PARAMETER(InputBufferSize);
    UNREFERENCED_PARAMETER(OutputBuffer);
    UNREFERENCED_PARAMETER(OutputBufferSize);
    UNREFERENCED_PARAMETER(BytesReturned);

    return STATUS_NOT_IMPLEMENTED;
}
    





_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcResetHost(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ UCHAR ResetType
    )





















{

    UCHAR HostControl;
    UCHAR Reset;
    UCHAR Retries;
    UCHAR Mask;

    switch (ResetType) {
    case SdResetTypeAll:
        Mask = 0x01;
        break;

    case SdResetTypeCmd:
        Mask = 0x02;
        break;

    case SdResetTypeDat:
        Mask = 0x04;
        break;

    default:
        return STATUS_INVALID_PARAMETER;
    }

    
    
    

    Retries = 100;
    SdhcWriteRegisterUchar(SdhcExtension, 0x2f, Mask);
    do {
        Retries -= 1;
        if (Retries == 0) {
            return STATUS_TIMEOUT;
        }

        Reset = SdhcReadRegisterUchar(SdhcExtension, 0x2f);

        if ((Reset & Mask) != 0) {
            SdPortWait(1000);
        }

    } while ((Reset & Mask) != 0);

    
    
    

    SdhcWriteRegisterUchar(SdhcExtension,
                           0x2e,
                           0x0e);

    
    
    

    HostControl = SdhcReadRegisterUchar(SdhcExtension, 0x28);
    HostControl &= ~0x18;
    if (SdhcExtension->Capabilities.Supported.ScatterGatherDma) {
        if (SdhcExtension->Capabilities.Supported.Address64Bit) {
            HostControl |= 0x18;

        } else {
            HostControl |= 0x10;
        }
    }

    SdhcWriteRegisterUchar(SdhcExtension, 0x28, HostControl);
    return STATUS_SUCCESS;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcSetClock(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG Frequency
    )





















{

    ULONG ActualFrequency;
    USHORT ClockControl;
    ULONG Delay;
    USHORT Mask;
    UCHAR Retries;
    
    UNREFERENCED_PARAMETER(Frequency);

    ClockControl = SdhcReadRegisterUshort(SdhcExtension, 0x2c);
    ClockControl &= ~(0x0004 | 0x0001);
    SdhcWriteRegisterUshort(SdhcExtension, 0x2c, ClockControl);
    ClockControl = SdhcCalcClockFrequency(SdhcExtension,
                                          Frequency,
                                          &ActualFrequency);

    ClockControl |= 0x0001;
    SdhcWriteRegisterUshort(SdhcExtension, 0x2c, ClockControl);

    
    
    
    

    Retries = 100;
    Mask = 0x0002;
    do {
        Retries -= 1;
        if (Retries == 0) {
            return STATUS_TIMEOUT;
        }

        ClockControl = 
            SdhcReadRegisterUshort(SdhcExtension, 0x2c);
        
        if ((ClockControl & Mask) == 0) {
            SdPortWait(1000);
        }

    } while ((ClockControl & Mask) == 0);

    
    
    

    ClockControl |= 0x0004;
    SdhcWriteRegisterUshort(SdhcExtension, 0x2c, ClockControl);

    
    
    
    

    Delay = (SdhcExtension->Removable) ? (10 * 1000) : 50;
    SdPortWait(Delay);
    return STATUS_SUCCESS;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcSetVoltage(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ SDPORT_BUS_VOLTAGE Voltage
    )
























{

    ULONG Delay;
    UCHAR Mask;
    UCHAR PowerControl;
    UCHAR PowerControlCheck;
    UCHAR Retries;

    
    
    

    Delay = (SdhcExtension->Removable) ? (10*  1000) : 50;
    SdPortWait(Delay);

    
    
    

    switch (Voltage) {
    case SdBusVoltage33:
        PowerControl = 0x0e;
        break;

    case SdBusVoltage30:
        PowerControl = 0x0c;
        break;

    case SdBusVoltage18:
        PowerControl = 0x0a;
        break;

    case SdBusVoltageOff:
        PowerControl = 0;
        break;

    default:

        NT_ASSERTMSG("SDHC - Voltage profile invalid.", FALSE);

        return STATUS_INVALID_PARAMETER;
    }

    Retries = 100;
    Mask = 0x0e;
    do {
        Retries -= 1;
        if (Retries == 0) {
            return STATUS_TIMEOUT;
        }

        SdhcWriteRegisterUchar(SdhcExtension, 0x29, PowerControl);
        PowerControlCheck = 
            SdhcReadRegisterUchar(SdhcExtension, 0x29);
        
        if ((PowerControlCheck & Mask) != PowerControl) {
            SdPortWait(1000);
        }

    } while ((PowerControlCheck & Mask) != PowerControl);

    PowerControl |= 0x01;
    SdhcWriteRegisterUchar(SdhcExtension, 0x29, PowerControl);
    SdPortWait(Delay);

    Retries = 100;
    Mask = 0x0e | 0x01;
    do {
        Retries -= 1;
        if (Retries == 0) {
            return STATUS_TIMEOUT;
        }

        SdhcWriteRegisterUchar(SdhcExtension, 0x29, PowerControl);
        PowerControlCheck = 
            SdhcReadRegisterUchar(SdhcExtension, 0x29);
        
        if ((PowerControlCheck & Mask) != PowerControl) {
            SdPortWait(1000);
        }

    } while ((PowerControlCheck & Mask) != PowerControl);

    return STATUS_SUCCESS;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcSetBusWidth(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ UCHAR Width
    )



















{

    UCHAR HostControl;

    HostControl = SdhcReadRegisterUchar(SdhcExtension, 0x28);
    HostControl &= ~(0x02 | 0x20);
    switch (Width) {
    case 1:
        break;

    case 4:
        HostControl |= 0x02;
        break;
    case 8:
        HostControl |= 0x20;
        break;

    default:

        NT_ASSERTMSG("SDHC - Provided bus width is invalid", FALSE);

        break;
    }

    SdhcWriteRegisterUchar(SdhcExtension, 0x28, HostControl);
    return STATUS_SUCCESS;
}

NTSTATUS
SdhcSetSpeed(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ SDPORT_BUS_SPEED Speed
    )























{

    NTSTATUS Status;
    USHORT UhsMode;

    switch (Speed) {
    case SdBusSpeedNormal:
        Status = SdhcSetHighSpeed(SdhcExtension, FALSE);
        break;

    case SdBusSpeedHigh:
        Status = SdhcSetHighSpeed(SdhcExtension, TRUE);
        break;

    case SdBusSpeedSDR12:
    case SdBusSpeedSDR25:
    case SdBusSpeedSDR50:
    case SdBusSpeedDDR50:
    case SdBusSpeedSDR104:
    case SdBusSpeedHS200:
    case SdBusSpeedHS400:
        UhsMode = SdhcGetHwUhsMode(Speed);
        Status = SdhcSetUhsMode(SdhcExtension, UhsMode);
        break;

    default:

        NT_ASSERTMSG("SDHC - Invalid speed mode selected.", FALSE);

        Status = STATUS_INVALID_PARAMETER;
        break;
    }

    return Status;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcSetHighSpeed(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    )



















{

    UCHAR HostControl;

    HostControl = SdhcReadRegisterUchar(SdhcExtension, 0x28);
    HostControl &= ~0x04;
    if (Enable) {
        HostControl |= 0x04;
    }

    SdhcWriteRegisterUchar(SdhcExtension, 0x28, HostControl);
    return STATUS_SUCCESS;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcSetUhsMode(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ USHORT Mode
    )























{
    
    USHORT ClockControl;
    USHORT HostControl2;

    HostControl2 = SdhcReadRegisterUshort(SdhcExtension, 0x3e);

    
    
    

    if ((HostControl2 & (0x0000 | 0x0001 | 0x0002 | 0x0003| 0x0004 | 0x0005)) == Mode) {
        return STATUS_SUCCESS;
    }

    ClockControl = SdhcReadRegisterUshort(SdhcExtension, 0x2c);
    ClockControl &= ~0x0004;
    SdhcWriteRegisterUshort(SdhcExtension, 0x2c, ClockControl);
    SdPortWait(10 * 1000);

    
    
    

    HostControl2 &= ~(0x0000 | 0x0001 | 0x0002 | 0x0003| 0x0004 | 0x0005);
    HostControl2 |= Mode;
    SdhcWriteRegisterUshort(SdhcExtension, 0x3e, HostControl2);
    ClockControl = SdhcReadRegisterUshort(SdhcExtension, 0x2c);
    ClockControl |= 0x0004;
    SdhcWriteRegisterUshort(SdhcExtension, 0x2c, ClockControl);
    SdPortWait(10 * 1000);
    return STATUS_SUCCESS;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcSetSignaling(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    )





















{

    USHORT ClockControl;
    ULONG DatLines;
    USHORT HostControl2;
    USHORT Mask;

    
    
    

    ClockControl = SdhcReadRegisterUshort(SdhcExtension, 0x2c);
    ClockControl &= ~0x0004;
    SdhcWriteRegisterUshort(SdhcExtension, 0x2c, ClockControl);
    SdPortWait(10 * 1000);

    
    
    

    DatLines = 0;
    DatLines = 
        (0x00100000 | 0x00200000 | 0x00400000 | 0x00800000) &
        SdhcReadRegisterUlong(SdhcExtension, 0x24);

    if (DatLines != 0) {
        return STATUS_UNSUCCESSFUL;
    }

    
    
    

    HostControl2 = SdhcReadRegisterUshort(SdhcExtension, 0x3e);
    Mask = 0x0008;
    if (Enable) {
        HostControl2 |= Mask;

    } else {
        HostControl2 &= ~Mask;
    }

    SdhcWriteRegisterUshort(SdhcExtension, 0x3e, HostControl2);
    SdPortWait(5 * 1000);
    HostControl2 = SdhcReadRegisterUshort(SdhcExtension, 0x3e);

    
    
    

    if (Enable) {
        if ((HostControl2 & Mask) == 0) {
            return STATUS_UNSUCCESSFUL;
        }
        
    } else {
        if ((HostControl2 & Mask) != 0) {
            return STATUS_UNSUCCESSFUL;
        }
    }

    
    
    

    ClockControl = SdhcReadRegisterUshort(SdhcExtension, 0x2c);
    SdPortWait(10000);

    
    
    

    DatLines = 0;
    DatLines =
        (0x00100000 | 0x00200000 | 0x00400000 | 0x00800000) &
        SdhcReadRegisterUlong(SdhcExtension, 0x24);

    if (DatLines != (0x00100000 | 0x00200000 | 0x00400000 | 0x00800000)) {
        return STATUS_UNSUCCESSFUL;
    }

    return STATUS_SUCCESS;
}

_IRQL_requires_max_(PASSIVE_LEVEL)
NTSTATUS
SdhcExecuteTuning(
    _In_ PSDHC_EXTENSION SdhcExtension
    )





















{

    USHORT HostControl2;
    
    SDPORT_REQUEST TuningRequest;

    HostControl2 = SdhcReadRegisterUshort(SdhcExtension, 0x3e);

    NT_ASSERT((HostControl2 & 0x0040) == 0);

    
    
    
    
    
    

    if ((HostControl2 & 0x0040) == 0) {
        HostControl2 |= 0x0040;
        SdhcWriteRegisterUshort(SdhcExtension,
                                0x3e,
                                HostControl2);
    }

    RtlZeroMemory(&TuningRequest, sizeof(TuningRequest));
    TuningRequest.Command.TransferType = SdTransferTypeSingleBlock;
    TuningRequest.Command.TransferDirection = SdTransferDirectionRead;
    TuningRequest.Command.Class = SdCommandClassStandard;
    TuningRequest.Command.ResponseType = SdResponseTypeR1;
    if (SdhcExtension->SpeedMode == SdhcSpeedModeSDR104) {
        TuningRequest.Command.Index = 19;
        TuningRequest.Command.BlockSize = 64;

    } else {
        TuningRequest.Command.Index = 21;
        TuningRequest.Command.BlockSize = 128;
    }

    
    
    
    
    

    
    
    

    

    return STATUS_SUCCESS;
}

VOID
SdhcSetLed(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    )



















{

    UCHAR HostControl;

    HostControl = SdhcReadRegisterUchar(SdhcExtension, 0x28);
    if (Enable) {
        HostControl |= 0x01;

    } else {
        HostControl &= ~0x01;
    }

    SdhcWriteRegisterUchar(SdhcExtension, 0x28, HostControl);
}

NTSTATUS
SdhcSetPresetValue(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    )




















{

    USHORT HostControl2;

    HostControl2 = SdhcReadRegisterUshort(SdhcExtension, 0x3e);

    NT_ASSERT((HostControl2 & 0x8000) != 0);

    HostControl2 &= ~0x8000;
    if (Enable) {
        HostControl2 |= 0x8000;
    }

    SdhcWriteRegisterUshort(SdhcExtension, 0x3e, HostControl2);
    return STATUS_SUCCESS;
}

NTSTATUS
SdhcEnableBlockGapInterrupt(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Enable
    )





















{

    UCHAR Control;

    Control = SdhcReadRegisterUchar(SdhcExtension, 0x2a);
    if (Enable) {
        Control |= 0x08;

    } else {
        Control &= ~0x08;
    }

    SdhcWriteRegisterUchar(SdhcExtension, 0x2a, Control);
    return STATUS_SUCCESS;
}

VOID
SdhcSetBlockGapControl(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ BOOLEAN Continue,
    _In_ BOOLEAN RequestStop
    )





















{

    UCHAR BlockGapControl;

    BlockGapControl = SdhcReadRegisterUchar(SdhcExtension,
                                            0x2a);

    BlockGapControl &= ~0x02;
    BlockGapControl &= ~0x01;  
    if (Continue) {
        BlockGapControl |= 0x02;
    }

    if (RequestStop) {
        BlockGapControl |= 0x01;
    }
}

VOID
SdhcEnableInterrupt(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG NormalInterruptMask
    )



















{

    USHORT InterruptEnable;

    InterruptEnable =
        SdhcReadRegisterUshort(SdhcExtension, 0x38);

    InterruptEnable |= NormalInterruptMask;

    
    
    

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x38,
                            InterruptEnable);

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x3a,
                            0xFFFF);

    
    
    

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x34,
                            InterruptEnable);

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x36,
                            0xFFFF);
}

VOID
SdhcDisableInterrupt(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG NormalInterruptMask
    )



















{

    USHORT InterruptDisable;

    InterruptDisable =
        SdhcReadRegisterUshort(SdhcExtension, 0x38);

    InterruptDisable &= ~NormalInterruptMask;

    
    
    
    
    SdhcWriteRegisterUshort(SdhcExtension,
                            0x34,
                            InterruptDisable);

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x36,
                            0);

    
    
    

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x38,
                            InterruptDisable);

    SdhcWriteRegisterUshort(SdhcExtension,
                            0x3a,
                            0);
}

__forceinline
USHORT
SdhcGetInterruptStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    )



















{

    USHORT InterruptStatus;

    InterruptStatus = 
        SdhcReadRegisterUshort(SdhcExtension, 0x30);

    
    
    
    

    if (InterruptStatus == 0xFFFF) {
        return 0;
    }

    return InterruptStatus;
}

__forceinline
USHORT
SdhcGetErrorStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    )

















{

    return SdhcReadRegisterUshort(SdhcExtension, 0x32);
}

__forceinline
USHORT
SdhcGetAutoCmd12ErrorStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    )

















{

    return SdhcReadRegisterUshort(SdhcExtension, 0x3c);
}

USHORT
SdhcGetAdmaErrorStatus(
    _In_ PSDHC_EXTENSION SdhcExtension
    )

















{

    return SdhcReadRegisterUshort(SdhcExtension, 0x54);
}

VOID
SdhcAcknowledgeInterrupts(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ USHORT Interrupts
    )



















{

    if ((Interrupts & 0x8000) != 0) {

        
        
        
        
        
        
        
        

        SdhcWriteRegisterUshort(SdhcExtension, 
                                0x3c,
                                0xFFFF);

        SdhcWriteRegisterUshort(SdhcExtension,
                                0x3c,
                                0x0);

        
        
        

        SdhcWriteRegisterUshort(SdhcExtension, 0x32, 0xFFFF);
        Interrupts &= ~0x8000;
    }

    
    
    

    SdhcWriteRegisterUshort(SdhcExtension, 0x30, Interrupts);
}

BOOLEAN
SdhcIsCardInserted(
    _In_ PSDHC_EXTENSION SdhcExtension
    )

















{

    ULONG PresentState;

    PresentState = SdhcReadRegisterUlong(SdhcExtension, 0x24);
    return (BOOLEAN) ((PresentState & 0x00010000) != 0);
}

BOOLEAN
SdhcIsWriteProtected(
    _In_ PSDHC_EXTENSION SdhcExtension
    )

















{

    ULONG PresentState;
    BOOLEAN WriteProtected;

    
    
    

    PresentState = SdhcReadRegisterUlong(SdhcExtension, 0x24);
    WriteProtected = (BOOLEAN) ((PresentState & 0x00080000) == 0);
    return WriteProtected;
}

NTSTATUS
SdhcSendCommand(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )























{

    PSDPORT_COMMAND Command;
    USHORT CommandType;
    USHORT CommandReg;
    NTSTATUS Status;
    USHORT TransferMode;

    
    
    

    Command = &Request->Command;
    if ((Command->TransferType != SdTransferTypeNone) &&
        (Command->TransferType != SdTransferTypeUndefined)) {

        Status = SdhcBuildTransfer(SdhcExtension, Request);
        if (!NT_SUCCESS(Status)) {
            return Status;
        }
    }

    
    
    

    SdhcWriteRegisterUlong(SdhcExtension, 0x08, Command->Argument);

    CommandReg = Command->Index << 8;
    switch (Command->ResponseType) {
    case SdResponseTypeNone:
        break;

    case SdResponseTypeR1:
    case SdResponseTypeR5:
    case SdResponseTypeR6:
        CommandReg |= 0x0002 | 
                      0x0008 | 
                      0x0010;
        break;

    case SdResponseTypeR1B:
    case SdResponseTypeR5B:
        CommandReg |= 0x0003 |
                      0x0008 | 
                      0x0010;
        break;

    case SdResponseTypeR2:
        CommandReg |= 0x0001 | 
                      0x0008;
        break;

    case SdResponseTypeR3:
    case SdResponseTypeR4:
        CommandReg |= 0x0002;
        break;
    
    default:

        NT_ASSERTMSG("SDHC - Invalid response type", FALSE);

        return STATUS_INVALID_PARAMETER;
    }

    if (Request->Command.TransferType != SdTransferTypeNone) {
        TransferMode = 0;
        CommandReg |= 0x0020;

    } else {
        TransferMode = 
            SdhcReadRegisterUshort(SdhcExtension, 0x0c);

        TransferMode &= ~0x0001;
        TransferMode &= ~0x0004;
        TransferMode &= ~0x0008;
        SdhcWriteRegisterUshort(SdhcExtension,
                                0x0c,
                                TransferMode);
    }

    switch (Command->Type) {
    case SdCommandTypeSuspend:
        CommandType = 0x0040;
        break;

    case SdCommandTypeResume:
        CommandType = 0x0080;
        break;

    case SdCommandTypeAbort:
        CommandType = 0x0060;
        break;

    default:
        CommandType = 0;
        break;
    }

    
    
    
    
    
    
    
    Request->RequiredEvents = 0x0001;
    if ((Command->ResponseType == SdResponseTypeR1B) ||
        (Command->ResponseType == SdResponseTypeR5B)) {

        Request->RequiredEvents |= 0x0002;
    }

    if (Request->Command.TransferMethod == SdTransferMethodSgDma) {
        Request->RequiredEvents |= 0x0002;

    } else if (Request->Command.TransferMethod == SdTransferMethodPio) {
        if (Request->Command.TransferDirection == SdTransferDirectionRead) {
            Request->RequiredEvents |= 0x0020;

        } else {
            Request->RequiredEvents |= 0x0010;
        }
    }

    
    
    

    CommandReg |= CommandType;
    SdhcWriteRegisterUshort(SdhcExtension, 0x0e, CommandReg);

    
    
    

    return STATUS_PENDING;
}

NTSTATUS
SdhcGetResponse(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_COMMAND Command,
    _Out_ PVOID ResponseBuffer
    )






















{

    UCHAR Index;
    PUCHAR Response;
    UCHAR ResponseLength;

    ResponseLength = SdhcGetResponseLength(Command);
    if (ResponseLength > 16) {
        return STATUS_INVALID_PARAMETER;
    }

    Response = (PUCHAR) ResponseBuffer;
    for (Index = 0; Index < ResponseLength; Index += 1) {

#pragma prefast(suppress: 22103, "Response length is guaranteed to be <= ResponseLength.")

        Response[Index] = 
            SdhcReadRegisterUchar(SdhcExtension, 0x10 + Index);
    }

    return STATUS_SUCCESS;
}

NTSTATUS
SdhcSetTransferMode(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )





















{

    USHORT BlockCount;
    USHORT BlockSize;
    USHORT TransferMode;

    NT_ASSERT(Request->Command.TransferMethod != SdTransferMethodUndefined);

    BlockCount = Request->Command.BlockCount;
    if (Request->Command.BlockSize > 2048) {

        NT_ASSERTMSG("SDHC - Invalid block size for command", FALSE);

        return STATUS_INVALID_PARAMETER;
    }

    if ((Request->Command.TransferDirection != SdTransferDirectionRead) &&
        (Request->Command.TransferDirection != SdTransferDirectionWrite)) {

        return STATUS_INVALID_PARAMETER;
    }

    TransferMode &= ~(0x0004 |
                      0x0008 |
                      0x0001 |
                      0x0002 |
                      0x0020);

    

    

    if (BlockCount > 1) {
        TransferMode |= 0x0020;
        TransferMode |= 0x0002;
        TransferMode |= 0x0004;
    }

    if (Request->Command.TransferMethod == SdTransferMethodSgDma) {
        TransferMode |= 0x0001;

    } else {

        NT_ASSERT(Request->Command.TransferMethod == SdTransferMethodPio);

    }

    BlockSize = Request->Command.BlockSize;
    TransferMode &= ~0x0010;
    if (Request->Command.TransferDirection == SdTransferDirectionRead) {
        TransferMode |= 0x0010;
    }

    SdhcWriteRegisterUlong(SdhcExtension, 0x00, BlockCount);
    SdhcWriteRegisterUshort(SdhcExtension, 0x04, BlockSize);
    SdhcWriteRegisterUshort(SdhcExtension, 0x06, BlockCount);
    SdhcWriteRegisterUshort(SdhcExtension, 0x0c, TransferMode);
    return STATUS_SUCCESS;
}

VOID
SdhcReadDataPort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _Out_writes_all_(Length) PUCHAR Buffer,
    _In_ SIZE_T Length
    )

































{

    PUCHAR Port;

    Port = (PUCHAR) SdhcExtension->BaseAddress + 0x20;
    while (Length >= sizeof(ULONG)) {
        SdhcReadRegisterBufferUlong(SdhcExtension,
                                    0x20,
                                    (PULONG) Buffer,
                                    1);

        Buffer += sizeof(ULONG);
        Length -= sizeof(ULONG);
    }

    if (Length >= sizeof(USHORT)) {
        SdhcReadRegisterBufferUshort(SdhcExtension,
                                     0x20,
                                     (PUSHORT) Buffer,
                                     1);

        Buffer += sizeof(USHORT);
        Length -= sizeof(USHORT);
    }

    if (Length >= sizeof(UCHAR)) {
        SdhcReadRegisterBufferUchar(SdhcExtension, 
                                    0x20 + sizeof(USHORT),
                                    Buffer,
                                    1);
    }
}

VOID
SdhcWriteDataPort(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_reads_(Length) PUCHAR Buffer,
    _In_ ULONG Length
    )

































{

    while (Length >= sizeof(ULONG)) {
        SdhcWriteRegisterBufferUlong(SdhcExtension,
                                     0x20,
                                     (PULONG) Buffer,
                                     1);

        Buffer += sizeof(ULONG);
        Length -= sizeof(ULONG);
    }

    if (Length >= sizeof(USHORT)) {
        SdhcWriteRegisterBufferUshort(SdhcExtension,
                                      0x20,
                                      (PUSHORT) Buffer,
                                      1);

        Buffer += sizeof(USHORT);
        Length -= sizeof(USHORT);
    }

    if (Length >= sizeof(UCHAR)) {
        SdhcWriteRegisterBufferUchar(SdhcExtension,
                                     0x20 + sizeof(USHORT),
                                     Buffer,
                                     1);
    }

    NT_ASSERT((SdhcReadRegisterUshort(SdhcExtension, 0x32) & 
              0x2000) == 0);
}

NTSTATUS
SdhcBuildTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    NTSTATUS Status;

    NT_ASSERT(Request->Command.TransferType != SdTransferTypeNone);

    NT_ASSERT(Request->Command.TransferMethod != SdTransferMethodUndefined);

    switch (Request->Command.TransferMethod) {
    case SdTransferMethodPio:
        Status = SdhcBuildPioTransfer(SdhcExtension, Request);
        break;

    case SdTransferMethodSgDma:
        Status = SdhcBuildAdmaTransfer(SdhcExtension, Request);
        break;

    default:
        Status = STATUS_NOT_SUPPORTED;
        break;
    }

    return Status;
}

NTSTATUS
SdhcStartTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    NTSTATUS Status;

    NT_ASSERT(Request->Command.TransferType != SdTransferTypeNone);

    switch (Request->Command.TransferMethod) {
    case SdTransferMethodPio:
        Status = SdhcStartPioTransfer(SdhcExtension, Request);
        break;

    case SdTransferMethodSgDma:
        Status = SdhcStartAdmaTransfer(SdhcExtension, Request);
        break;

    default:
        Status = STATUS_NOT_SUPPORTED;
        break;
    }

    return Status;
}

NTSTATUS
SdhcBuildPioTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    return SdhcSetTransferMode(SdhcExtension, Request);
}


NTSTATUS
SdhcBuildAdmaTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    NTSTATUS Status;
    ULONG TransferLength;

    Status = SdhcSetTransferMode(SdhcExtension, Request);
    if (!NT_SUCCESS(Status)) {
        return Status;
    }

    NT_ASSERT(Request->Command.ScatterGatherList != NULL);

    
    
    

    Status = 
        SdhcCreateAdmaDescriptorTable(
            Request, 
            (BOOLEAN) SdhcExtension->Capabilities.Supported.Address64Bit,
            &TransferLength);

    if (!NT_SUCCESS(Status)) {
        return Status;
    }

    SdhcWriteRegisterUlong(SdhcExtension, 
                           0x58, 
                           Request->Command.DmaPhysicalAddress.LowPart);

    if (SdhcExtension->Capabilities.Supported.Address64Bit) {
        SdhcWriteRegisterUlong(SdhcExtension,
                               0x5c,
                               Request->Command.DmaPhysicalAddress.HighPart);
    } else {

        NT_ASSERT(Request->Command.DmaPhysicalAddress.HighPart == 0);

    }

    return STATUS_SUCCESS;
}

NTSTATUS
SdhcStartPioTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    NT_ASSERT((Request->Command.TransferDirection == SdTransferDirectionRead) ||
              (Request->Command.TransferDirection == SdTransferDirectionWrite));

    if (Request->Command.TransferDirection == SdTransferDirectionRead) {
        SdhcReadDataPort(SdhcExtension,
                         Request->Command.DataBuffer,
                         Request->Command.BlockSize);

    } else {
        SdhcWriteDataPort(SdhcExtension,
                          Request->Command.DataBuffer,
                          Request->Command.BlockSize);
    }

    Request->Command.BlockCount -= 1;
    if (Request->Command.BlockCount >= 1) {
        Request->Command.DataBuffer += Request->Command.BlockSize;
        if (Request->Command.TransferDirection == SdTransferDirectionRead) {
            Request->RequiredEvents |= 0x0020;

        } else {
            Request->RequiredEvents |= 0x0010;
        }

        Request->Status = STATUS_MORE_PROCESSING_REQUIRED;

    } else {

        NT_ASSERT(Request->Command.BlockCount == 0);

        Request->RequiredEvents |= 0x0002;
        Request->Status = STATUS_SUCCESS;
    }

    return STATUS_PENDING;
}

NTSTATUS
SdhcStartAdmaTransfer(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ PSDPORT_REQUEST Request
    )



















{

    UNREFERENCED_PARAMETER(SdhcExtension);

    Request->Status = STATUS_SUCCESS;
    SdPortCompleteRequest(Request, Request->Status);
    return STATUS_SUCCESS;
}

USHORT
SdhcCalcClockFrequency(
    _In_ PSDHC_EXTENSION SdhcExtension,
    _In_ ULONG TargetFrequency,
    _Out_opt_ PULONG ActualFrequency
    )





















{

    ULONG BaseFrequency;
    USHORT ClockControl;
    ULONG Divisor;
    USHORT SpecVersion;

    *ActualFrequency = 0;
    BaseFrequency = SdhcExtension->Capabilities.BaseClockFrequencyKhz;
    Divisor = ((BaseFrequency / TargetFrequency) > (1) ? (BaseFrequency / TargetFrequency) : (1));

    NT_ASSERT(Divisor > 0);

    SpecVersion = SdhcReadRegisterUshort(SdhcExtension, 0xfe) & 0xFF;
    if (SpecVersion > 2) {

        
        
        
        

        Divisor = 1;
        while (((BaseFrequency / Divisor) > TargetFrequency) &&
               (Divisor < 256)) {

            Divisor <<= 1;
        }

        *ActualFrequency = BaseFrequency / Divisor;
        Divisor >>= 1;
        ClockControl = ((USHORT) Divisor << 8);

    } else {

        
        
        

        Divisor = BaseFrequency / TargetFrequency;
        Divisor >>= 1;
        if ((TargetFrequency < BaseFrequency) &&
            (TargetFrequency * 2 * Divisor != BaseFrequency)) {

            Divisor += 1;
        }

        if (Divisor > 2046 / 2) {
            Divisor = 2046 / 2;
        }

        if (Divisor == 0) {
            *ActualFrequency = BaseFrequency;

        } else {
            *ActualFrequency = BaseFrequency / Divisor;
            *ActualFrequency >>= 1;
        }

        ClockControl = ((USHORT) Divisor & 0xFF) << 8;
        Divisor >>= 8;
        ClockControl |= ((USHORT) Divisor & 0x03) << 6;
    }

    NT_ASSERT((BaseFrequency <= TargetFrequency) ? (Divisor == 0) : TRUE);

    return ClockControl;
}

NTSTATUS
SdhcCreateAdmaDescriptorTable(
    _In_ PSDPORT_REQUEST Request,
    _In_ BOOLEAN Use64BitDescriptor,
    _Out_ PULONG TotalTransferLength
    )























{

    PUCHAR Buffer;
    PSDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY Descriptor;
    ULONG NumberOfElements;
    PHYSICAL_ADDRESS NextAddress;
    ULONG NextLength;
    ULONG RemainingLength;
    PSCATTER_GATHER_ELEMENT SglistElement;
    
    Buffer = Request->Command.DmaVirtualAddress;
    Descriptor = NULL;
    NumberOfElements = Request->Command.ScatterGatherList->NumberOfElements;
    SglistElement = &Request->Command.ScatterGatherList->Elements[0];
    *TotalTransferLength = 0;

    NT_ASSERT(NumberOfElements > 0);

    
    
    
    

    while (NumberOfElements > 0) {
        RemainingLength = SglistElement->Length;
        NextAddress.QuadPart = SglistElement->Address.QuadPart;

        NT_ASSERT(RemainingLength > 0);

        while (RemainingLength > 0) {
            Descriptor = (PSDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY) Buffer;
            Buffer += sizeof(SDHC_ADMA2_DESCRIPTOR_TABLE_ENTRY);

            NT_ASSERT((ULONG_PTR) Buffer <
                      (ULONG_PTR) Request->Command.DmaVirtualAddress + 
                                  Request->Command.Length);

            NextLength = ((0x0000F000) > (RemainingLength) ? (RemainingLength) : (0x0000F000));
            RemainingLength -= NextLength;

            
            
            

            Descriptor->AsUlong = 0;
            Descriptor->Action = 0x00000002;
            Descriptor->Attribute = 0x00000001;
            Descriptor->Length = NextLength;
            *TotalTransferLength += NextLength;

            
            
            

            if (Use64BitDescriptor) {
                *((PULONGLONG) Buffer) = NextAddress.QuadPart;
                Buffer += sizeof(LONGLONG);

            } else {

                
                
                
                
                

                NT_ASSERT(NextAddress.HighPart == 0);

                *((PULONG) Buffer) = NextAddress.LowPart;
                Buffer += sizeof(ULONG);
            }

            NextAddress.QuadPart += NextLength;
        }

        SglistElement += 1;
        NumberOfElements -= 1;

        
        
        

        if (NumberOfElements == 0) {
            Descriptor->Attribute |= 0x00000002;
        }
    }

    return STATUS_SUCCESS;
}

VOID
SdhcInitializePciConfigSpace(
    _In_ PSD_MINIPORT Miniport
    )

















{








    if (Miniport->ConfigurationInfo.BusType != SdBusTypePci) {
        return;
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    























































































































}

