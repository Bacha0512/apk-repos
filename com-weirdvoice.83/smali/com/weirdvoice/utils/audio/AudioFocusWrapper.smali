.class public abstract Lcom/weirdvoice/utils/audio/AudioFocusWrapper;
.super Ljava/lang/Object;
.source "AudioFocusWrapper.java"


# static fields
.field private static instance:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/weirdvoice/utils/audio/AudioFocusWrapper;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->instance:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    if-nez v0, :cond_0

    .line 34
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/weirdvoice/utils/audio/AudioFocus17;

    invoke-direct {v0}, Lcom/weirdvoice/utils/audio/AudioFocus17;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->instance:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    .line 43
    :cond_0
    :goto_0
    sget-object v0, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->instance:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    return-object v0

    .line 36
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Lcom/weirdvoice/utils/audio/AudioFocus8;

    invoke-direct {v0}, Lcom/weirdvoice/utils/audio/AudioFocus8;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->instance:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Lcom/weirdvoice/utils/audio/AudioFocus3;

    invoke-direct {v0}, Lcom/weirdvoice/utils/audio/AudioFocus3;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->instance:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract focus(Z)V
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Lcom/weirdvoice/service/SipService;Landroid/media/AudioManager;)V
.end method

.method public abstract unFocus()V
.end method
