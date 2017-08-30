.class public interface abstract Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/RTCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSample(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
.end method

.method public abstract onWarning(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWarningCleared(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V
.end method
