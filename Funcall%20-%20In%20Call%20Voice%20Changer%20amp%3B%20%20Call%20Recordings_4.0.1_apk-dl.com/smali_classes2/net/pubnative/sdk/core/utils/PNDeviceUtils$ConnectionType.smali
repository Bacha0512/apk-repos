.class public final enum Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/utils/PNDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

.field public static final enum CELLULAR:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

.field public static final enum UNKNOWN:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

.field public static final enum WIFI:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->UNKNOWN:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    .line 41
    new-instance v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    const-string v1, "CELLULAR"

    invoke-direct {v0, v1, v3}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->CELLULAR:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    .line 42
    new-instance v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->WIFI:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    sget-object v1, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->UNKNOWN:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->CELLULAR:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->WIFI:Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->$VALUES:[Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->$VALUES:[Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    invoke-virtual {v0}, [Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    return-object v0
.end method
