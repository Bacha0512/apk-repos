.class Lorg/abtollc/service/ABTOSipService$1$6;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->makeCallWithOptions(Ljava/lang/String;JLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$accountId:J

.field final synthetic val$callee:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$6;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$1$6;->val$callee:Ljava/lang/String;

    iput-wide p3, p0, Lorg/abtollc/service/ABTOSipService$1$6;->val$accountId:J

    iput-object p5, p0, Lorg/abtollc/service/ABTOSipService$1$6;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 327
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$6;->val$callee:Ljava/lang/String;

    iget-wide v2, p0, Lorg/abtollc/service/ABTOSipService$1$6;->val$accountId:J

    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService$1$6;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/abtollc/voip/SipService;->makeCall(Ljava/lang/String;JLandroid/os/Bundle;)I

    .line 328
    return-void
.end method
