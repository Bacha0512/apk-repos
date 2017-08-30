.class public Lcom/twitter/sdk/android/core/m;
.super Lcom/twitter/sdk/android/core/p;


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/a/a;

.field private final b:Lcom/twitter/sdk/android/core/r;

.field private final c:I

.field private final d:Ld/l;


# direct methods
.method public constructor <init>(Ld/l;)V
    .locals 3

    invoke-static {p1}, Lcom/twitter/sdk/android/core/m;->b(Ld/l;)Lcom/twitter/sdk/android/core/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/core/m;->a(Ld/l;)Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    invoke-virtual {p1}, Ld/l;->a()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/sdk/android/core/m;-><init>(Ld/l;Lcom/twitter/sdk/android/core/a/a;Lcom/twitter/sdk/android/core/r;I)V

    return-void
.end method

.method constructor <init>(Ld/l;Lcom/twitter/sdk/android/core/a/a;Lcom/twitter/sdk/android/core/r;I)V
    .locals 1

    invoke-static {p4}, Lcom/twitter/sdk/android/core/m;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/p;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a/a;

    iput-object p3, p0, Lcom/twitter/sdk/android/core/m;->b:Lcom/twitter/sdk/android/core/r;

    iput p4, p0, Lcom/twitter/sdk/android/core/m;->c:I

    iput-object p1, p0, Lcom/twitter/sdk/android/core/m;->d:Ld/l;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a/a;
    .locals 5

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/a/f;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/a/g;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/g;->a()Lcom/google/a/f;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/twitter/sdk/android/core/a/b;

    invoke-virtual {v0, p0, v1}, Lcom/google/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a/b;

    iget-object v1, v0, Lcom/twitter/sdk/android/core/a/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/a/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a/a;
    :try_end_0
    .catch Lcom/google/a/t; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ld/l;)Lcom/twitter/sdk/android/core/r;
    .locals 2

    new-instance v0, Lcom/twitter/sdk/android/core/r;

    invoke-virtual {p0}, Ld/l;->b()Lb/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/r;-><init>(Lb/r;)V

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP request failed, Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ld/l;)Lcom/twitter/sdk/android/core/a/a;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ld/l;->e()Lb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lb/ac;->d()Lc/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e;->c()Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->u()Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/twitter/sdk/android/core/m;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Unexpected response"

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/twitter/sdk/android/core/m;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a/a;

    iget v0, v0, Lcom/twitter/sdk/android/core/a/a;->b:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ld/l;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->d:Ld/l;

    return-object v0
.end method
