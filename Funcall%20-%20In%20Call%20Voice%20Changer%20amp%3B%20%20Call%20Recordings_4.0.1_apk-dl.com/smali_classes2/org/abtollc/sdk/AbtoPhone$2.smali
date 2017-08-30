.class Lorg/abtollc/sdk/AbtoPhone$2;
.super Landroid/os/Handler;
.source "AbtoPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/sdk/AbtoPhone;


# direct methods
.method constructor <init>(Lorg/abtollc/sdk/AbtoPhone;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    .line 272
    .local v21, "event":I
    packed-switch v21, :pswitch_data_0

    .line 564
    :pswitch_0
    const-string v41, "AbtoPhone"

    const-string v42, "Unknown event type"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_1
    const-string v41, "AbtoPhone"

    const-string v42, "Incoming Call"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$300(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnIncomingCallListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "remote_contact"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 277
    .local v32, "remoteContact":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "acc_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 279
    .local v10, "accId":J
    const-string v41, "AbtoPhone"

    const-string v42, "Incoming Call notify sent"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$300(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnIncomingCallListener;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v10, v11}, Lorg/abtollc/sdk/OnIncomingCallListener;->OnIncomingCall(Ljava/lang/String;J)V

    goto :goto_0

    .line 286
    .end local v10    # "accId":J
    .end local v32    # "remoteContact":Ljava/lang/String;
    :pswitch_2
    const-string v41, "AbtoPhone"

    const-string v42, "Call connected"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallConnectedListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "remote_contact"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 296
    .restart local v32    # "remoteContact":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallConnectedListener;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/abtollc/sdk/OnCallConnectedListener;->onCallConnected(Ljava/lang/String;)V

    .line 298
    const-string v41, "AbtoPhone"

    const-string v42, "Call connected listener sent"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v32    # "remoteContact":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "call_log_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 306
    .local v17, "callLogid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "call_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 308
    .local v20, "disconnectCallId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "code"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 310
    .local v33, "sCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$500(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallDisconnectedListener;

    move-result-object v41

    if-eqz v41, :cond_1

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "remote_contact"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 313
    .restart local v32    # "remoteContact":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$500(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallDisconnectedListener;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    move/from16 v2, v20

    move/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/abtollc/sdk/OnCallDisconnectedListener;->onCallDisconnected(Ljava/lang/String;II)V

    .line 316
    .end local v32    # "remoteContact":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lorg/abtollc/sdk/AbtoPhone;->setVideoWindows(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 318
    const-string v41, "AbtoPhone"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "callId = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lorg/abtollc/sdk/AbtoPhone;->access$600(Lorg/abtollc/sdk/AbtoPhone;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v41, "AbtoPhone"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "disconnectCallId = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$600(Lorg/abtollc/sdk/AbtoPhone;)I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$700(Lorg/abtollc/sdk/AbtoPhone;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 324
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v19, "cv":Landroid/content/ContentValues;
    const-string v42, "is_local_hangup"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$700(Lorg/abtollc/sdk/AbtoPhone;)Z

    move-result v41

    if-eqz v41, :cond_3

    const/16 v41, 0x1

    :goto_1
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    invoke-static {}, Lorg/abtollc/sdk/AbtoPhone;->access$800()Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v41

    sget-object v42, Lorg/abtollc/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    const-string v43, "_id=?"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    move-object/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$702(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 333
    .end local v19    # "cv":Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$900(Lorg/abtollc/sdk/AbtoPhone;)Landroid/util/SparseBooleanArray;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$600(Lorg/abtollc/sdk/AbtoPhone;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 335
    const-string v41, "AbtoPhone"

    const-string v42, "hold receted"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1002(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1102(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, -0x1

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$602(Lorg/abtollc/sdk/AbtoPhone;I)I

    goto/16 :goto_0

    .line 325
    .restart local v19    # "cv":Landroid/content/ContentValues;
    :cond_3
    const/16 v41, 0x0

    goto/16 :goto_1

    .line 351
    .end local v17    # "callLogid":I
    .end local v19    # "cv":Landroid/content/ContentValues;
    .end local v20    # "disconnectCallId":I
    .end local v33    # "sCode":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "is_held"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 352
    .local v22, "held":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v42, v0

    sget-object v41, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->LOCAL_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getValue()I

    move-result v41

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    const/16 v41, 0x1

    :goto_2
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-static {v0, v1}, Lorg/abtollc/sdk/AbtoPhone;->access$1002(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 354
    const-string v41, "AbtoPhone"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Media State: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v22 .. v22}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getByValue(I)Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1200(Lorg/abtollc/sdk/AbtoPhone;)Landroid/view/SurfaceView;

    move-result-object v41

    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1300(Lorg/abtollc/sdk/AbtoPhone;)Landroid/view/ViewGroup;

    move-result-object v41

    if-eqz v41, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->refreshVideoView()V

    .line 361
    :cond_4
    sget-object v41, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->LOCAL_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getValue()I

    move-result v41

    move/from16 v0, v22

    move/from16 v1, v41

    if-eq v0, v1, :cond_5

    sget-object v41, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->REMOTE_HOLD:Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    .line 362
    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getValue()I

    move-result v41

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    .line 363
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1102(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallHeldListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallHeldListener;

    move-result-object v41

    invoke-static/range {v22 .. v22}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getByValue(I)Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lorg/abtollc/sdk/OnCallHeldListener;->onCallHeld(Lorg/abtollc/sdk/OnCallHeldListener$HoldState;)V

    goto/16 :goto_0

    .line 352
    :cond_6
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 369
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1100(Lorg/abtollc/sdk/AbtoPhone;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 371
    const-string v41, "AbtoPhone"

    const-string v42, "unhold"

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1102(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallHeldListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallHeldListener;

    move-result-object v41

    invoke-static/range {v22 .. v22}, Lorg/abtollc/sdk/OnCallHeldListener$HoldState;->getByValue(I)Lorg/abtollc/sdk/OnCallHeldListener$HoldState;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lorg/abtollc/sdk/OnCallHeldListener;->onCallHeld(Lorg/abtollc/sdk/OnCallHeldListener$HoldState;)V

    goto/16 :goto_0

    .line 383
    .end local v22    # "held":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1502(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "acc_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 387
    .restart local v10    # "accId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10, v11}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v6

    .line 389
    .local v6, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v6, :cond_8

    .line 390
    const/16 v41, 0x1

    move/from16 v0, v41

    iput-boolean v0, v6, Lorg/abtollc/api/SipProfile;->active:Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lorg/abtollc/sdk/AbtoPhoneCfg;->updateAccount(Lorg/abtollc/api/SipProfile;)V

    .line 402
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v0, v10, v11}, Lorg/abtollc/sdk/OnRegistrationListener;->onRegistered(J)V

    goto/16 :goto_0

    .line 411
    .end local v6    # "acc":Lorg/abtollc/api/SipProfile;
    .end local v10    # "accId":J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1502(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "acc_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 415
    .local v14, "accountId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14, v15}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v7

    .line 417
    .local v7, "account":Lorg/abtollc/api/SipProfile;
    if-eqz v7, :cond_9

    .line 418
    const/16 v41, 0x0

    move/from16 v0, v41

    iput-boolean v0, v7, Lorg/abtollc/api/SipProfile;->active:Z

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lorg/abtollc/sdk/AbtoPhoneCfg;->updateAccount(Lorg/abtollc/api/SipProfile;)V

    .line 423
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v0, v14, v15}, Lorg/abtollc/sdk/OnRegistrationListener;->onUnRegistered(J)V

    goto/16 :goto_0

    .line 430
    .end local v7    # "account":Lorg/abtollc/api/SipProfile;
    .end local v14    # "accountId":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$1502(Lorg/abtollc/sdk/AbtoPhone;Z)Z

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "acc_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 442
    .local v8, "accID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_code"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 444
    .local v37, "statusCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_text"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 446
    .local v38, "statusText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v8, v9, v1, v2}, Lorg/abtollc/sdk/OnRegistrationListener;->onRegistrationFailed(JILjava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v8    # "accID":J
    .end local v37    # "statusCode":I
    .end local v38    # "statusText":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1700(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnTextMessageListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "message"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 453
    .local v25, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "remote_contact"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 454
    .local v35, "sender":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "acc_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 456
    .local v31, "receiver":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1700(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnTextMessageListener;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/abtollc/sdk/OnTextMessageListener;->onTextMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    .end local v25    # "message":Ljava/lang/String;
    .end local v31    # "receiver":Ljava/lang/String;
    .end local v35    # "sender":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "init_state"

    .line 461
    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 460
    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->valueOf(I)Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    move-result-object v36

    .line 463
    .local v36, "state":Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1800(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnInitializeListener;

    move-result-object v41

    if-eqz v41, :cond_0

    if-eqz v36, :cond_0

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "message"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 465
    .local v23, "init_message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1800(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnInitializeListener;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/abtollc/sdk/OnInitializeListener;->onInitializeState(Lorg/abtollc/sdk/OnInitializeListener$InitializeState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    .end local v23    # "init_message":Ljava/lang/String;
    .end local v36    # "state":Lorg/abtollc/sdk/OnInitializeListener$InitializeState;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1900(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnNetworkEventListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "network_type"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 488
    .local v28, "networkType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "is_connected"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 490
    .local v24, "isConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$1900(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnNetworkEventListener;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v24

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/abtollc/sdk/OnNetworkEventListener;->onNetworkStateChanged(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 494
    .end local v24    # "isConnected":Z
    .end local v28    # "networkType":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2000(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnPlayFinishedListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2000(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnPlayFinishedListener;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/abtollc/sdk/OnPlayFinishedListener;->onPlayFinished()V

    goto/16 :goto_0

    .line 499
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2100(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRemoteAlertingListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "acc_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 501
    .local v12, "accid":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_code"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 503
    .restart local v37    # "statusCode":I
    const-wide/16 v42, -0x1

    cmp-long v41, v12, v42

    if-nez v41, :cond_a

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->getCurrentAccountId()J

    move-result-wide v12

    .line 507
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2100(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRemoteAlertingListener;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-interface {v0, v12, v13, v1}, Lorg/abtollc/sdk/OnRemoteAlertingListener;->onRemoteAlerting(JI)V

    goto/16 :goto_0

    .line 511
    .end local v12    # "accid":J
    .end local v37    # "statusCode":I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2200(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallErrorListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "remote_contact"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 513
    .restart local v32    # "remoteContact":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "message"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 514
    .restart local v25    # "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "code"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 515
    .local v18, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2200(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallErrorListener;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    move/from16 v2, v18

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/abtollc/sdk/OnCallErrorListener;->onCallError(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 519
    .end local v18    # "code":I
    .end local v25    # "message":Ljava/lang/String;
    .end local v32    # "remoteContact":Ljava/lang/String;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2300(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnToneReceivedListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "tone_digit"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 521
    .local v39, "tone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2300(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnToneReceivedListener;

    move-result-object v41

    move/from16 v0, v39

    int-to-char v0, v0

    move/from16 v42, v0

    invoke-interface/range {v41 .. v42}, Lorg/abtollc/sdk/OnToneReceivedListener;->onToneReceived(C)V

    goto/16 :goto_0

    .line 525
    .end local v39    # "tone":I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v42

    const-string v43, "call_id"

    const/16 v44, -0x1

    invoke-virtual/range {v42 .. v44}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v42

    invoke-static/range {v41 .. v42}, Lorg/abtollc/sdk/AbtoPhone;->access$602(Lorg/abtollc/sdk/AbtoPhone;I)I

    .line 526
    const-string v41, "AbtoPhone"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "call Id = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lorg/abtollc/sdk/AbtoPhone;->access$600(Lorg/abtollc/sdk/AbtoPhone;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnPresenceListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "remote_contact"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 531
    .local v40, "uri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_code"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 532
    .local v30, "pres":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_text"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 534
    .local v29, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnPresenceListener;

    move-result-object v41

    invoke-static {}, Lorg/abtollc/api/SipManager$PresenceStatus;->values()[Lorg/abtollc/api/SipManager$PresenceStatus;

    move-result-object v42

    aget-object v42, v42, v30

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/abtollc/sdk/OnPresenceListener;->onPresenceChanged(Ljava/lang/String;Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    .end local v29    # "note":Ljava/lang/String;
    .end local v30    # "pres":I
    .end local v40    # "uri":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2500(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnTextMessageStatusListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "message"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 541
    .local v26, "messageId":J
    const-wide/16 v42, -0x1

    cmp-long v41, v26, v42

    if-eqz v41, :cond_0

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2500(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnTextMessageStatusListener;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/sdk/AbtoPhone;->getMessage(J)Lorg/abtollc/api/SipMessage;

    move-result-object v42

    invoke-interface/range {v41 .. v42}, Lorg/abtollc/sdk/OnTextMessageStatusListener;->onTextMessageStatus(Lorg/abtollc/api/SipMessage;)V

    goto/16 :goto_0

    .line 548
    .end local v26    # "messageId":J
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallTransferListener;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "call_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 550
    .local v16, "callId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_code"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 551
    .restart local v37    # "statusCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "status_text"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 552
    .restart local v38    # "statusText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallTransferListener;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/abtollc/sdk/OnCallTransferListener;->onCallTransferState(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 557
    .end local v16    # "callId":I
    .end local v37    # "statusCode":I
    .end local v38    # "statusText":Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2700(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/ZRTPEventHandler;

    move-result-object v41

    if-eqz v41, :cond_0

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "call_id"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 559
    .restart local v16    # "callId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "zrtp_sas"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 560
    .local v34, "sas":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/abtollc/sdk/AbtoPhone$2;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/abtollc/sdk/AbtoPhone;->access$2700(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/ZRTPEventHandler;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/abtollc/sdk/ZRTPEventHandler;->onZrtpSas(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
