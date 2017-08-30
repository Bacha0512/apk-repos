.class Lcom/weirdvoice/service/SipService$1$2;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->addAllAccounts()V
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
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$2;->this$1:Lcom/weirdvoice/service/SipService$1;

    .line 153
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1$2;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v0

    # invokes: Lcom/weirdvoice/service/SipService;->addAllAccounts()V
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$1(Lcom/weirdvoice/service/SipService;)V

    .line 157
    return-void
.end method
