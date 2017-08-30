.class Lcom/weirdvoice/service/SipService$1$15;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->setMicrophoneMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$15;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput-boolean p2, p0, Lcom/weirdvoice/service/SipService$1$15;->val$on:Z

    .line 486
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 489
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/weirdvoice/service/SipService$1$15;->val$on:Z

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/PjSipService;->setMicrophoneMute(Z)V

    .line 490
    return-void
.end method
