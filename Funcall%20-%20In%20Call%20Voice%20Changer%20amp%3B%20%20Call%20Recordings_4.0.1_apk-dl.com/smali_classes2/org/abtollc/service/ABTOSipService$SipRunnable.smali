.class public abstract Lorg/abtollc/service/ABTOSipService$SipRunnable;
.super Ljava/lang/Object;
.source "ABTOSipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SipRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2634
    :try_start_0
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;->doRun()V
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    :goto_0
    return-void

    .line 2635
    :catch_0
    move-exception v0

    .line 2636
    .local v0, "e":Lorg/abtollc/service/ABTOSipService$SameThreadException;
    const-string v1, "SIP SRV"

    const-string v2, "Not done from same thread"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
