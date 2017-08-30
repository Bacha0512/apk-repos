.class public Lcom/weirdvoice/utils/audio/AudioFocus17;
.super Lcom/weirdvoice/utils/audio/AudioFocus8;
.source "AudioFocus17.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "AudioFocus 17"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/weirdvoice/utils/audio/AudioFocus8;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/weirdvoice/utils/audio/AudioFocus17;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
