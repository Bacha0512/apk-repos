.class abstract Lcom/oneaudience/sdk/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "COMMANDS"

    sput-object v0, Lcom/oneaudience/sdk/o;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected varargs a(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneaudience/sdk/r$b;",
            "Lcom/oneaudience/sdk/q",
            "<TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    sget-object v0, Lcom/oneaudience/sdk/o;->a:Ljava/lang/String;

    const-string v1, "SUBMITTING TASK: %s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/oneaudience/sdk/r$d;

    invoke-direct {v0, p2}, Lcom/oneaudience/sdk/r$d;-><init>(Lcom/oneaudience/sdk/q;)V

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/r$d;->a(Lcom/oneaudience/sdk/r$b;)Lcom/oneaudience/sdk/r$d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/oneaudience/sdk/r$d;->a([Ljava/lang/Object;)Lcom/oneaudience/sdk/r$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneaudience/sdk/r$d;->a()Lcom/oneaudience/sdk/b;

    return-void
.end method

.method protected varargs b(Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/q;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneaudience/sdk/r$b;",
            "Lcom/oneaudience/sdk/q",
            "<TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    sget-object v0, Lcom/oneaudience/sdk/o;->a:Ljava/lang/String;

    const-string v1, "RUNNING TASK NOW: %s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/oneaudience/sdk/r$d;

    invoke-direct {v0, p2}, Lcom/oneaudience/sdk/r$d;-><init>(Lcom/oneaudience/sdk/q;)V

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/r$d;->a(Lcom/oneaudience/sdk/r$b;)Lcom/oneaudience/sdk/r$d;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/oneaudience/sdk/r$d;->a([Ljava/lang/Object;)Lcom/oneaudience/sdk/r$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneaudience/sdk/r$d;->b()Lcom/oneaudience/sdk/b;

    return-void
.end method
