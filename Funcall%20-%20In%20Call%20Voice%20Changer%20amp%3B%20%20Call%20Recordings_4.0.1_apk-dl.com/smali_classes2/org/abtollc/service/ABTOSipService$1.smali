.class Lorg/abtollc/service/ABTOSipService$1;
.super Lorg/abtollc/api/ISipService$Stub;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0}, Lorg/abtollc/api/ISipService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccount(Lorg/abtollc/api/SipProfile;)I
    .locals 2
    .param p1, "profile"    # Lorg/abtollc/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$35;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$35;-><init>(Lorg/abtollc/service/ABTOSipService$1;Lorg/abtollc/api/SipProfile;)V

    .line 984
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 985
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public addAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$2;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$1$2;-><init>(Lorg/abtollc/service/ABTOSipService$1;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public addBuddy(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$25;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$25;-><init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public addMessenger(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 944
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "action":Ljava/lang/String;
    const-string v2, "org.abtollc.action.SET_MESSENGER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 947
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "EXTRA_MESSENGER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 948
    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "EXTRA_MESSENGER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Lorg/abtollc/service/ABTOSipService;->addMessenger(Landroid/os/Messenger;)V

    .line 953
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public adjustVolume(Lorg/abtollc/api/SipCallSession;II)V
    .locals 4
    .param p1, "callInfo"    # Lorg/abtollc/api/SipCallSession;
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/abtollc/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 650
    .local v0, "ringing":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 654
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/abtollc/voip/SipService;->silenceRinger()V

    goto :goto_0

    .line 648
    .end local v0    # "ringing":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 657
    .restart local v0    # "ringing":Z
    :cond_3
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v1}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v1

    const-string v2, "use_soft_volume"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lorg/abtollc/voip/SipService;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public answer(IIZ)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "status"    # I
    .param p3, "withVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/abtollc/service/ABTOSipService$1$8;-><init>(Lorg/abtollc/service/ABTOSipService$1;IIZ)V

    .line 396
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 398
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
    .line 188
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "SIP SRV"

    const-string v1, "Restart required from third part app/serv"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$RestartRunnable;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v1, v2}, Lorg/abtollc/service/ABTOSipService$RestartRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 191
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
    .line 728
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    :cond_0
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/voip/SipService;->canRecord(I)Z

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
    .line 626
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$21;-><init>(Lorg/abtollc/service/ABTOSipService$1;IF)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 637
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
    .line 612
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$20;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$20;-><init>(Lorg/abtollc/service/ABTOSipService$1;IF)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 622
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
    .line 926
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$34;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$34;-><init>(Lorg/abtollc/service/ABTOSipService$1;I)V

    .line 932
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 933
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public createTransports()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$19;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$1$19;-><init>(Lorg/abtollc/service/ABTOSipService$1;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->onDestroy()V

    .line 995
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 997
    return-void
.end method

.method public forceStopService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "SIP SRV"

    const-string v1, "Try to force service stop"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->cleanStop()V

    .line 181
    return-void
.end method

.method public getActiveCallIdInProgress()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v1}, Lorg/abtollc/voip/UAStateReceiver;->getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 132
    .local v0, "call":Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v1

    .line 135
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCallInfo(I)Lorg/abtollc/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/voip/SipService;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getCalls()[Lorg/abtollc/api/SipCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/voip/SipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 607
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/abtollc/api/SipCallSession;

    goto :goto_0
.end method

.method public getCurrentMediaState()Lorg/abtollc/api/MediaState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v0, Lorg/abtollc/api/MediaState;

    invoke-direct {v0}, Lorg/abtollc/api/MediaState;-><init>()V

    .line 833
    .local v0, "ms":Lorg/abtollc/api/MediaState;
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v1, :cond_0

    .line 834
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v1}, Lorg/abtollc/service/MediaManager;->getMediaState()Lorg/abtollc/api/MediaState;

    move-result-object v0

    .line 836
    :cond_0
    return-object v0
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
    .line 787
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
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipProfileState(J)Lorg/abtollc/api/SipProfileState;
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/service/ABTOSipService;->getSipProfileState(J)Lorg/abtollc/api/SipProfileState;

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
    .line 872
    const/16 v0, 0x7d0

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
    .line 411
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$9;-><init>(Lorg/abtollc/service/ABTOSipService$1;II)V

    .line 418
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 421
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
    .line 521
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "SIP SRV"

    const-string v2, "HOLDING"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$14;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$14;-><init>(Lorg/abtollc/service/ABTOSipService$1;I)V

    .line 529
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 530
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

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
    .line 938
    sput-object p1, Lorg/abtollc/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 939
    return-void
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "SIP SRV"

    const-string v1, "Direct sip start"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$SyncStartRunnable;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v1, v2}, Lorg/abtollc/service/ABTOSipService$SyncStartRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public isCreated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-boolean v0, v0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 711
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v1

    .line 716
    :cond_1
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/abtollc/voip/SipService;->getCallInfo(I)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 717
    .local v0, "info":Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->isRecording()Z

    move-result v1

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;J)V
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/abtollc/service/ABTOSipService$1;->makeCallWithOptions(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public makeCallWithOptions(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 10
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 295
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-class v4, Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lorg/abtollc/service/ABTOSipService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 299
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 300
    const-string v1, "SIP SRV"

    const-string v2, "Can\'t place call if service not started"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v8, "errorData":Landroid/os/Bundle;
    const-string v7, ""

    .line 304
    .local v7, "error":Ljava/lang/String;
    invoke-static {v7, v5}, Lorg/abtollc/jni/pjsua;->strerror(Ljava/lang/String;I)V

    .line 305
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "code"

    const/16 v2, 0x1f4

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v1, "remote_contact"

    invoke-virtual {v8, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v8}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 330
    .end local v7    # "error":Ljava/lang/String;
    .end local v8    # "errorData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    iget-boolean v1, v1, Lorg/abtollc/service/ABTOSipService;->supportMultipleCalls:Z

    if-nez v1, :cond_2

    .line 315
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/abtollc/voip/SipService;->getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 316
    .local v0, "activeCall":Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_2

    .line 317
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v1}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v1

    const-string v2, "support_multiple_calls"

    invoke-virtual {v1, v2, v5}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "SIP SRV"

    const-string v2, "Application not support multiply calls"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v0    # "activeCall":Lorg/abtollc/api/SipCallSession;
    :cond_2
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v9

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$6;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/abtollc/service/ABTOSipService$1$6;-><init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-virtual {v9, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

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
    .line 841
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/abtollc/service/ABTOSipService$1$30;-><init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

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
    .line 228
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$4;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$1$4;-><init>(Lorg/abtollc/service/ABTOSipService$1;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public readCallMediaQuality(IZ)Lorg/abtollc/api/AbtoPhoneMediaQuality;
    .locals 4
    .param p1, "callId"    # I
    .param p2, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "SIP SRV"

    const-string v2, "Call-stats"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$12;-><init>(Lorg/abtollc/service/ABTOSipService$1;IZ)V

    .line 500
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 501
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/abtollc/api/AbtoPhoneMediaQuality;

    return-object v1
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
    .line 535
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v1, "SIP SRV"

    const-string v2, "REINVITING"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$15;-><init>(Lorg/abtollc/service/ABTOSipService$1;IZ)V

    .line 543
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 544
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

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
    .line 214
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$3;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$1$3;-><init>(Lorg/abtollc/service/ABTOSipService$1;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$26;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$26;-><init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeMessenger(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "action":Ljava/lang/String;
    const-string v2, "org.abtollc.action.SET_MESSENGER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 961
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "EXTRA_MESSENGER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 962
    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "EXTRA_MESSENGER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Lorg/abtollc/service/ABTOSipService;->removeMessenger(Landroid/os/Messenger;)V

    .line 966
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public restartSipStack()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->restartSipStack()V
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/abtollc/service/ABTOSipService$SameThreadException;
    const-string v1, "SIP SRV"

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$SameThreadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 507
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$13;-><init>(Lorg/abtollc/service/ABTOSipService$1;II)V

    .line 515
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 516
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public sendEventMessage(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 142
    return-void
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
    .line 337
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-class v3, Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$7;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/abtollc/service/ABTOSipService$1$7;-><init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public setAccountRegistration(JI)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "renew"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    # invokes: Lorg/abtollc/service/ABTOSipService;->isValidNetworkConnection()Z
    invoke-static {v2}, Lorg/abtollc/service/ABTOSipService;->access$300(Lorg/abtollc/service/ABTOSipService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2, p1, p2}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 244
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v0, :cond_0

    .line 245
    move v1, p3

    .line 246
    .local v1, "ren":I
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lorg/abtollc/service/ABTOSipService$1$5;

    invoke-direct {v3, p0, v0, v1}, Lorg/abtollc/service/ABTOSipService$1$5;-><init>(Lorg/abtollc/service/ABTOSipService$1;Lorg/abtollc/api/SipProfile;I)V

    invoke-virtual {v2, v3}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 256
    .end local v0    # "acc":Lorg/abtollc/api/SipProfile;
    .end local v1    # "ren":I
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v3, "No active network"

    invoke-virtual {v2, v3}, Lorg/abtollc/service/ABTOSipService;->notifyUserOfMessage(Ljava/lang/String;)V

    goto :goto_0
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
    .line 555
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$16;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$16;-><init>(Lorg/abtollc/service/ABTOSipService$1;Z)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 563
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
    .line 665
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$22;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$22;-><init>(Lorg/abtollc/service/ABTOSipService$1;Z)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 672
    return-void
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
    .line 567
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$17;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$17;-><init>(Lorg/abtollc/service/ABTOSipService$1;Z)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 574
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
    .line 771
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v6

    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$27;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/abtollc/service/ABTOSipService$1$27;-><init>(Lorg/abtollc/service/ABTOSipService$1;ILjava/lang/String;J)V

    invoke-virtual {v6, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

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
    .line 578
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$18;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$18;-><init>(Lorg/abtollc/service/ABTOSipService$1;Z)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 585
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
    .line 877
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$31;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$31;-><init>(Lorg/abtollc/service/ABTOSipService$1;I)V

    .line 886
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 887
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

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
    .line 158
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "SIP SRV"

    const-string v1, "Start required from third party app/serv"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$StartRunnable;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v1, v2}, Lorg/abtollc/service/ABTOSipService$StartRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
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
    .line 168
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$StopRunnable;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v1, v2}, Lorg/abtollc/service/ABTOSipService$StopRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 170
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
    .line 892
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 893
    const/16 v1, 0xa

    .line 904
    :goto_0
    return v1

    .line 895
    :cond_0
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$32;

    invoke-direct {v0, p0}, Lorg/abtollc/service/ABTOSipService$1$32;-><init>(Lorg/abtollc/service/ABTOSipService$1;)V

    .line 903
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$SipRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 904
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$23;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$23;-><init>(Lorg/abtollc/service/ABTOSipService$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

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
    .line 909
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 910
    const/16 v1, 0xa

    .line 921
    :goto_0
    return v1

    .line 912
    :cond_0
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$33;

    invoke-direct {v0, p0}, Lorg/abtollc/service/ABTOSipService$1$33;-><init>(Lorg/abtollc/service/ABTOSipService$1;)V

    .line 920
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$SipRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 921
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
    .line 694
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$24;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$24;-><init>(Lorg/abtollc/service/ABTOSipService$1;I)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopWaveFile(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 868
    :goto_0
    return-void

    .line 864
    :cond_0
    :try_start_0
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/abtollc/voip/SipService;->stopPlaying(I)V
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Lorg/abtollc/service/ABTOSipService$SameThreadException;
    const-string v1, "SIP SRV"

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$SameThreadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 275
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "SIP SRV"

    const-string v1, "Switch to auto answer"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->setAutoAnswerNext(Z)V

    .line 278
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
    .line 119
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$1;-><init>(Lorg/abtollc/service/ABTOSipService$1;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
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
    .line 426
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "SIP SRV"

    const-string v2, "XFER"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$1$10;-><init>(Lorg/abtollc/service/ABTOSipService$1;ILjava/lang/String;)V

    .line 434
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public xferReplace(III)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "otherCallId"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, "SIP SRV"

    const-string v2, "XFER-replace"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/abtollc/service/ABTOSipService$1$11;-><init>(Lorg/abtollc/service/ABTOSipService$1;III)V

    .line 448
    .local v0, "action":Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 449
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->getResult()Ljava/lang/Object;

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
    .line 816
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$29;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$29;-><init>(Lorg/abtollc/service/ABTOSipService$1;I)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 824
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
    .line 801
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$1$28;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$1$28;-><init>(Lorg/abtollc/service/ABTOSipService$1;I)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 809
    return-void
.end method
