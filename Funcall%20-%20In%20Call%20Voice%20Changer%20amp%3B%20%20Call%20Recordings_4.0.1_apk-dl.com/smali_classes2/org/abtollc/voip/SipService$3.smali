.class synthetic Lorg/abtollc/voip/SipService$3;
.super Ljava/lang/Object;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/voip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$abtollc$api$SipManager$PresenceStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2011
    invoke-static {}, Lorg/abtollc/api/SipManager$PresenceStatus;->values()[Lorg/abtollc/api/SipManager$PresenceStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/abtollc/voip/SipService$3;->$SwitchMap$org$abtollc$api$SipManager$PresenceStatus:[I

    :try_start_0
    sget-object v0, Lorg/abtollc/voip/SipService$3;->$SwitchMap$org$abtollc$api$SipManager$PresenceStatus:[I

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->AWAY:Lorg/abtollc/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lorg/abtollc/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/abtollc/voip/SipService$3;->$SwitchMap$org$abtollc$api$SipManager$PresenceStatus:[I

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->BUSY:Lorg/abtollc/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lorg/abtollc/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
