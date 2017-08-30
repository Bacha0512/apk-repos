.class Lcom/weirdvoice/service/SipService$StartRunnable;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$StartRunnable;->this$0:Lcom/weirdvoice/service/SipService;

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
    .line 1858
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$StartRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    # invokes: Lcom/weirdvoice/service/SipService;->startSipStack()V
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$9(Lcom/weirdvoice/service/SipService;)V

    .line 1859
    return-void
.end method
