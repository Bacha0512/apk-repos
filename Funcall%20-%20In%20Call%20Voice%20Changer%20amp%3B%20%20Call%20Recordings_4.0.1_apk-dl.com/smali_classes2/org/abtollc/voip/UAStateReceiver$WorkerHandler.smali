.class Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;
.super Landroid/os/Handler;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/voip/UAStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/voip/UAStateReceiver;


# direct methods
.method public constructor <init>(Lorg/abtollc/voip/UAStateReceiver;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 919
    iput-object p1, p0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    .line 920
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 921
    const-string v0, "SIP UA Receiver"

    const-string v1, "Create async worker !!!"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$200(Lorg/abtollc/voip/UAStateReceiver;)V

    .line 927
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1147
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$700(Lorg/abtollc/voip/UAStateReceiver;)V

    .line 1148
    return-void

    .line 929
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lorg/abtollc/api/SipCallSession;

    .line 930
    .local v12, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getCallState()I

    move-result v14

    .line 932
    .local v14, "callState":I
    packed-switch v14, :pswitch_data_0

    .line 1107
    :cond_0
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->onBroadcastCallState(Lorg/abtollc/api/SipCallSession;)V
    invoke-static {v2, v12}, Lorg/abtollc/voip/UAStateReceiver;->access$500(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V

    goto :goto_0

    .line 938
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->launchCallHandler(Lorg/abtollc/api/SipCallSession;)V
    invoke-static {v2, v12}, Lorg/abtollc/voip/UAStateReceiver;->access$300(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    const-string v3, "RINGING"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/abtollc/voip/UAStateReceiver;->access$400(Lorg/abtollc/voip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 954
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v2, :cond_1

    .line 955
    const/4 v2, 0x5

    if-ne v14, v2, :cond_1

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v2}, Lorg/abtollc/service/MediaManager;->stopRing()V

    .line 961
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->launchCallHandler(Lorg/abtollc/api/SipCallSession;)V
    invoke-static {v2, v12}, Lorg/abtollc/voip/UAStateReceiver;->access$300(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    const-string v3, "OFFHOOK"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/abtollc/voip/UAStateReceiver;->access$400(Lorg/abtollc/voip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 965
    .local v17, "data":Landroid/os/Bundle;
    const-string v2, "acc_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v3

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getAccId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/api/SipProfile;->getProfileIdFromDbSipUri(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 966
    const-string v2, "remote_contact"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 984
    const/4 v2, 0x5

    if-ne v14, v2, :cond_0

    iget-wide v2, v12, Lorg/abtollc/api/SipCallSession;->callStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v12, Lorg/abtollc/api/SipCallSession;->callStart:J

    goto/16 :goto_1

    .line 990
    .end local v17    # "data":Landroid/os/Bundle;
    :pswitch_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v9, 0x1

    .line 994
    .local v9, "autorejected":Z
    :goto_2
    if-eqz v9, :cond_2

    .line 995
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lorg/abtollc/api/SipCallSession;->setIncoming(Z)V

    .line 998
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    iget-wide v4, v12, Lorg/abtollc/api/SipCallSession;->callStart:J

    invoke-static {v2, v12, v4, v5}, Lorg/abtollc/utils/CallLogHelper;->logValuesForCall(Landroid/content/Context;Lorg/abtollc/api/SipCallSession;J)Landroid/content/ContentValues;

    move-result-object v16

    .line 1001
    .local v16, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "date=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getCallStart()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    const-string v7, "date DESC"

    .line 1002
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1004
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1006
    .local v13, "callLogId":I
    if-nez v13, :cond_a

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 1008
    .local v22, "uri":Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v13, v2

    .line 1015
    .end local v22    # "uri":Landroid/net/Uri;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v3, "integrate_with_native_calllogs"

    invoke-virtual {v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1017
    const-string v2, "new"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1019
    const-string v2, "account_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1020
    const-string v2, "status_code"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1021
    const-string v2, "status_text"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1022
    const-string v2, "is_local_hangup"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1023
    const-string v2, "call_record_fail"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1026
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v15

    .line 1027
    .local v15, "callerInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    if-eqz v15, :cond_5

    .line 1028
    const/16 v21, 0x0

    .line 1029
    .local v21, "phoneNumber":Ljava/lang/String;
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1030
    iget-object v0, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1038
    :cond_3
    :goto_4
    if-eqz v21, :cond_5

    .line 1039
    const-string v2, "number"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v2, "new"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1043
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    .local v19, "extraCv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    .line 1046
    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getAccId()Ljava/lang/String;

    move-result-object v3

    .line 1045
    invoke-static {v2, v3}, Lorg/abtollc/api/SipProfile;->getProfileIdFromDbSipUri(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    .line 1048
    .local v10, "accountID":J
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_4

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2, v10, v11}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v8

    .line 1050
    .local v8, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v8, :cond_4

    iget-object v2, v8, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1051
    const-string v2, "provider"

    iget-object v3, v8, Lorg/abtollc/api/SipProfile;->display_name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .end local v8    # "acc":Lorg/abtollc/api/SipProfile;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lorg/abtollc/utils/CallLogHelper;->addCallLog(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1059
    .end local v10    # "accountID":J
    .end local v15    # "callerInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .end local v19    # "extraCv":Landroid/content/ContentValues;
    .end local v21    # "phoneNumber":Ljava/lang/String;
    :cond_5
    if-nez v9, :cond_8

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v2, :cond_6

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v2}, Lorg/abtollc/service/MediaManager;->stopRing()V

    .line 1064
    :cond_6
    const-string v2, "SIP UA Receiver"

    const-string v3, "Finish call2"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    const-string v3, "IDLE"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/abtollc/voip/UAStateReceiver;->access$400(Lorg/abtollc/voip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    invoke-virtual {v2}, Lorg/abtollc/voip/UAStateReceiver;->getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v2, :cond_7

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->treatDeferUnregistersForOutgoing()V

    .line 1081
    :cond_7
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 1082
    .restart local v17    # "data":Landroid/os/Bundle;
    const-string v2, "acc_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    .line 1083
    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v3}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v3

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getAccId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/api/SipProfile;->getProfileIdFromDbSipUri(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 1082
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1084
    const-string v2, "call_log_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1085
    const-string v2, "call_id"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1086
    const-string v2, "remote_contact"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1090
    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_8

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v2

    const/16 v3, 0x1e7

    if-eq v2, v3, :cond_8

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1091
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 1092
    .local v18, "errorData":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v2, "code"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getLastStatusCode()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    const-string v2, "remote_contact"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v3, 0xd

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1100
    .end local v17    # "data":Landroid/os/Bundle;
    .end local v18    # "errorData":Landroid/os/Bundle;
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lorg/abtollc/api/SipCallSession;->setIncoming(Z)V

    .line 1101
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lorg/abtollc/api/SipCallSession;->callStart:J

    goto/16 :goto_1

    .line 990
    .end local v9    # "autorejected":Z
    .end local v13    # "callLogId":I
    .end local v16    # "cv":Landroid/content/ContentValues;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1010
    .restart local v9    # "autorejected":Z
    .restart local v13    # "callLogId":I
    .restart local v16    # "cv":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    sget-object v3, Lorg/abtollc/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    const-string v4, "date=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getCallStart()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1010
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1031
    .restart local v15    # "callerInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .restart local v21    # "phoneNumber":Ljava/lang/String;
    :cond_b
    iget-object v2, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1032
    iget-object v0, v15, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .line 1111
    .end local v9    # "autorejected":Z
    .end local v12    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v13    # "callLogId":I
    .end local v14    # "callState":I
    .end local v15    # "callerInfos":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    .end local v16    # "cv":Landroid/content/ContentValues;
    .end local v21    # "phoneNumber":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lorg/abtollc/api/SipCallSession;

    .line 1112
    .local v20, "mediaCallInfo":Lorg/abtollc/api/SipCallSession;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$600(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/abtollc/api/SipCallSession;

    .line 1113
    .restart local v12    # "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual/range {v20 .. v20}, Lorg/abtollc/api/SipCallSession;->getMediaStatus()I

    move-result v2

    invoke-virtual {v12, v2}, Lorg/abtollc/api/SipCallSession;->setMediaStatus(I)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # invokes: Lorg/abtollc/voip/UAStateReceiver;->onBroadcastCallState(Lorg/abtollc/api/SipCallSession;)V
    invoke-static {v2, v12}, Lorg/abtollc/voip/UAStateReceiver;->access$500(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V

    .line 1116
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 1118
    .restart local v17    # "data":Landroid/os/Bundle;
    const-string v2, "is_held"

    invoke-virtual {v12}, Lorg/abtollc/api/SipCallSession;->getMediaStatus()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1123
    .end local v12    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v17    # "data":Landroid/os/Bundle;
    .end local v20    # "mediaCallInfo":Lorg/abtollc/api/SipCallSession;
    :sswitch_2
    const-string v3, "SIP UA Receiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In reg state, accIt = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 1127
    .restart local v17    # "data":Landroid/os/Bundle;
    const-string v3, "acc_id"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v2}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v2

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1139
    .end local v17    # "data":Landroid/os/Bundle;
    :sswitch_3
    const-string v2, "SIP UA Receiver"

    const-string v3, "ON_PAGER"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 927
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x1f -> :sswitch_1
        0x29 -> :sswitch_2
        0x33 -> :sswitch_3
    .end sparse-switch

    .line 932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
