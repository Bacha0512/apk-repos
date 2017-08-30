.class public abstract Lorg/abtollc/api/ISipConfiguration$Stub;
.super Landroid/os/Binder;
.source "ISipConfiguration.java"

# interfaces
.implements Lorg/abtollc/api/ISipConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/ISipConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/api/ISipConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.abtollc.api.ISipConfiguration"

.field static final TRANSACTION_enableDNSSRV:I = 0x23

.field static final TRANSACTION_forceDtmfInBand:I = 0x33

.field static final TRANSACTION_forceDtmfRTP:I = 0x34

.field static final TRANSACTION_generateForSetCall:I = 0x15

.field static final TRANSACTION_getAllIncomingNetworks:I = 0xf

.field static final TRANSACTION_getAutoCloseTime:I = 0x29

.field static final TRANSACTION_getClockRate:I = 0x12

.field static final TRANSACTION_getCodecPriority:I = 0x37

.field static final TRANSACTION_getDSCPVal:I = 0x24

.field static final TRANSACTION_getEchoCancellationTail:I = 0x2b

.field static final TRANSACTION_getHeadsetAction:I = 0x28

.field static final TRANSACTION_getIceEnabled:I = 0x2d

.field static final TRANSACTION_getInCallMode:I = 0x11

.field static final TRANSACTION_getInitialVolumeLevel:I = 0x16

.field static final TRANSACTION_getLogLevel:I = 0x10

.field static final TRANSACTION_getMediaQuality:I = 0x2c

.field static final TRANSACTION_getPreferenceBooleanValue:I = 0x3

.field static final TRANSACTION_getPreferenceBooleanValue2:I = 0x2

.field static final TRANSACTION_getPreferenceFloatValue:I = 0x8

.field static final TRANSACTION_getPreferenceFloatValue2:I = 0x9

.field static final TRANSACTION_getPreferenceIntegerValue:I = 0x6

.field static final TRANSACTION_getPreferenceIntegerValue2:I = 0x7

.field static final TRANSACTION_getPreferenceStringValue:I = 0x4

.field static final TRANSACTION_getPreferenceStringValue2:I = 0x5

.field static final TRANSACTION_getRTPPort:I = 0x22

.field static final TRANSACTION_getRingtone:I = 0x17

.field static final TRANSACTION_getStunEnabled:I = 0x2f

.field static final TRANSACTION_getSystemProp:I = 0x27

.field static final TRANSACTION_getTCPTransportPort:I = 0x1d

.field static final TRANSACTION_getTLSMethod:I = 0x25

.field static final TRANSACTION_getTLSTransportPort:I = 0x1e

.field static final TRANSACTION_getTcpKeepAliveInterval:I = 0x20

.field static final TRANSACTION_getTlsKeepAliveInterval:I = 0x21

.field static final TRANSACTION_getTurnEnabled:I = 0x2e

.field static final TRANSACTION_getTurnServer:I = 0x30

.field static final TRANSACTION_getUDPTransportPort:I = 0x1c

.field static final TRANSACTION_getUdpKeepAliveInterval:I = 0x1f

.field static final TRANSACTION_getUserAgent:I = 0x26

.field static final TRANSACTION_hasEchoCancellation:I = 0x2a

.field static final TRANSACTION_isTCPEnabled:I = 0x18

.field static final TRANSACTION_isTLSEnabled:I = 0x1a

.field static final TRANSACTION_isUDPEnabled:I = 0x19

.field static final TRANSACTION_isValidConnectionForIncoming:I = 0xe

.field static final TRANSACTION_isValidConnectionForOutgoing:I = 0xd

.field static final TRANSACTION_resetAllDefaultValues:I = 0x1

.field static final TRANSACTION_setCodecList:I = 0x35

.field static final TRANSACTION_setCodecPriority:I = 0x38

.field static final TRANSACTION_setLibCapability:I = 0x31

.field static final TRANSACTION_setPreferenceBooleanValue:I = 0xb

.field static final TRANSACTION_setPreferenceFloatValue:I = 0xc

.field static final TRANSACTION_setPreferenceStringValue:I = 0xa

.field static final TRANSACTION_setVideoCodecList:I = 0x36

.field static final TRANSACTION_useIPv6:I = 0x1b

.field static final TRANSACTION_useModeApi:I = 0x14

.field static final TRANSACTION_useRoutingApi:I = 0x13

.field static final TRANSACTION_useSipInfoDtmf:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p0, p0, v0}, Lorg/abtollc/api/ISipConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/abtollc/api/ISipConfiguration;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "org.abtollc.api.ISipConfiguration"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/abtollc/api/ISipConfiguration;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/abtollc/api/ISipConfiguration;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/abtollc/api/ISipConfiguration$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/abtollc/api/ISipConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 544
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->resetAllDefaultValues()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v2, v7

    .line 59
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceBooleanValue2(Ljava/lang/String;Z)Z

    move-result v4

    .line 60
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v4, :cond_0

    move v8, v7

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_1
    move v2, v8

    .line 58
    goto :goto_1

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 70
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceStringValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v4

    .line 102
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_7
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceIntegerValue2(Ljava/lang/String;I)I

    move-result v4

    .line 114
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_8
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v4

    .line 124
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":F
    :sswitch_9
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 135
    .local v2, "_arg1":F
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->getPreferenceFloatValue2(Ljava/lang/String;F)F

    move-result v4

    .line 136
    .restart local v4    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":F
    .end local v4    # "_result":F
    :sswitch_a
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v2, v7

    .line 158
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_3
    move v2, v8

    .line 157
    goto :goto_2

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 169
    .local v2, "_arg1":F
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":F
    :sswitch_d
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->isValidConnectionForOutgoing()Z

    move-result v4

    .line 177
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v4, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->isValidConnectionForIncoming()Z

    move-result v4

    .line 185
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getAllIncomingNetworks()Ljava/util/List;

    move-result-object v6

    .line 193
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 199
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_10
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getLogLevel()I

    move-result v4

    .line 201
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v4    # "_result":I
    :sswitch_11
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getInCallMode()I

    move-result v4

    .line 209
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v4    # "_result":I
    :sswitch_12
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getClockRate()J

    move-result-wide v4

    .line 217
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 223
    .end local v4    # "_result":J
    :sswitch_13
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->useRoutingApi()Z

    move-result v4

    .line 225
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v4, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->useModeApi()Z

    move-result v4

    .line 233
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v4, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->generateForSetCall()Z

    move-result v4

    .line 241
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v4, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getInitialVolumeLevel()F

    move-result v4

    .line 249
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 255
    .end local v4    # "_result":F
    :sswitch_17
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getRingtone()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->isTCPEnabled()Z

    move-result v4

    .line 265
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v4, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v4    # "_result":Z
    :sswitch_19
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->isUDPEnabled()Z

    move-result v4

    .line 273
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v4, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->isTLSEnabled()Z

    move-result v4

    .line 281
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v4, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->useIPv6()Z

    move-result v4

    .line 289
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v4, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getUDPTransportPort()I

    move-result v4

    .line 297
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    .end local v4    # "_result":I
    :sswitch_1d
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTCPTransportPort()I

    move-result v4

    .line 305
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v4    # "_result":I
    :sswitch_1e
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTLSTransportPort()I

    move-result v4

    .line 313
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v4    # "_result":I
    :sswitch_1f
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getUdpKeepAliveInterval()I

    move-result v4

    .line 321
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v4    # "_result":I
    :sswitch_20
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTcpKeepAliveInterval()I

    move-result v4

    .line 329
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    .end local v4    # "_result":I
    :sswitch_21
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTlsKeepAliveInterval()I

    move-result v4

    .line 337
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 343
    .end local v4    # "_result":I
    :sswitch_22
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getRTPPort()I

    move-result v4

    .line 345
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 351
    .end local v4    # "_result":I
    :sswitch_23
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->enableDNSSRV()Z

    move-result v4

    .line 353
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v4, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 359
    .end local v4    # "_result":Z
    :sswitch_24
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getDSCPVal()I

    move-result v4

    .line 361
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 367
    .end local v4    # "_result":I
    :sswitch_25
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTLSMethod()I

    move-result v4

    .line 369
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v4    # "_result":I
    :sswitch_26
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getHeadsetAction()I

    move-result v4

    .line 395
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v4    # "_result":I
    :sswitch_29
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getAutoCloseTime()I

    move-result v4

    .line 403
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v4    # "_result":I
    :sswitch_2a
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->hasEchoCancellation()Z

    move-result v4

    .line 411
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v4, :cond_e

    move v8, v7

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v4    # "_result":Z
    :sswitch_2b
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getEchoCancellationTail()J

    move-result-wide v4

    .line 419
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 425
    .end local v4    # "_result":J
    :sswitch_2c
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getMediaQuality()J

    move-result-wide v4

    .line 427
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 433
    .end local v4    # "_result":J
    :sswitch_2d
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getIceEnabled()I

    move-result v4

    .line 435
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTurnEnabled()I

    move-result v4

    .line 443
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v4    # "_result":I
    :sswitch_2f
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getStunEnabled()I

    move-result v4

    .line 451
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    .end local v4    # "_result":I
    :sswitch_30
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->getTurnServer()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v2, v7

    .line 470
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipConfiguration$Stub;->setLibCapability(Ljava/lang/String;Z)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_f
    move v2, v8

    .line 469
    goto :goto_3

    .line 476
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->useSipInfoDtmf()Z

    move-result v4

    .line 478
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v4, :cond_10

    move v8, v7

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 484
    .end local v4    # "_result":Z
    :sswitch_33
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->forceDtmfInBand()Z

    move-result v4

    .line 486
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v4, :cond_11

    move v8, v7

    :cond_11
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v4    # "_result":Z
    :sswitch_34
    const-string v9, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;->forceDtmfRTP()Z

    move-result v4

    .line 494
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v4, :cond_12

    move v8, v7

    :cond_12
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 500
    .end local v4    # "_result":Z
    :sswitch_35
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 503
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/abtollc/api/ISipConfiguration$Stub;->setCodecList(Ljava/util/List;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 509
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_36
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lorg/abtollc/api/ISipConfiguration$Stub;->setVideoCodecList(Ljava/util/List;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 518
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_37
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lorg/abtollc/api/ISipConfiguration$Stub;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 526
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 532
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_38
    const-string v8, "org.abtollc.api.ISipConfiguration"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 538
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 539
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lorg/abtollc/api/ISipConfiguration$Stub;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
