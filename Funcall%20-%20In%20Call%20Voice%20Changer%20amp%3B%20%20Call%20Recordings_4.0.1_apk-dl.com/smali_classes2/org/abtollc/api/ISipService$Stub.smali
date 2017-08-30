.class public abstract Lorg/abtollc/api/ISipService$Stub;
.super Landroid/os/Binder;
.source "ISipService.java"

# interfaces
.implements Lorg/abtollc/api/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/ISipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/api/ISipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.abtollc.api.ISipService"

.field static final TRANSACTION_addAccount:I = 0x3b

.field static final TRANSACTION_addAllAccounts:I = 0x7

.field static final TRANSACTION_addBuddy:I = 0xf

.field static final TRANSACTION_addMessenger:I = 0x38

.field static final TRANSACTION_adjustVolume:I = 0x26

.field static final TRANSACTION_answer:I = 0x13

.field static final TRANSACTION_askThreadedRestart:I = 0x6

.field static final TRANSACTION_canRecord:I = 0x2e

.field static final TRANSACTION_confAdjustRxLevel:I = 0x21

.field static final TRANSACTION_confAdjustTxLevel:I = 0x20

.field static final TRANSACTION_confGetRxTxLevel:I = 0x24

.field static final TRANSACTION_createTransports:I = 0x11

.field static final TRANSACTION_destroy:I = 0x3c

.field static final TRANSACTION_forceStopService:I = 0x5

.field static final TRANSACTION_getActiveCallIdInProgress:I = 0x23

.field static final TRANSACTION_getCallInfo:I = 0x1a

.field static final TRANSACTION_getCalls:I = 0x1b

.field static final TRANSACTION_getCurrentMediaState:I = 0x27

.field static final TRANSACTION_getPresence:I = 0x33

.field static final TRANSACTION_getPresenceStatus:I = 0x34

.field static final TRANSACTION_getSipProfileState:I = 0xb

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_hangup:I = 0x14

.field static final TRANSACTION_hold:I = 0x16

.field static final TRANSACTION_ignoreNextOutgoingCallFor:I = 0xd

.field static final TRANSACTION_initialize:I = 0x22

.field static final TRANSACTION_isCreated:I = 0x2a

.field static final TRANSACTION_isRecording:I = 0x2d

.field static final TRANSACTION_makeCall:I = 0xe

.field static final TRANSACTION_makeCallWithOptions:I = 0x12

.field static final TRANSACTION_playWaveFile:I = 0x2f

.field static final TRANSACTION_reAddAllAccounts:I = 0x9

.field static final TRANSACTION_readCallMediaQuality:I = 0x3d

.field static final TRANSACTION_reinvite:I = 0x17

.field static final TRANSACTION_removeAllAccounts:I = 0x8

.field static final TRANSACTION_removeBuddy:I = 0x10

.field static final TRANSACTION_removeMessenger:I = 0x39

.field static final TRANSACTION_restartSipStack:I = 0x4

.field static final TRANSACTION_sendDtmf:I = 0x15

.field static final TRANSACTION_sendEventMessage:I = 0x3a

.field static final TRANSACTION_sendMessage:I = 0x31

.field static final TRANSACTION_setAccountRegistration:I = 0xa

.field static final TRANSACTION_setBluetoothOn:I = 0x1f

.field static final TRANSACTION_setEchoCancellation:I = 0x25

.field static final TRANSACTION_setMicrophoneMute:I = 0x1d

.field static final TRANSACTION_setPresence:I = 0x32

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_showCallInfosDialog:I = 0x1c

.field static final TRANSACTION_sipStart:I = 0x2

.field static final TRANSACTION_sipStop:I = 0x3

.field static final TRANSACTION_startLoopbackTest:I = 0x28

.field static final TRANSACTION_startRecording:I = 0x2b

.field static final TRANSACTION_stopLoopbackTest:I = 0x29

.field static final TRANSACTION_stopRecording:I = 0x2c

.field static final TRANSACTION_stopWaveFile:I = 0x30

.field static final TRANSACTION_switchToAutoAnswer:I = 0xc

.field static final TRANSACTION_updateCallOptions:I = 0x36

.field static final TRANSACTION_xfer:I = 0x18

.field static final TRANSACTION_xferReplace:I = 0x19

.field static final TRANSACTION_zrtpSASRevoke:I = 0x37

.field static final TRANSACTION_zrtpSASVerified:I = 0x35


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.abtollc.api.ISipService"

    invoke-virtual {p0, p0, v0}, Lorg/abtollc/api/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/abtollc/api/ISipService;
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
    const-string v1, "org.abtollc.api.ISipService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/abtollc/api/ISipService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/abtollc/api/ISipService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/abtollc/api/ISipService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/abtollc/api/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 692
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->getVersion()I

    move-result v6

    .line 49
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v6    # "_result":I
    :sswitch_2
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->sipStart()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    :sswitch_3
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->sipStop()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    :sswitch_4
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->restartSipStack()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    :sswitch_5
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->forceStopService()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :sswitch_6
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->askThreadedRestart()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :sswitch_7
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->addAllAccounts()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :sswitch_8
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->removeAllAccounts()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_9
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->reAddAllAccounts()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    :sswitch_a
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 115
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Lorg/abtollc/api/ISipService$Stub;->setAccountRegistration(JI)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 125
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/api/ISipService$Stub;->getSipProfileState(J)Lorg/abtollc/api/SipProfileState;

    move-result-object v6

    .line 126
    .local v6, "_result":Lorg/abtollc/api/SipProfileState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v6, p3, v8}, Lorg/abtollc/api/SipProfileState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 132
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":J
    .end local v6    # "_result":Lorg/abtollc/api/SipProfileState;
    :sswitch_c
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->switchToAutoAnswer()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    :sswitch_d
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 159
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lorg/abtollc/api/ISipService$Stub;->makeCall(Ljava/lang/String;J)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :sswitch_f
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->addBuddy(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->removeBuddy(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->createTransports()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    :sswitch_12
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 196
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 197
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 202
    .local v4, "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/abtollc/api/ISipService$Stub;->makeCallWithOptions(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 200
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .line 208
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :sswitch_13
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v4, v8

    .line 215
    .local v4, "_arg2":Z
    :cond_2
    invoke-virtual {p0, v0, v2, v4}, Lorg/abtollc/api/ISipService$Stub;->answer(IIZ)I

    move-result v6

    .line 216
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v6    # "_result":I
    :sswitch_14
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->hangup(II)I

    move-result v6

    .line 228
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_15
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->sendDtmf(II)I

    move-result v6

    .line 240
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_16
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->hold(I)I

    move-result v6

    .line 250
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_17
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v2, v8

    .line 261
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->reinvite(IZ)I

    move-result v6

    .line 262
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_3
    move v2, v4

    .line 260
    goto :goto_2

    .line 268
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->xfer(ILjava/lang/String;)I

    move-result v6

    .line 274
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 280
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_19
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 287
    .local v4, "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lorg/abtollc/api/ISipService$Stub;->xferReplace(III)I

    move-result v6

    .line 288
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_1a
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v6

    .line 298
    .local v6, "_result":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v6, :cond_4

    .line 300
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {v6, p3, v8}, Lorg/abtollc/api/SipCallSession;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 304
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 310
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Lorg/abtollc/api/SipCallSession;
    :sswitch_1b
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v6

    .line 312
    .local v6, "_result":[Lorg/abtollc/api/SipCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 318
    .end local v6    # "_result":[Lorg/abtollc/api/SipCallSession;
    :sswitch_1c
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->showCallInfosDialog(I)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    move v0, v8

    .line 331
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->setMicrophoneMute(Z)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v4

    .line 330
    goto :goto_3

    .line 337
    :sswitch_1e
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v0, v8

    .line 340
    .restart local v0    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->setSpeakerphoneOn(Z)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v4

    .line 339
    goto :goto_4

    .line 346
    :sswitch_1f
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v0, v8

    .line 349
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->setBluetoothOn(Z)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v4

    .line 348
    goto :goto_5

    .line 355
    :sswitch_20
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 360
    .local v2, "_arg1":F
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->confAdjustTxLevel(IF)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 366
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":F
    :sswitch_21
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 371
    .restart local v2    # "_arg1":F
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->confAdjustRxLevel(IF)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":F
    :sswitch_22
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->initialize()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 384
    :sswitch_23
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->getActiveCallIdInProgress()I

    move-result v6

    .line 386
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 392
    .end local v6    # "_result":I
    :sswitch_24
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 395
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->confGetRxTxLevel(I)J

    move-result-wide v6

    .line 396
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 402
    .end local v0    # "_arg0":I
    .end local v6    # "_result":J
    :sswitch_25
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    move v0, v8

    .line 405
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->setEchoCancellation(Z)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v4

    .line 404
    goto :goto_6

    .line 411
    :sswitch_26
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 414
    sget-object v9, Lorg/abtollc/api/SipCallSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipCallSession;

    .line 420
    .local v0, "_arg0":Lorg/abtollc/api/SipCallSession;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 423
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lorg/abtollc/api/ISipService$Stub;->adjustVolume(Lorg/abtollc/api/SipCallSession;II)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 417
    .end local v0    # "_arg0":Lorg/abtollc/api/SipCallSession;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/abtollc/api/SipCallSession;
    goto :goto_7

    .line 429
    .end local v0    # "_arg0":Lorg/abtollc/api/SipCallSession;
    :sswitch_27
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->getCurrentMediaState()Lorg/abtollc/api/MediaState;

    move-result-object v6

    .line 431
    .local v6, "_result":Lorg/abtollc/api/MediaState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v6, :cond_a

    .line 433
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    invoke-virtual {v6, p3, v8}, Lorg/abtollc/api/MediaState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 437
    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 443
    .end local v6    # "_result":Lorg/abtollc/api/MediaState;
    :sswitch_28
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->startLoopbackTest()I

    move-result v6

    .line 445
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 451
    .end local v6    # "_result":I
    :sswitch_29
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->stopLoopbackTest()I

    move-result v6

    .line 453
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 459
    .end local v6    # "_result":I
    :sswitch_2a
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->isCreated()Z

    move-result v6

    .line 461
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v6, :cond_b

    move v4, v8

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 467
    .end local v6    # "_result":Z
    :sswitch_2b
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 471
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->startRecording(ILjava/lang/String;)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 478
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_2c
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 481
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->stopRecording(I)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":I
    :sswitch_2d
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 490
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->isRecording(I)Z

    move-result v6

    .line 491
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v6, :cond_c

    move v4, v8

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2e
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->canRecord(I)Z

    move-result v6

    .line 501
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v6, :cond_d

    move v4, v8

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2f
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 514
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lorg/abtollc/api/ISipService$Stub;->playWaveFile(Ljava/lang/String;II)V

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 520
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_30
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 523
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->stopWaveFile(I)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 529
    .end local v0    # "_arg0":I
    :sswitch_31
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 536
    .local v4, "_arg2":J
    invoke-virtual {p0, v0, v2, v4, v5}, Lorg/abtollc/api/ISipService$Stub;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 542
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":J
    :sswitch_32
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 546
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 549
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v0, v2, v4, v5}, Lorg/abtollc/api/ISipService$Stub;->setPresence(ILjava/lang/String;J)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 555
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":J
    :sswitch_33
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 558
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/api/ISipService$Stub;->getPresence(J)I

    move-result v6

    .line 559
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 565
    .end local v0    # "_arg0":J
    .end local v6    # "_result":I
    :sswitch_34
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 568
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/abtollc/api/ISipService$Stub;->getPresenceStatus(J)Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    .end local v0    # "_arg0":J
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->zrtpSASVerified(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 584
    .end local v0    # "_arg0":I
    :sswitch_36
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 588
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    .line 589
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 594
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->updateCallOptions(ILandroid/os/Bundle;)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 592
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 600
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_37
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 603
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->zrtpSASRevoke(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 609
    .end local v0    # "_arg0":I
    :sswitch_38
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    .line 612
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 617
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_9
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->addMessenger(Landroid/content/Intent;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 615
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_9

    .line 623
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_39
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    .line 626
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 631
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_a
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->removeMessenger(Landroid/content/Intent;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 629
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_a

    .line 637
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_3a
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    .line 642
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 647
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->sendEventMessage(ILandroid/os/Bundle;)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 645
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    .line 653
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_3b
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    .line 656
    sget-object v9, Lorg/abtollc/api/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipProfile;

    .line 661
    .local v0, "_arg0":Lorg/abtollc/api/SipProfile;
    :goto_c
    invoke-virtual {p0, v0}, Lorg/abtollc/api/ISipService$Stub;->addAccount(Lorg/abtollc/api/SipProfile;)I

    move-result v6

    .line 662
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 659
    .end local v0    # "_arg0":Lorg/abtollc/api/SipProfile;
    .end local v6    # "_result":I
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lorg/abtollc/api/SipProfile;
    goto :goto_c

    .line 668
    .end local v0    # "_arg0":Lorg/abtollc/api/SipProfile;
    :sswitch_3c
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lorg/abtollc/api/ISipService$Stub;->destroy()V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 675
    :sswitch_3d
    const-string v9, "org.abtollc.api.ISipService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 679
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    move v2, v8

    .line 680
    .local v2, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v2}, Lorg/abtollc/api/ISipService$Stub;->readCallMediaQuality(IZ)Lorg/abtollc/api/AbtoPhoneMediaQuality;

    move-result-object v6

    .line 681
    .local v6, "_result":Lorg/abtollc/api/AbtoPhoneMediaQuality;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    if-eqz v6, :cond_14

    .line 683
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    invoke-virtual {v6, p3, v8}, Lorg/abtollc/api/AbtoPhoneMediaQuality;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Lorg/abtollc/api/AbtoPhoneMediaQuality;
    :cond_13
    move v2, v4

    .line 679
    goto :goto_d

    .line 687
    .restart local v2    # "_arg1":Z
    .restart local v6    # "_result":Lorg/abtollc/api/AbtoPhoneMediaQuality;
    :cond_14
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
