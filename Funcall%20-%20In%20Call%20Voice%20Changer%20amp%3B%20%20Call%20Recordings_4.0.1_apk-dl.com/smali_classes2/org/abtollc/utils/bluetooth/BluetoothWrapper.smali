.class public abstract Lorg/abtollc/utils/bluetooth/BluetoothWrapper;
.super Ljava/lang/Object;
.source "BluetoothWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;
    }
.end annotation


# static fields
.field private static instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;


# instance fields
.field protected btChangesListener:Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/abtollc/utils/bluetooth/BluetoothWrapper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-nez v0, :cond_0

    .line 21
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lorg/abtollc/utils/bluetooth/BluetoothUtils14;

    invoke-direct {v0}, Lorg/abtollc/utils/bluetooth/BluetoothUtils14;-><init>()V

    sput-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    .line 28
    :goto_0
    sget-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setContext(Landroid/content/Context;)V

    .line 33
    :cond_0
    sget-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    return-object v0

    .line 23
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    invoke-direct {v0}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;-><init>()V

    sput-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Lorg/abtollc/utils/bluetooth/BluetoothUtils3;

    invoke-direct {v0}, Lorg/abtollc/utils/bluetooth/BluetoothUtils3;-><init>()V

    sput-object v0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->instance:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract canBluetooth()Z
.end method

.method public abstract isBTHeadsetConnected()Z
.end method

.method public abstract isBluetoothOn()Z
.end method

.method public abstract register()V
.end method

.method public setBluetoothChangeListener(Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V
    .locals 0
    .param p1, "l"    # Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->btChangesListener:Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

    .line 44
    return-void
.end method

.method public abstract setBluetoothOn(Z)V
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public abstract unregister()V
.end method
