.class Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUIFromCallRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 471
    const/4 v2, 0x0

    .line 473
    .local v2, "mainCallInfo":Lcom/weirdvoice/api/SipCallSession;
    const/4 v3, 0x0

    .line 474
    .local v3, "mainsCalls":I
    const/4 v1, 0x0

    .line 476
    .local v1, "heldsCalls":I
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 477
    :try_start_0
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 478
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;

    move-result-object v8

    array-length v9, v8

    move v5, v6

    :goto_0
    if-lt v5, v9, :cond_4

    .line 476
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    add-int v5, v3, v1

    const/4 v7, 0x1

    if-lt v5, v7, :cond_7

    .line 499
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$14(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallControls;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/weirdvoice/ui/incall/InCallControls;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 500
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$15(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 506
    :goto_1
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$16(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    move-result-object v7

    if-lez v1, :cond_8

    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->setVisibility(I)V

    .line 508
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$17(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->notifyDataSetChanged()V

    .line 509
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$18(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;->notifyDataSetChanged()V

    .line 513
    if-eqz v2, :cond_2

    .line 514
    const-string v5, "InCallActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Active call is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v5, "InCallActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Update ui from call "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 516
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-static {v2, v8}, Lcom/weirdvoice/utils/CallsUtils;->getStringCallState(Lcom/weirdvoice/api/SipCallSession;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 515
    invoke-static {v5, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v2}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v4

    .line 522
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    .line 545
    :cond_1
    :goto_3
    :pswitch_0
    const-string v5, "InCallActivity"

    const-string v6, "we leave the update ui function"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v4    # "state":I
    :cond_2
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$21(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/CallProximityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/CallProximityManager;->updateProximitySensorMode()V

    .line 550
    add-int v5, v1, v3

    if-nez v5, :cond_3

    .line 551
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # invokes: Lcom/weirdvoice/ui/incall/InCallActivity;->delayedQuit()V
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$20(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    .line 553
    :cond_3
    :goto_4
    return-void

    .line 478
    :cond_4
    :try_start_1
    aget-object v0, v8, v5

    .line 479
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    const-string v10, "InCallActivity"

    .line 480
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "We have a call "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 481
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 480
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 479
    invoke-static {v10, v11}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v10

    if-nez v10, :cond_5

    .line 484
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 485
    add-int/lit8 v1, v1, 0x1

    .line 490
    :cond_5
    :goto_5
    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # invokes: Lcom/weirdvoice/ui/incall/InCallActivity;->getPrioritaryCall(Lcom/weirdvoice/api/SipCallSession;Lcom/weirdvoice/api/SipCallSession;)Lcom/weirdvoice/api/SipCallSession;
    invoke-static {v10, v0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$13(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/SipCallSession;Lcom/weirdvoice/api/SipCallSession;)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v2

    .line 478
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 487
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 476
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 502
    :cond_7
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$14(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallControls;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/weirdvoice/ui/incall/InCallControls;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 503
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$15(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    goto/16 :goto_1

    .line 506
    :cond_8
    const/16 v5, 0x8

    goto/16 :goto_2

    .line 528
    .restart local v4    # "state":I
    :pswitch_1
    const-string v5, "InCallActivity"

    const-string v6, "Acquire wake up lock"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$19(Lcom/weirdvoice/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$19(Lcom/weirdvoice/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_1

    .line 530
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$19(Lcom/weirdvoice/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_3

    .line 537
    :pswitch_2
    const-string v5, "InCallActivity"

    const-string v7, "Active call session is disconnected or null wait for quit..."

    invoke-static {v5, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-virtual {v5, v6}, Lcom/weirdvoice/ui/incall/InCallActivity;->onDisplayVideo(Z)V

    .line 540
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # invokes: Lcom/weirdvoice/ui/incall/InCallActivity;->delayedQuit()V
    invoke-static {v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$20(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    goto/16 :goto_4

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
