.class Lcom/oneaudience/sdk/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneaudience/sdk/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneaudience/sdk/a/b$a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/a/b$a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/a/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneaudience/sdk/a/b$a;-><init>()V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xa

    const-string v3, "qwertyuiopasdfghjklzxcvbnm1234567890"

    new-array v4, v2, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/a/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
