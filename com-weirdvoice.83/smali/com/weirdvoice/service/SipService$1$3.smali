.class Lcom/weirdvoice/service/SipService$1$3;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->removeAllAccounts()V
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
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$3;->this$1:Lcom/weirdvoice/service/SipService$1;

    .line 167
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1$3;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lcom/weirdvoice/service/SipService;->unregisterAllAccounts(Z)V
    invoke-static {v0, v1}, Lcom/weirdvoice/service/SipService;->access$2(Lcom/weirdvoice/service/SipService;Z)V

    .line 171
    return-void
.end method
