.class Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;
.super Landroid/os/Handler;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/pjsip/UAStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerHandler"
.end annotation


# instance fields
.field sr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/weirdvoice/pjsip/UAStateReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/weirdvoice/pjsip/UAStateReceiver;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "stateReceiver"    # Lcom/weirdvoice/pjsip/UAStateReceiver;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 720
    const-string v0, "SIP UA Receiver"

    const-string v1, "Create async worker !!!"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->sr:Ljava/lang/ref/WeakReference;

    .line 722
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 725
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->sr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/weirdvoice/pjsip/UAStateReceiver;

    .line 726
    .local v9, "stateReceiver":Lcom/weirdvoice/pjsip/UAStateReceiver;
    if-nez v9, :cond_0

    .line 871
    :goto_0
    return-void

    .line 729
    :cond_0
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$0(Lcom/weirdvoice/pjsip/UAStateReceiver;)V

    .line 730
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 870
    :goto_1
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$9(Lcom/weirdvoice/pjsip/UAStateReceiver;)V

    goto :goto_0

    .line 732
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .line 733
    .local v1, "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallState()I

    move-result v2

    .line 735
    .local v2, "callState":I
    packed-switch v2, :pswitch_data_1

    .line 857
    :cond_1
    :goto_2
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->onBroadcastCallState(Lcom/weirdvoice/api/SipCallSession;)V
    invoke-static {v9, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$7(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V

    goto :goto_1

    .line 738
    :pswitch_1
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$1(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/weirdvoice/service/SipNotifications;->showNotificationForCall(Lcom/weirdvoice/api/SipCallSession;)V

    .line 739
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->launchCallHandler(Lcom/weirdvoice/api/SipCallSession;)V
    invoke-static {v9, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$2(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V

    .line 740
    const-string v10, "RINGING"

    .line 741
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getRemoteContact()Ljava/lang/String;

    move-result-object v11

    .line 740
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$3(Lcom/weirdvoice/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 752
    :pswitch_2
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$1(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/weirdvoice/service/SipNotifications;->showNotificationForCall(Lcom/weirdvoice/api/SipCallSession;)V

    .line 753
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->launchCallHandler(Lcom/weirdvoice/api/SipCallSession;)V
    invoke-static {v9, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$2(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V

    .line 754
    const-string v10, "OFFHOOK"

    .line 755
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getRemoteContact()Ljava/lang/String;

    move-result-object v11

    .line 754
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$3(Lcom/weirdvoice/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v10, :cond_2

    .line 758
    const/4 v10, 0x5

    if-ne v2, v10, :cond_2

    .line 760
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v10}, Lcom/weirdvoice/service/MediaManager;->stopRing()V

    .line 764
    :cond_2
    const/4 v10, 0x5

    if-ne v2, v10, :cond_3

    .line 765
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v10

    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->sendPendingDtmf(I)V
    invoke-static {v9, v10}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$5(Lcom/weirdvoice/pjsip/UAStateReceiver;I)V

    .line 768
    :cond_3
    const/4 v10, 0x5

    if-ne v2, v10, :cond_1

    .line 769
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallStart()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCallStart(J)V

    goto :goto_2

    .line 774
    :pswitch_3
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getRingingCall()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v10

    if-nez v10, :cond_4

    .line 775
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v10}, Lcom/weirdvoice/service/MediaManager;->stopRing()V

    .line 778
    :cond_4
    const-string v10, "IDLE"

    .line 779
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getRemoteContact()Ljava/lang/String;

    move-result-object v11

    .line 778
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$3(Lcom/weirdvoice/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v10

    if-nez v10, :cond_5

    .line 783
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$1(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10}, Lcom/weirdvoice/service/SipNotifications;->cancelCalls()V

    .line 785
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 786
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v10, :cond_5

    .line 787
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 788
    invoke-virtual {v10}, Lcom/weirdvoice/service/SipService;->treatDeferUnregistersForOutgoing()V

    .line 794
    :cond_5
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 795
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallStart()J

    move-result-wide v12

    .line 793
    invoke-static {v10, v1, v12, v13}, Lcom/weirdvoice/utils/CallLogHelper;->logValuesForCall(Landroid/content/Context;Lcom/weirdvoice/api/SipCallSession;J)Landroid/content/ContentValues;

    move-result-object v4

    .line 798
    .local v4, "cv":Landroid/content/ContentValues;
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v10}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 799
    sget-object v11, Lcom/weirdvoice/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    .line 798
    invoke-virtual {v10, v11, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 800
    const-string v10, "new"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 801
    .local v6, "isNew":Ljava/lang/Integer;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 802
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$1(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/weirdvoice/service/SipNotifications;->showNotificationForMissedCall(Landroid/content/ContentValues;)V

    .line 806
    :cond_6
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getLastStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_7

    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getLastReasonCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_7

    .line 808
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    new-instance v11, Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getLastStatusCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 811
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getLastStatusComment()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 808
    invoke-virtual {v10, v11}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 815
    :cond_7
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->mIntegrateWithCallLogs:Z
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$6(Lcom/weirdvoice/pjsip/UAStateReceiver;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 817
    const-string v10, "new"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 819
    const-string v10, "account_id"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 820
    const-string v10, "status_code"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 821
    const-string v10, "status_text"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 825
    const-string v10, "number"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 824
    invoke-static {v10}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v3

    .line 826
    .local v3, "callerInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    if-eqz v3, :cond_9

    .line 827
    invoke-static {v3}, Lcom/weirdvoice/api/SipUri;->getPhoneNumber(Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;)Ljava/lang/String;

    move-result-object v8

    .line 832
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 833
    const-string v10, "number"

    invoke-virtual {v4, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v10, "new"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 837
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v5, "extraCv":Landroid/content/ContentValues;
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getAccId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 840
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 841
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getAccId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/weirdvoice/service/SipService;->getAccount(J)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 842
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    if-eqz v0, :cond_8

    iget-object v10, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 843
    const-string v10, "provider"

    .line 844
    iget-object v11, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 843
    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .end local v0    # "acc":Lcom/weirdvoice/api/SipProfile;
    :cond_8
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-static {v10, v4, v5}, Lcom/weirdvoice/utils/CallLogHelper;->addCallLog(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 852
    .end local v3    # "callerInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    .end local v5    # "extraCv":Landroid/content/ContentValues;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->applyDisconnect()V

    goto/16 :goto_2

    .line 861
    .end local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .end local v2    # "callState":I
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "isNew":Ljava/lang/Integer;
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/weirdvoice/api/SipCallSession;

    .line 862
    .local v7, "mediaCallInfo":Lcom/weirdvoice/api/SipCallSession;
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$8(Lcom/weirdvoice/pjsip/UAStateReceiver;)Landroid/util/SparseArray;

    move-result-object v10

    .line 863
    invoke-virtual {v7}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v11

    .line 862
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .line 864
    .restart local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    invoke-virtual {v7}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setMediaStatus(I)V

    .line 865
    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$8(Lcom/weirdvoice/pjsip/UAStateReceiver;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v7}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v11

    invoke-virtual {v10, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 866
    # invokes: Lcom/weirdvoice/pjsip/UAStateReceiver;->onBroadcastCallState(Lcom/weirdvoice/api/SipCallSession;)V
    invoke-static {v9, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$7(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V

    goto/16 :goto_1

    .line 730
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 735
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
