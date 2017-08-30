.class Lcom/weirdvoice/service/SipService$1$1;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$1;->this$1:Lcom/weirdvoice/service/SipService$1;

    .line 270
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x2

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 275
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "action":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 277
    const-string v5, "SIP SRV"

    const-string v6, "No data in intent retrieved for call"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v5, "com.weirdvoice.service.CALL_LAUNCHED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 281
    const-string v5, "SIP SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received invalid action "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    const-string v5, "id"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 286
    .local v0, "accountId":I
    const-string v5, "call_target"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "callee":Ljava/lang/String;
    const-string v5, "call_options"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 288
    .local v4, "options":Landroid/os/Bundle;
    if-eq v0, v6, :cond_2

    if-nez v2, :cond_3

    .line 289
    :cond_2
    const-string v5, "SIP SRV"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid rewrite "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v5, p0, Lcom/weirdvoice/service/SipService$1$1;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v5}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v5

    new-instance v6, Lcom/weirdvoice/service/SipService$1$1$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/weirdvoice/service/SipService$1$1$1;-><init>(Lcom/weirdvoice/service/SipService$1$1;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
