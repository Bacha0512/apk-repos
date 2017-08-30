.class final enum Lnet/pubnative/player/VASTPlayer$PlayerState;
.super Ljava/lang/Enum;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/player/VASTPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/player/VASTPlayer$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/player/VASTPlayer$PlayerState;

.field public static final enum Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

.field public static final enum Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

.field public static final enum Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

.field public static final enum Playing:Lnet/pubnative/player/VASTPlayer$PlayerState;

.field public static final enum Ready:Lnet/pubnative/player/VASTPlayer$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    const-string v1, "Empty"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/player/VASTPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 109
    new-instance v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    const-string v1, "Loading"

    invoke-direct {v0, v1, v3}, Lnet/pubnative/player/VASTPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 110
    new-instance v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v4}, Lnet/pubnative/player/VASTPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Ready:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 111
    new-instance v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    const-string v1, "Playing"

    invoke-direct {v0, v1, v5}, Lnet/pubnative/player/VASTPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Playing:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 112
    new-instance v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v6}, Lnet/pubnative/player/VASTPlayer$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/pubnative/player/VASTPlayer$PlayerState;

    sget-object v1, Lnet/pubnative/player/VASTPlayer$PlayerState;->Empty:Lnet/pubnative/player/VASTPlayer$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lnet/pubnative/player/VASTPlayer$PlayerState;->Loading:Lnet/pubnative/player/VASTPlayer$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lnet/pubnative/player/VASTPlayer$PlayerState;->Ready:Lnet/pubnative/player/VASTPlayer$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lnet/pubnative/player/VASTPlayer$PlayerState;->Playing:Lnet/pubnative/player/VASTPlayer$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lnet/pubnative/player/VASTPlayer$PlayerState;->Pause:Lnet/pubnative/player/VASTPlayer$PlayerState;

    aput-object v1, v0, v6

    sput-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->$VALUES:[Lnet/pubnative/player/VASTPlayer$PlayerState;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/player/VASTPlayer$PlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/VASTPlayer$PlayerState;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/player/VASTPlayer$PlayerState;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lnet/pubnative/player/VASTPlayer$PlayerState;->$VALUES:[Lnet/pubnative/player/VASTPlayer$PlayerState;

    invoke-virtual {v0}, [Lnet/pubnative/player/VASTPlayer$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/player/VASTPlayer$PlayerState;

    return-object v0
.end method
