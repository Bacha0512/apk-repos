.class public Lcom/digits/sdk/android/aw$a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/a/a/f/e",
        "<",
        "Lcom/digits/sdk/android/aw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    const-class v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    new-instance v2, Lcom/twitter/sdk/android/core/b;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/g;->a()Lcom/google/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/aw$a;->a:Lcom/google/a/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/digits/sdk/android/aw;
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/digits/sdk/android/aw$a;->a:Lcom/google/a/f;

    const-class v3, Lcom/digits/sdk/android/aw;

    invoke-virtual {v2, p1, v3}, Lcom/google/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/digits/sdk/android/aw;

    move-object v7, v0

    new-instance v2, Lcom/digits/sdk/android/aw;

    invoke-virtual {v7}, Lcom/digits/sdk/android/aw;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v7}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v4

    invoke-static {v7}, Lcom/digits/sdk/android/aw;->a(Lcom/digits/sdk/android/aw;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    :goto_0
    invoke-static {v7}, Lcom/digits/sdk/android/aw;->b(Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/models/f;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v7, Lcom/digits/sdk/android/aw;->a:Lcom/digits/sdk/android/models/f;

    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/digits/sdk/android/aw;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;Lcom/digits/sdk/android/models/f;)V

    :goto_2
    return-object v2

    :cond_0
    invoke-static {v7}, Lcom/digits/sdk/android/aw;->a(Lcom/digits/sdk/android/aw;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/digits/sdk/android/aw;->b(Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/models/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v3

    const-string v4, "Digits"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public a(Lcom/digits/sdk/android/aw;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/digits/sdk/android/aw;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/aw$a;->a:Lcom/google/a/f;

    invoke-virtual {v0, p1}, Lcom/google/a/f;->b(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Digits"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/digits/sdk/android/aw;

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/aw$a;->a(Lcom/digits/sdk/android/aw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/aw$a;->a(Ljava/lang/String;)Lcom/digits/sdk/android/aw;

    move-result-object v0

    return-object v0
.end method
