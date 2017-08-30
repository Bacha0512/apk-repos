.class Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothUtils8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/bluetooth/BluetoothUtils8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;


# direct methods
.method constructor <init>(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v2, "BT8"

    const-string v3, ">>> BT SCO state changed !!! "

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "status":I
    const-string v2, "BT8"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT SCO state changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    # getter for: Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->targetBt:Z
    invoke-static {v4}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->access$000(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    # getter for: Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->audioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->access$100(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    # getter for: Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->targetBt:Z
    invoke-static {v3}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->access$000(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 40
    if-ne v1, v5, :cond_2

    .line 41
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    # setter for: Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->isBluetoothConnected:Z
    invoke-static {v2, v5}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->access$202(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;Z)Z

    .line 46
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    iget-object v2, v2, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->btChangesListener:Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    iget-object v2, v2, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->btChangesListener:Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;

    invoke-interface {v2, v1}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;->onBluetoothStateChanged(I)V

    .line 50
    .end local v1    # "status":I
    :cond_1
    return-void

    .line 42
    .restart local v1    # "status":I
    :cond_2
    if-nez v1, :cond_0

    .line 43
    iget-object v2, p0, Lorg/abtollc/utils/bluetooth/BluetoothUtils8$1;->this$0:Lorg/abtollc/utils/bluetooth/BluetoothUtils8;

    const/4 v3, 0x0

    # setter for: Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->isBluetoothConnected:Z
    invoke-static {v2, v3}, Lorg/abtollc/utils/bluetooth/BluetoothUtils8;->access$202(Lorg/abtollc/utils/bluetooth/BluetoothUtils8;Z)Z

    goto :goto_0
.end method
