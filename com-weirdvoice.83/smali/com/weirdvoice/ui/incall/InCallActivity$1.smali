.class Lcom/weirdvoice/ui/incall/InCallActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    .line 742
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 746
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.weirdvoice.service.CALL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 749
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 751
    :try_start_0
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :try_start_1
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v7}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v7

    invoke-interface {v7}, Lcom/weirdvoice/api/ISipService;->getCalls()[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$7(Lcom/weirdvoice/ui/incall/InCallActivity;[Lcom/weirdvoice/api/SipCallSession;)V

    .line 753
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    new-instance v7, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {v5, v7}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 751
    monitor-exit v6

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 751
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 755
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "InCallActivity"

    const-string v6, "Not able to retrieve calls"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v5, "com.weirdvoice.service.MEDIA_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 760
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 763
    :try_start_3
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v5

    invoke-interface {v5}, Lcom/weirdvoice/api/ISipService;->getCurrentMediaState()Lcom/weirdvoice/api/MediaState;

    move-result-object v3

    .line 764
    .local v3, "mediaState":Lcom/weirdvoice/api/MediaState;
    const-string v5, "InCallActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Media update ...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v3, Lcom/weirdvoice/api/MediaState;->isSpeakerphoneOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 766
    :try_start_4
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$8(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/MediaState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/weirdvoice/api/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 767
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-static {v5, v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$9(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/MediaState;)V

    .line 768
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    new-instance v7, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;)V

    invoke-virtual {v5, v7}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 765
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 771
    .end local v3    # "mediaState":Lcom/weirdvoice/api/MediaState;
    :catch_1
    move-exception v2

    .line 772
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "InCallActivity"

    const-string v6, "Can\'t get the media state "

    invoke-static {v5, v6, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 775
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v5, "com.weirdvoice.service.SHOW_SAS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    const-string v5, "call_info"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/api/SipCallSession;

    .line 777
    .local v1, "callSession":Lcom/weirdvoice/api/SipCallSession;
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 778
    .local v4, "sas":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    new-instance v6, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;

    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallActivity$1;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {v6, v7, v1, v4}, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/SipCallSession;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
