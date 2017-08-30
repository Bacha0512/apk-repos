.class public final enum Lfr/acetelecom/vc/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/acetelecom/vc/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lfr/acetelecom/vc/f$a;

.field public static final enum b:Lfr/acetelecom/vc/f$a;

.field public static final enum c:Lfr/acetelecom/vc/f$a;

.field public static final enum d:Lfr/acetelecom/vc/f$a;

.field public static final enum e:Lfr/acetelecom/vc/f$a;

.field private static final synthetic f:[Lfr/acetelecom/vc/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lfr/acetelecom/vc/f$a;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v2}, Lfr/acetelecom/vc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/acetelecom/vc/f$a;->a:Lfr/acetelecom/vc/f$a;

    new-instance v0, Lfr/acetelecom/vc/f$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lfr/acetelecom/vc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/acetelecom/vc/f$a;->b:Lfr/acetelecom/vc/f$a;

    new-instance v0, Lfr/acetelecom/vc/f$a;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v4}, Lfr/acetelecom/vc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/acetelecom/vc/f$a;->c:Lfr/acetelecom/vc/f$a;

    new-instance v0, Lfr/acetelecom/vc/f$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lfr/acetelecom/vc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    new-instance v0, Lfr/acetelecom/vc/f$a;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v6}, Lfr/acetelecom/vc/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/acetelecom/vc/f$a;->e:Lfr/acetelecom/vc/f$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->a:Lfr/acetelecom/vc/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lfr/acetelecom/vc/f$a;->b:Lfr/acetelecom/vc/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lfr/acetelecom/vc/f$a;->c:Lfr/acetelecom/vc/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lfr/acetelecom/vc/f$a;->e:Lfr/acetelecom/vc/f$a;

    aput-object v1, v0, v6

    sput-object v0, Lfr/acetelecom/vc/f$a;->f:[Lfr/acetelecom/vc/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/acetelecom/vc/f$a;
    .locals 1

    const-class v0, Lfr/acetelecom/vc/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/acetelecom/vc/f$a;

    return-object v0
.end method

.method public static values()[Lfr/acetelecom/vc/f$a;
    .locals 1

    sget-object v0, Lfr/acetelecom/vc/f$a;->f:[Lfr/acetelecom/vc/f$a;

    invoke-virtual {v0}, [Lfr/acetelecom/vc/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/acetelecom/vc/f$a;

    return-object v0
.end method
