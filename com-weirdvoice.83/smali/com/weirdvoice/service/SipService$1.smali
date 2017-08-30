.class Lcom/weirdvoice/service/SipService$1;
.super Lcom/weirdvoice/api/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlaceCallResultReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    .line 106
    invoke-direct {p0}, Lcom/weirdvoice/api/ISipService$Stub;-><init>()V

    .line 270
    new-instance v0, Lcom/weirdvoice/service/SipService$1$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$1$1;-><init>(Lcom/weirdvoice/service/SipService$1;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService$1;->mPlaceCallResultReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    return-object v0
.end method


# virtual methods
.method public addAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$2;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipService$1$2;-><init>(Lcom/weirdvoice/service/SipService$1;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public adjustVolume(Lcom/weirdvoice/api/SipCallSession;II)V
    .locals 5
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 590
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 575
    .local v1, "ringing":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 578
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/weirdvoice/pjsip/PjSipService;->silenceRinger()V

    goto :goto_0

    .line 573
    .end local v1    # "ringing":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 581
    .restart local v1    # "ringing":Z
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v2}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v2

    const-string v3, "use_soft_volume"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 582
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-class v3, Lcom/weirdvoice/ui/incall/InCallMediaControl;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    .local v0, "adjustVolumeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/service/SipService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 587
    .end local v0    # "adjustVolumeIntent":Landroid/content/Intent;
    :cond_3
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v2

    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v3

    iget-object v3, v3, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v3}, Lcom/weirdvoice/service/MediaManager;->doesUserWantBluetooth()Z

    move-result v3

    invoke-static {v3}, Lcom/weirdvoice/utils/Compatibility;->getInCallStream(Z)I

    move-result v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/weirdvoice/pjsip/PjSipService;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public answer(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/weirdvoice/service/SipService$1$7;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/weirdvoice/service/SipService$1$7;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;II)V

    .line 348
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 350
    const/4 v1, 0x0

    return v1
.end method

.method public askThreadedRestart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "SIP SRV"

    const-string v1, "Restart required from third part app/serv"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$RestartRunnable;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v1, v2}, Lcom/weirdvoice/service/SipService$RestartRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public canRecord(I)Z
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 667
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->canRecord(I)Z

    move-result v0

    goto :goto_0
.end method

.method public confAdjustRxLevel(IF)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/SipService$1$18;-><init>(Lcom/weirdvoice/service/SipService$1;IF)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method public confAdjustTxLevel(IF)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/SipService$1$17;-><init>(Lcom/weirdvoice/service/SipService$1;IF)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method public confGetRxTxLevel(I)J
    .locals 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v0, Lcom/weirdvoice/service/SipService$1$29;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1}, Lcom/weirdvoice/service/SipService$1$29;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;I)V

    .line 847
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 848
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public forceStopService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "SIP SRV"

    const-string v1, "Try to force service stop"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->cleanStop()V

    .line 135
    return-void
.end method

.method public getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v0, Lcom/weirdvoice/api/SipCallSession;

    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/api/SipCallSession;-><init>(Lcom/weirdvoice/api/SipCallSession;)V

    return-object v0
.end method

.method public getCalls()[Lcom/weirdvoice/api/SipCallSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v4, "android.permission.USE_SIP"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 516
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weirdvoice/pjsip/PjSipService;->getCalls()[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 517
    .local v0, "listOfCallsImpl":[Lcom/weirdvoice/api/SipCallSession;
    array-length v3, v0

    new-array v1, v3, [Lcom/weirdvoice/api/SipCallSession;

    .line 518
    .local v1, "result":[Lcom/weirdvoice/api/SipCallSession;
    const/4 v2, 0x0

    .local v2, "sessIdx":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 523
    .end local v0    # "listOfCallsImpl":[Lcom/weirdvoice/api/SipCallSession;
    .end local v1    # "result":[Lcom/weirdvoice/api/SipCallSession;
    .end local v2    # "sessIdx":I
    :goto_1
    return-object v1

    .line 519
    .restart local v0    # "listOfCallsImpl":[Lcom/weirdvoice/api/SipCallSession;
    .restart local v1    # "result":[Lcom/weirdvoice/api/SipCallSession;
    .restart local v2    # "sessIdx":I
    :cond_0
    new-instance v3, Lcom/weirdvoice/api/SipCallSession;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/weirdvoice/api/SipCallSession;-><init>(Lcom/weirdvoice/api/SipCallSession;)V

    aput-object v3, v1, v2

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "listOfCallsImpl":[Lcom/weirdvoice/api/SipCallSession;
    .end local v1    # "result":[Lcom/weirdvoice/api/SipCallSession;
    .end local v2    # "sessIdx":I
    :cond_1
    const/4 v3, 0x0

    new-array v1, v3, [Lcom/weirdvoice/api/SipCallSession;

    goto :goto_1
.end method

.method public getCurrentMediaState()Lcom/weirdvoice/api/MediaState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v0, Lcom/weirdvoice/api/MediaState;

    invoke-direct {v0}, Lcom/weirdvoice/api/MediaState;-><init>()V

    .line 763
    .local v0, "ms":Lcom/weirdvoice/api/MediaState;
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v1, :cond_0

    .line 764
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v1}, Lcom/weirdvoice/service/MediaManager;->getMediaState()Lcom/weirdvoice/api/MediaState;

    move-result-object v0

    .line 766
    :cond_0
    return-object v0
.end method

.method public getLocalNatType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Lcom/weirdvoice/service/SipService$1$31;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/service/SipService$1$31;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;)V

    .line 883
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 884
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getPresence(J)I
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public getPresenceStatus(J)Ljava/lang/String;
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipProfileState(I)Lcom/weirdvoice/api/SipProfileState;
    .locals 3
    .param p1, "accountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/service/SipService;->getSipProfileState(I)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 775
    const/16 v0, 0x7d5

    return v0
.end method

.method public hangup(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/weirdvoice/service/SipService$1$8;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/weirdvoice/service/SipService$1$8;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;II)V

    .line 366
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 369
    const/4 v1, 0x0

    return v1
.end method

.method public hold(I)I
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "SIP SRV"

    const-string v2, "HOLDING"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Lcom/weirdvoice/service/SipService$1$12;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1}, Lcom/weirdvoice/service/SipService$1$12;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;I)V

    .line 436
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 437
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 856
    sput-object p1, Lcom/weirdvoice/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 857
    return-void
.end method

.method public isRecording(I)Z
    .locals 5
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v1

    .line 653
    :cond_1
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getCallInfo(I)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 654
    .local v0, "info":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isRecording()Z

    move-result v1

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/weirdvoice/service/SipService$1;->makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v2, v4}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-class v5, Lcom/weirdvoice/service/SipService;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/weirdvoice/service/SipService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 245
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    const-string v0, "SIP SRV"

    const-string v2, "Can\'t place call if service not started"

    invoke-static {v0, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    iget-boolean v0, v0, Lcom/weirdvoice/service/SipService;->supportMultipleCalls:Z

    if-nez v0, :cond_2

    .line 253
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjSipService;->getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v8

    .line 254
    .local v8, "activeCall":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v8, :cond_2

    .line 255
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->forceNoMultipleCalls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const v2, 0x7f0c0228

    invoke-virtual {v0, v2}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(I)V

    goto :goto_0

    .line 262
    .end local v8    # "activeCall":Lcom/weirdvoice/api/SipCallSession;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.weirdvoice.service.CALL_LAUNCHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "id"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v0, "call_target"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v0, "call_options"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1;->mPlaceCallResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/weirdvoice/service/SipService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public playWaveFile(Ljava/lang/String;II)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/weirdvoice/service/SipService$1$22;-><init>(Lcom/weirdvoice/service/SipService$1;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reAddAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$4;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipService$1$4;-><init>(Lcom/weirdvoice/service/SipService$1;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public reinvite(IZ)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "unhold"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "SIP SRV"

    const-string v2, "REINVITING"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/weirdvoice/service/SipService$1$13;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/weirdvoice/service/SipService$1$13;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;IZ)V

    .line 453
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 454
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public removeAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$3;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipService$1$3;-><init>(Lcom/weirdvoice/service/SipService$1;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public sendDtmf(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/weirdvoice/service/SipService$1$11;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/weirdvoice/service/SipService$1$11;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;II)V

    .line 419
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 420
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-class v3, Lcom/weirdvoice/service/SipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v6

    new-instance v0, Lcom/weirdvoice/service/SipService$1$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/service/SipService$1$6;-><init>(Lcom/weirdvoice/service/SipService$1;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public setAccountRegistration(II)V
    .locals 6
    .param p1, "accountId"    # I
    .param p2, "renew"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/weirdvoice/service/SipService;->getAccount(J)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 199
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    if-eqz v0, :cond_0

    .line 200
    move v1, p2

    .line 201
    .local v1, "ren":I
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v2}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lcom/weirdvoice/service/SipService$1$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/weirdvoice/service/SipService$1$5;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/api/SipProfile;I)V

    invoke-virtual {v2, v3}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 208
    .end local v1    # "ren":I
    :cond_0
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$14;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$14;-><init>(Lcom/weirdvoice/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method public setEchoCancellation(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$19;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$19;-><init>(Lcom/weirdvoice/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$15;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$15;-><init>(Lcom/weirdvoice/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 492
    return-void
.end method

.method public setPresence(ILjava/lang/String;J)V
    .locals 7
    .param p1, "presenceInt"    # I
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v6

    new-instance v0, Lcom/weirdvoice/service/SipService$1$23;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/service/SipService$1$23;-><init>(Lcom/weirdvoice/service/SipService$1;ILjava/lang/String;J)V

    invoke-virtual {v6, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$16;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$16;-><init>(Lcom/weirdvoice/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public showCallInfosDialog(I)Ljava/lang/String;
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    new-instance v0, Lcom/weirdvoice/service/SipService$1$26;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1}, Lcom/weirdvoice/service/SipService$1$26;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;I)V

    .line 792
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 793
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public sipStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "SIP SRV"

    const-string v1, "Start required from third party app/serv"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$StartRunnable;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v1, v2}, Lcom/weirdvoice/service/SipService$StartRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public sipStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$StopRunnable;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v1, v2}, Lcom/weirdvoice/service/SipService$StopRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public startLoopbackTest()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 802
    const/16 v1, 0xa

    .line 813
    :goto_0
    return v1

    .line 804
    :cond_0
    new-instance v0, Lcom/weirdvoice/service/SipService$1$27;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$1$27;-><init>(Lcom/weirdvoice/service/SipService$1;)V

    .line 812
    .local v0, "action":Lcom/weirdvoice/service/SipService$SipRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 813
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecording(II)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/SipService$1$20;-><init>(Lcom/weirdvoice/service/SipService$1;II)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopLoopbackTest()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 822
    const/16 v1, 0xa

    .line 833
    :goto_0
    return v1

    .line 824
    :cond_0
    new-instance v0, Lcom/weirdvoice/service/SipService$1$28;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$1$28;-><init>(Lcom/weirdvoice/service/SipService$1;)V

    .line 832
    .local v0, "action":Lcom/weirdvoice/service/SipService$SipRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 833
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$21;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$21;-><init>(Lcom/weirdvoice/service/SipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public switchToAutoAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "SIP SRV"

    const-string v1, "Switch to auto answer"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->setAutoAnswerNext(Z)V

    .line 227
    return-void
.end method

.method public updateCallOptions(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/SipService$1$30;-><init>(Lcom/weirdvoice/service/SipService$1;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method public xfer(ILjava/lang/String;)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "SIP SRV"

    const-string v2, "XFER"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/weirdvoice/service/SipService$1$9;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/weirdvoice/service/SipService$1$9;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;ILjava/lang/String;)V

    .line 385
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 386
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public xferReplace(III)I
    .locals 6
    .param p1, "callId"    # I
    .param p2, "otherCallId"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "SIP SRV"

    const-string v2, "XFER-replace"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/weirdvoice/service/SipService$1$10;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/service/SipService$1$10;-><init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;III)V

    .line 402
    .local v0, "action":Lcom/weirdvoice/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 403
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public zrtpSASRevoke(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$25;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$25;-><init>(Lcom/weirdvoice/service/SipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 754
    return-void
.end method

.method public zrtpSASVerified(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$1$24;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$1$24;-><init>(Lcom/weirdvoice/service/SipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 739
    return-void
.end method
