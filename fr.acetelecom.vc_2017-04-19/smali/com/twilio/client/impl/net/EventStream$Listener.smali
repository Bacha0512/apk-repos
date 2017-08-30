.class public interface abstract Lcom/twilio/client/impl/net/EventStream$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/net/EventStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEventStreamConnected()V
.end method

.method public abstract onEventStreamDisconnected()V
.end method

.method public abstract onEventStreamDisconnected(Ljava/lang/Exception;Z)V
.end method

.method public abstract onFeaturesUpdated()V
.end method

.method public abstract onMessageReceived(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method
