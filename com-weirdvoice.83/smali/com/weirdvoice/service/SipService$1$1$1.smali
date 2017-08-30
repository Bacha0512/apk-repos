.class Lcom/weirdvoice/service/SipService$1$1$1;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/weirdvoice/service/SipService$1$1;

.field private final synthetic val$accountId:I

.field private final synthetic val$callee:Ljava/lang/String;

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1$1;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$1$1;->this$2:Lcom/weirdvoice/service/SipService$1$1;

    iput-object p2, p0, Lcom/weirdvoice/service/SipService$1$1$1;->val$callee:Ljava/lang/String;

    iput p3, p0, Lcom/weirdvoice/service/SipService$1$1$1;->val$accountId:I

    iput-object p4, p0, Lcom/weirdvoice/service/SipService$1$1$1;->val$options:Landroid/os/Bundle;

    .line 293
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 296
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1$1$1;->val$callee:Ljava/lang/String;

    iget v2, p0, Lcom/weirdvoice/service/SipService$1$1$1;->val$accountId:I

    iget-object v3, p0, Lcom/weirdvoice/service/SipService$1$1$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/weirdvoice/pjsip/PjSipService;->makeCall(Ljava/lang/String;ILandroid/os/Bundle;)I

    .line 297
    return-void
.end method
