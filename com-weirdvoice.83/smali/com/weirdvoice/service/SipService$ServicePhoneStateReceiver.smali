.class Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;
.super Landroid/telephony/PhoneStateListener;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServicePhoneStateReceiver"
.end annotation


# instance fields
.field private ignoreFirstCallState:Z

.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 1

    .prologue
    .line 972
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;->ignoreFirstCallState:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/service/SipService;Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;)V
    .locals 0

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;-><init>(Lcom/weirdvoice/service/SipService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;->ignoreFirstCallState:Z

    if-nez v0, :cond_0

    .line 1000
    const-string v0, "SIP SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call state has changed !"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;-><init>(Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1013
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1014
    return-void

    .line 1011
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;->ignoreFirstCallState:Z

    goto :goto_0
.end method
