.class public final enum Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/PNMediumLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

.field public static final enum LEFT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

.field public static final enum RIGHT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->LEFT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    .line 13
    new-instance v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->RIGHT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->LEFT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    aput-object v1, v0, v2

    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->RIGHT:Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->$VALUES:[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->$VALUES:[Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    invoke-virtual {v0}, [Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;

    return-object v0
.end method
