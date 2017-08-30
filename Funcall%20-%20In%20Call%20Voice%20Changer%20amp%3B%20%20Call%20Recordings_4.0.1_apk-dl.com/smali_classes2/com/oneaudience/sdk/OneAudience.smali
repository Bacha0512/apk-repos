.class public Lcom/oneaudience/sdk/OneAudience;
.super Ljava/lang/Object;


# static fields
.field public static final VERSION_CODE:I = 0x158f

.field public static final VERSION_NAME:Ljava/lang/String; = "5.5.1.9"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/OneAudience;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/oneaudience/sdk/OneAudience;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "OneAudience SDK requires permission %s, please add it in the Manifest."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/oneaudience/sdk/OneAudience;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Landroid/content/Context;)Lcom/oneaudience/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/oneaudience/sdk/l;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static final optOut()V
    .locals 1

    invoke-static {}, Lcom/oneaudience/sdk/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Landroid/content/Context;)Lcom/oneaudience/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneaudience/sdk/l;->b()V

    :cond_0
    return-void
.end method

.method public static final requestAccountPermission(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/p;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneaudience/sdk/f;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method
