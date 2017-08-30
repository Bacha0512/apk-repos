.class Lorg/abtollc/service/ABTOSipService$1$33;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->stopLoopbackTest()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 912
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$33;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 916
    invoke-static {v0, v0}, Lorg/abtollc/jni/pjsua;->conf_disconnect(II)I

    .line 917
    return-void
.end method
