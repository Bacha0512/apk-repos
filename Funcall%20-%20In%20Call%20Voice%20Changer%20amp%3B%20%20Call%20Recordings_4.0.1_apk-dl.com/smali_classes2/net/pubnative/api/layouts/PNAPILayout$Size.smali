.class public final enum Lnet/pubnative/api/layouts/PNAPILayout$Size;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/layouts/PNAPILayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/pubnative/api/layouts/PNAPILayout$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/api/layouts/PNAPILayout$Size;

.field public static final enum LARGE:Lnet/pubnative/api/layouts/PNAPILayout$Size;

.field public static final enum MEDIUM:Lnet/pubnative/api/layouts/PNAPILayout$Size;

.field public static final enum SMALL:Lnet/pubnative/api/layouts/PNAPILayout$Size;


# instance fields
.field private final size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;

    const-string v1, "SMALL"

    const-string v2, "s"

    invoke-direct {v0, v1, v3, v2}, Lnet/pubnative/api/layouts/PNAPILayout$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->SMALL:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    .line 57
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;

    const-string v1, "MEDIUM"

    const-string v2, "m"

    invoke-direct {v0, v1, v4, v2}, Lnet/pubnative/api/layouts/PNAPILayout$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->MEDIUM:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    .line 58
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;

    const-string v1, "LARGE"

    const-string v2, "l"

    invoke-direct {v0, v1, v5, v2}, Lnet/pubnative/api/layouts/PNAPILayout$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->LARGE:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/pubnative/api/layouts/PNAPILayout$Size;

    sget-object v1, Lnet/pubnative/api/layouts/PNAPILayout$Size;->SMALL:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    aput-object v1, v0, v3

    sget-object v1, Lnet/pubnative/api/layouts/PNAPILayout$Size;->MEDIUM:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    aput-object v1, v0, v4

    sget-object v1, Lnet/pubnative/api/layouts/PNAPILayout$Size;->LARGE:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    aput-object v1, v0, v5

    sput-object v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->$VALUES:[Lnet/pubnative/api/layouts/PNAPILayout$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->size:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/api/layouts/PNAPILayout$Size;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;

    return-object v0
.end method

.method public static values()[Lnet/pubnative/api/layouts/PNAPILayout$Size;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->$VALUES:[Lnet/pubnative/api/layouts/PNAPILayout$Size;

    invoke-virtual {v0}, [Lnet/pubnative/api/layouts/PNAPILayout$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/api/layouts/PNAPILayout$Size;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout$Size;->size:Ljava/lang/String;

    return-object v0
.end method
