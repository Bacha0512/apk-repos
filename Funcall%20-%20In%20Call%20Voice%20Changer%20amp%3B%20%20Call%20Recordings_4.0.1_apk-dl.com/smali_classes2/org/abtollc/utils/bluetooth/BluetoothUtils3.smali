.class public Lorg/abtollc/utils/bluetooth/BluetoothUtils3;
.super Lorg/abtollc/utils/bluetooth/BluetoothWrapper;
.source "BluetoothUtils3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public canBluetooth()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public isBTHeadsetConnected()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public register()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 16
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    return-void
.end method

.method public setMediaManager(Lorg/abtollc/service/MediaManager;)V
    .locals 0
    .param p1, "aManager"    # Lorg/abtollc/service/MediaManager;

    .prologue
    .line 29
    return-void
.end method

.method public unregister()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
