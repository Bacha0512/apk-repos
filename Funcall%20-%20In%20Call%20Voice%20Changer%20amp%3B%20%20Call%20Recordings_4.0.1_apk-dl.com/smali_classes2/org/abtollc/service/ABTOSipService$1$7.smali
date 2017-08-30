.class Lorg/abtollc/service/ABTOSipService$1$7;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$accountId:J

.field final synthetic val$callee:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$7;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$callee:Ljava/lang/String;

    iput-wide p3, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$accountId:J

    iput-object p5, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will sms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$callee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 346
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$callee:Ljava/lang/String;

    iget-wide v4, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$accountId:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/abtollc/voip/SipService;->sanitizeSipUri(Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;

    move-result-object v10

    .line 347
    .local v10, "called":Lorg/abtollc/service/ABTOSipService$ToCall;
    if-eqz v10, :cond_0

    .line 348
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$7;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v1, v1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    iget-wide v2, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v1

    iget-object v9, v1, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 349
    .local v9, "full_sender":Ljava/lang/String;
    new-instance v0, Lorg/abtollc/api/SipMessage;

    const-string v1, "SELF"

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$callee:Ljava/lang/String;

    invoke-static {v2}, Lorg/abtollc/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v10}, Lorg/abtollc/service/ABTOSipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/abtollc/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$message:Ljava/lang/String;

    const-string v5, "text/plain"

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct/range {v0 .. v9}, Lorg/abtollc/api/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 352
    .local v0, "msg":Lorg/abtollc/api/SipMessage;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/abtollc/api/SipMessage;->setRead(Z)V

    .line 353
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$7;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v1, v1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    sget-object v2, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 354
    invoke-virtual {v0}, Lorg/abtollc/api/SipMessage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 353
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 356
    .local v14, "uri":Landroid/net/Uri;
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 358
    .local v12, "msgId":J
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v11, "evData":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v11, v1, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$7;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v1, v1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v11}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 362
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$callee:Ljava/lang/String;

    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$message:Ljava/lang/String;

    iget-wide v4, p0, Lorg/abtollc/service/ABTOSipService$1$7;->val$accountId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/abtollc/voip/SipService;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)Lorg/abtollc/service/ABTOSipService$ToCall;

    .line 364
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/abtollc/api/SipMessage;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0    # "msg":Lorg/abtollc/api/SipMessage;
    .end local v9    # "full_sender":Ljava/lang/String;
    .end local v10    # "called":Lorg/abtollc/service/ABTOSipService$ToCall;
    .end local v11    # "evData":Landroid/os/Bundle;
    .end local v12    # "msgId":J
    .end local v14    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 366
    .restart local v10    # "called":Lorg/abtollc/service/ABTOSipService$ToCall;
    :cond_0
    const-string v1, "SIP SRV"

    const-string v2, "Sip URI is invalid to call"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v10    # "called":Lorg/abtollc/service/ABTOSipService$ToCall;
    :cond_1
    const-string v1, "SIP SRV"

    const-string v2, "Connection is not valid"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
