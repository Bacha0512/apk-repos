.class Lcom/weirdvoice/service/SipService$1$6;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$accountId:J

.field private final synthetic val$callee:Ljava/lang/String;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$6;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput-object p2, p0, Lcom/weirdvoice/service/SipService$1$6;->val$callee:Ljava/lang/String;

    iput-object p3, p0, Lcom/weirdvoice/service/SipService$1$6;->val$message:Ljava/lang/String;

    iput-wide p4, p0, Lcom/weirdvoice/service/SipService$1$6;->val$accountId:J

    .line 311
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 314
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "will sms "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1$6;->val$callee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1$6;->val$callee:Ljava/lang/String;

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1$6;->val$message:Ljava/lang/String;

    iget-wide v4, p0, Lcom/weirdvoice/service/SipService$1$6;->val$accountId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/weirdvoice/pjsip/PjSipService;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)Lcom/weirdvoice/service/SipService$ToCall;

    move-result-object v10

    .line 317
    .local v10, "called":Lcom/weirdvoice/service/SipService$ToCall;
    if-eqz v10, :cond_0

    .line 318
    new-instance v0, Lcom/weirdvoice/api/SipMessage;

    const-string v1, "SELF"

    .line 319
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1$6;->val$callee:Ljava/lang/String;

    invoke-static {v2}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/weirdvoice/service/SipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    iget-object v4, p0, Lcom/weirdvoice/service/SipService$1$6;->val$message:Ljava/lang/String;

    const-string v5, "text/plain"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 321
    const/4 v8, 0x6

    invoke-virtual {v10}, Lcom/weirdvoice/service/SipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v9

    .line 318
    invoke-direct/range {v0 .. v9}, Lcom/weirdvoice/api/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 322
    .local v0, "msg":Lcom/weirdvoice/api/SipMessage;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/api/SipMessage;->setRead(Z)V

    .line 323
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1$6;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v1}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipMessage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 324
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inserted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipMessage;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "msg":Lcom/weirdvoice/api/SipMessage;
    .end local v10    # "called":Lcom/weirdvoice/service/SipService$ToCall;
    :goto_0
    return-void

    .line 326
    .restart local v10    # "called":Lcom/weirdvoice/service/SipService$ToCall;
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1$6;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v1}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1$6;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v3}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v3

    const v4, 0x7f0c01ed

    invoke-virtual {v3, v4}, Lcom/weirdvoice/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1$6;->val$callee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    .end local v10    # "called":Lcom/weirdvoice/service/SipService$ToCall;
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1$6;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v1}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1$6;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v2}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v2

    const v3, 0x7f0c01ec

    invoke-virtual {v2, v3}, Lcom/weirdvoice/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
