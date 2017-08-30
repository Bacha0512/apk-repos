.class public abstract enum Lcom/google/a/u;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/u;

.field public static final enum b:Lcom/google/a/u;

.field private static final synthetic c:[Lcom/google/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/a/u$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/a/u$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/u;->a:Lcom/google/a/u;

    new-instance v0, Lcom/google/a/u$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/a/u$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/u;->b:Lcom/google/a/u;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/u;

    sget-object v1, Lcom/google/a/u;->a:Lcom/google/a/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/u;->b:Lcom/google/a/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/a/u;->c:[Lcom/google/a/u;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/a/u$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/u;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/u;
    .locals 1

    const-class v0, Lcom/google/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/u;

    return-object v0
.end method

.method public static values()[Lcom/google/a/u;
    .locals 1

    sget-object v0, Lcom/google/a/u;->c:[Lcom/google/a/u;

    invoke-virtual {v0}, [Lcom/google/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/u;

    return-object v0
.end method
