.class public Lorg/abtollc/utils/bluetooth/BluetoothUtils14;
.super Lorg/abtollc/utils/bluetooth/BluetoothUtils8;
.source "BluetoothUtils14.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;-><init>()V

    return-void
.end method


# virtual methods
.method public isBTHeadsetConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils14;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils14;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 16
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 14
    goto :goto_0

    :cond_1
    move v0, v1

    .line 16
    goto :goto_0
.end method
