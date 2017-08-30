.class Lcom/weirdvoice/service/SipService$DestroyRunnable;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DestroyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$DestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$DestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$DestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->stopSelf()V

    .line 1915
    :cond_0
    return-void
.end method
