.class Lcom/weirdvoice/pjsip/PjSipService$1;
.super Ljava/util/TimerTask;
.source "PjSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/pjsip/PjSipService;->sendDtmf(ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/pjsip/PjSipService;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/pjsip/PjSipService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/pjsip/PjSipService$1;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    iput p2, p0, Lcom/weirdvoice/pjsip/PjSipService$1;->val$callId:I

    .line 1415
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/pjsip/PjSipService$1;)Lcom/weirdvoice/pjsip/PjSipService;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService$1;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService$1;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/pjsip/PjSipService$1$1;

    iget v2, p0, Lcom/weirdvoice/pjsip/PjSipService$1;->val$callId:I

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/pjsip/PjSipService$1$1;-><init>(Lcom/weirdvoice/pjsip/PjSipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1425
    return-void
.end method
