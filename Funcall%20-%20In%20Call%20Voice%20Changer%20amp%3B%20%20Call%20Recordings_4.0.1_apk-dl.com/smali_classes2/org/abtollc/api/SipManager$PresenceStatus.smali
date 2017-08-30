.class public final enum Lorg/abtollc/api/SipManager$PresenceStatus;
.super Ljava/lang/Enum;
.source "SipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/SipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/abtollc/api/SipManager$PresenceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/abtollc/api/SipManager$PresenceStatus;

.field public static final enum AWAY:Lorg/abtollc/api/SipManager$PresenceStatus;

.field public static final enum BUSY:Lorg/abtollc/api/SipManager$PresenceStatus;

.field public static final enum OFFLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

.field public static final enum ONLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

.field public static final enum UNKNOWN:Lorg/abtollc/api/SipManager$PresenceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    new-instance v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/abtollc/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->UNKNOWN:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 448
    new-instance v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lorg/abtollc/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->ONLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 452
    new-instance v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v4}, Lorg/abtollc/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->OFFLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 456
    new-instance v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v5}, Lorg/abtollc/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->BUSY:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 460
    new-instance v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v6}, Lorg/abtollc/api/SipManager$PresenceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->AWAY:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 440
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/abtollc/api/SipManager$PresenceStatus;

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->UNKNOWN:Lorg/abtollc/api/SipManager$PresenceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->ONLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->OFFLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->BUSY:Lorg/abtollc/api/SipManager$PresenceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/abtollc/api/SipManager$PresenceStatus;->AWAY:Lorg/abtollc/api/SipManager$PresenceStatus;

    aput-object v1, v0, v6

    sput-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->$VALUES:[Lorg/abtollc/api/SipManager$PresenceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/abtollc/api/SipManager$PresenceStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 440
    const-class v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method public static values()[Lorg/abtollc/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->$VALUES:[Lorg/abtollc/api/SipManager$PresenceStatus;

    invoke-virtual {v0}, [Lorg/abtollc/api/SipManager$PresenceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/abtollc/api/SipManager$PresenceStatus;

    return-object v0
.end method
