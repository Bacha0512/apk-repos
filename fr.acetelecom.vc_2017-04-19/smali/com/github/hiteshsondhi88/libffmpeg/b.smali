.class final enum Lcom/github/hiteshsondhi88/libffmpeg/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/hiteshsondhi88/libffmpeg/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/hiteshsondhi88/libffmpeg/b;

.field public static final enum b:Lcom/github/hiteshsondhi88/libffmpeg/b;

.field public static final enum c:Lcom/github/hiteshsondhi88/libffmpeg/b;

.field private static final synthetic e:[Lcom/github/hiteshsondhi88/libffmpeg/b;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/b;

    const-string v1, "x86"

    const-string v2, "0dd4dbad305ff197a1ea9e6158bd2081d229e70e"

    invoke-direct {v0, v1, v3, v2}, Lcom/github/hiteshsondhi88/libffmpeg/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->a:Lcom/github/hiteshsondhi88/libffmpeg/b;

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/b;

    const-string v1, "ARMv7"

    const-string v2, "871888959ba2f063e18f56272d0d98ae01938ceb"

    invoke-direct {v0, v1, v4, v2}, Lcom/github/hiteshsondhi88/libffmpeg/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->b:Lcom/github/hiteshsondhi88/libffmpeg/b;

    new-instance v0, Lcom/github/hiteshsondhi88/libffmpeg/b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/github/hiteshsondhi88/libffmpeg/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->c:Lcom/github/hiteshsondhi88/libffmpeg/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/hiteshsondhi88/libffmpeg/b;

    sget-object v1, Lcom/github/hiteshsondhi88/libffmpeg/b;->a:Lcom/github/hiteshsondhi88/libffmpeg/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/hiteshsondhi88/libffmpeg/b;->b:Lcom/github/hiteshsondhi88/libffmpeg/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/hiteshsondhi88/libffmpeg/b;->c:Lcom/github/hiteshsondhi88/libffmpeg/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->e:[Lcom/github/hiteshsondhi88/libffmpeg/b;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/hiteshsondhi88/libffmpeg/b;->d:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/github/hiteshsondhi88/libffmpeg/b;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/github/hiteshsondhi88/libffmpeg/b;->values()[Lcom/github/hiteshsondhi88/libffmpeg/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->c:Lcom/github/hiteshsondhi88/libffmpeg/b;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/hiteshsondhi88/libffmpeg/b;
    .locals 1

    const-class v0, Lcom/github/hiteshsondhi88/libffmpeg/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/hiteshsondhi88/libffmpeg/b;

    return-object v0
.end method

.method public static values()[Lcom/github/hiteshsondhi88/libffmpeg/b;
    .locals 1

    sget-object v0, Lcom/github/hiteshsondhi88/libffmpeg/b;->e:[Lcom/github/hiteshsondhi88/libffmpeg/b;

    invoke-virtual {v0}, [Lcom/github/hiteshsondhi88/libffmpeg/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/hiteshsondhi88/libffmpeg/b;

    return-object v0
.end method
