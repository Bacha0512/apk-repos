.class public abstract Lorg/abtollc/utils/audio/AudioFocusWrapper;
.super Ljava/lang/Object;
.source "AudioFocusWrapper.java"


# static fields
.field private static instance:Lorg/abtollc/utils/audio/AudioFocusWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lorg/abtollc/utils/audio/AudioFocusWrapper;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/abtollc/utils/audio/AudioFocusWrapper;->instance:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    if-nez v0, :cond_0

    .line 14
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lorg/abtollc/utils/audio/AudioFocus8;

    invoke-direct {v0}, Lorg/abtollc/utils/audio/AudioFocus8;-><init>()V

    sput-object v0, Lorg/abtollc/utils/audio/AudioFocusWrapper;->instance:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    .line 21
    :cond_0
    :goto_0
    sget-object v0, Lorg/abtollc/utils/audio/AudioFocusWrapper;->instance:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    return-object v0

    .line 17
    :cond_1
    new-instance v0, Lorg/abtollc/utils/audio/AudioFocus3;

    invoke-direct {v0}, Lorg/abtollc/utils/audio/AudioFocus3;-><init>()V

    sput-object v0, Lorg/abtollc/utils/audio/AudioFocusWrapper;->instance:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract focus()V
.end method

.method public abstract init(Lorg/abtollc/service/ABTOSipService;Landroid/media/AudioManager;)V
.end method

.method public abstract unFocus()V
.end method
