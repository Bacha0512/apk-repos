.class Lcom/oneaudience/sdk/a$1;
.super Lcom/oneaudience/sdk/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneaudience/sdk/b/a/b",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/a;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/a$1;->a:Lcom/oneaudience/sdk/a;

    invoke-direct {p0}, Lcom/oneaudience/sdk/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/oneaudience/sdk/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneaudience/sdk/b/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneaudience/sdk/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "File seems to be missing or its content corrupted, creates new list."

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;)Z
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/oneaudience/sdk/a$1;->a(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/oneaudience/sdk/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/oneaudience/sdk/f;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneaudience/sdk/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable write to preferences."

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/a$1;->a(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
