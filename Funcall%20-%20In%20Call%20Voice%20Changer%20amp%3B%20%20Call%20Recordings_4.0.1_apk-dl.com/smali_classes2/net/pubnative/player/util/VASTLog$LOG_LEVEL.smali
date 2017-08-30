.class public final enum Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;
.super Ljava/lang/Enum;
.source "VASTLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/player/util/VASTLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field public static final enum debug:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field public static final enum error:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field public static final enum info:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field public static final enum none:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field public static final enum verbose:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field public static final enum warning:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42
    new-instance v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const-string v1, "verbose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->verbose:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 43
    new-instance v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const-string v1, "debug"

    invoke-direct {v0, v1, v3, v4}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->debug:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 44
    new-instance v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const-string v1, "info"

    invoke-direct {v0, v1, v4, v5}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->info:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 45
    new-instance v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const-string v1, "warning"

    invoke-direct {v0, v1, v5, v6}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->warning:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 46
    new-instance v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const-string v1, "error"

    invoke-direct {v0, v1, v6, v7}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->error:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 47
    new-instance v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const-string v1, "none"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->none:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    const/4 v1, 0x0

    sget-object v2, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->verbose:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    aput-object v2, v0, v1

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->debug:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->info:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->warning:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->error:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->none:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    aput-object v1, v0, v7

    sput-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->$VALUES:[Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->value:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->$VALUES:[Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, [Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->value:I

    return v0
.end method
