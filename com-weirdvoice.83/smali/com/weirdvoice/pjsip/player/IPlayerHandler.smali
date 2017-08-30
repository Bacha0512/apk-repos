.class public interface abstract Lcom/weirdvoice/pjsip/player/IPlayerHandler;
.super Ljava/lang/Object;
.source "IPlayerHandler.java"


# virtual methods
.method public abstract startPlaying()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation
.end method

.method public abstract stopPlaying()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation
.end method
