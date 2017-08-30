.class Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;
.super Landroid/telephony/PhoneStateListener;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServicePhoneStateReceiver"
.end annotation


# instance fields
.field private ignoreFirstCallState:Z

.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method private constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 1

    .prologue
    .line 1545
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;->ignoreFirstCallState:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/abtollc/service/ABTOSipService;Lorg/abtollc/service/ABTOSipService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/abtollc/service/ABTOSipService;
    .param p2, "x1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 1545
    invoke-direct {p0, p1}, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1565
    iget-boolean v0, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;->ignoreFirstCallState:Z

    if-nez v0, :cond_0

    .line 1566
    const-string v0, "SIP SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call state has changed !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;-><init>(Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1579
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1580
    return-void

    .line 1577
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;->ignoreFirstCallState:Z

    goto :goto_0
.end method
