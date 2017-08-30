.class public interface abstract Lnet/pubnative/player/VASTPlayer$Listener;
.super Ljava/lang/Object;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/player/VASTPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onVASTPlayerFail(Ljava/lang/Exception;)V
.end method

.method public abstract onVASTPlayerLoadFinish()V
.end method

.method public abstract onVASTPlayerOpenOffer()V
.end method

.method public abstract onVASTPlayerPlaybackFinish()V
.end method

.method public abstract onVASTPlayerPlaybackStart()V
.end method
