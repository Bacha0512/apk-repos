.class public Lorg/abtollc/utils/bluetooth/BluetoothUtils8;
.super Lorg/abtollc/utils/bluetooth/BluetoothWrapper;
.source "BluetoothUtils8.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "BT8"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field protected bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private isBluetoothConnected:Z

.field private mediaStateReceiver:Landroid/content/BroadcastReceiver;

.field private targetBt:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;-><init>()V

    .line 26
    iput-boolean v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->isBluetoothConnected:Z

    .line 28
    new-instance v0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;-><init>(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)V

    iput-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->mediaStateReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-boolean v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->targetBt:Z

    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)Z
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    .prologue
    .line 21
    iget-boolean v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->targetBt:Z

    return v0
.end method

.method static synthetic access$100(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$202(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/utils/bluetooth/BluetoothUtils8;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->isBluetoothConnected:Z

    return p1
.end method


# virtual methods
.method public canBluetooth()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v6, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v6, :cond_0

    .line 98
    :goto_0
    return v5

    .line 74
    :cond_0
    const/4 v3, 0x0

    .line 76
    .local v3, "hasConnectedDevice":Z
    iget-object v6, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    iget-object v6, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 81
    .local v4, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 82
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 83
    .local v0, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 85
    .local v2, "deviceClass":I
    const/high16 v7, 0x40000

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x404

    if-eq v2, v7, :cond_2

    const/16 v7, 0x420

    if-eq v2, v7, :cond_2

    const/16 v7, 0x408

    if-ne v2, v7, :cond_1

    .line 90
    :cond_2
    const/4 v3, 0x1

    .line 96
    .end local v0    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceClass":I
    .end local v4    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    if-eqz v3, :cond_4

    iget-object v6, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    .line 97
    .local v5, "retVal":Z
    :cond_4
    const-string v6, "BT8"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can I do BT ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBTHeadsetConnected()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->canBluetooth()Z

    move-result v0

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->isBluetoothConnected:Z

    return v0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 131
    const-string v0, "BT8"

    const-string v1, "Register BT media receiver"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->mediaStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 103
    const-string v0, "BT8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ask for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-boolean p1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->targetBt:Z

    .line 105
    iget-boolean v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->isBluetoothConnected:Z

    if-eq p1, v0, :cond_2

    .line 107
    if-eqz p1, :cond_1

    .line 109
    const-string v0, "BT8"

    const-string v1, "BT SCO on >>>"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "BT8"

    const-string v1, "BT SCO off >>>"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 116
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setContext(Landroid/content/Context;)V

    .line 58
    iget-object v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;

    .line 59
    iget-object v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 61
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BT8"

    const-string v2, "Cant get default bluetooth adapter "

    invoke-static {v1, v2, v0}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    const-string v1, "BT8"

    const-string v2, "Unregister BT media receiver"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->mediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BT8"

    const-string v2, "Failed to unregister media state receiver"

    invoke-static {v1, v2, v0}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
