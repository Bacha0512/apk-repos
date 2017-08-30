.class public final enum Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/PNMediumLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

.field public static final enum BOTTOM:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

.field public static final enum CENTER:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

.field public static final enum TOP:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->TOP:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    .line 18
    new-instance v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->CENTER:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    .line 19
    new-instance v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->BOTTOM:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->TOP:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    aput-object v1, v0, v2

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->CENTER:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    aput-object v1, v0, v3

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->BOTTOM:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    aput-object v1, v0, v4

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->$VALUES:[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->$VALUES:[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    invoke-virtual {v0}, [Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;

    return-object v0
.end method
