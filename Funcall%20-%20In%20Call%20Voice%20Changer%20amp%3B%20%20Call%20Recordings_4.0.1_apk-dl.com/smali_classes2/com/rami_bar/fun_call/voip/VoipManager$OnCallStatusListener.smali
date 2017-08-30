.class public interface abstract Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;
.super Ljava/lang/Object;
.source "VoipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/voip/VoipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCallStatusListener"
.end annotation


# virtual methods
.method public abstract onCallConnected()V
.end method

.method public abstract onCallDisconnected()V
.end method

.method public abstract onCallNotConnected()V
.end method
