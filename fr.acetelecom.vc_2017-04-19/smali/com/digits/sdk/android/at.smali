.class public Lcom/digits/sdk/android/at;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final a:I

.field private final b:Lcom/digits/sdk/android/models/AuthConfigResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    new-instance v1, Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-direct {v1}, Lcom/digits/sdk/android/models/AuthConfigResponse;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;ILcom/digits/sdk/android/models/AuthConfigResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/digits/sdk/android/models/AuthConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/digits/sdk/android/at;->a:I

    iput-object p3, p0, Lcom/digits/sdk/android/at;->b:Lcom/digits/sdk/android/models/AuthConfigResponse;

    return-void
.end method

.method private static a(ILjava/lang/String;Lcom/digits/sdk/android/models/AuthConfigResponse;)Lcom/digits/sdk/android/at;
    .locals 1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/digits/sdk/android/v;

    invoke-direct {v0, p1, p0, p2}, Lcom/digits/sdk/android/v;-><init>(Ljava/lang/String;ILcom/digits/sdk/android/models/AuthConfigResponse;)V

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x11e

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/digits/sdk/android/bu;

    invoke-direct {v0, p1, p0, p2}, Lcom/digits/sdk/android/bu;-><init>(Ljava/lang/String;ILcom/digits/sdk/android/models/AuthConfigResponse;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/digits/sdk/android/at;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/digits/sdk/android/ch;

    invoke-direct {v0, p1, p0, p2}, Lcom/digits/sdk/android/ch;-><init>(Ljava/lang/String;ILcom/digits/sdk/android/models/AuthConfigResponse;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/digits/sdk/android/at;

    invoke-direct {v0, p1, p0, p2}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;ILcom/digits/sdk/android/models/AuthConfigResponse;)V

    goto :goto_0
.end method

.method public static a(Lcom/digits/sdk/android/bd;Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;
    .locals 3

    instance-of v0, p1, Lcom/twitter/sdk/android/core/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twitter/sdk/android/core/m;

    invoke-static {p0, p1}, Lcom/digits/sdk/android/at;->a(Lcom/digits/sdk/android/bd;Lcom/twitter/sdk/android/core/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->d()Ld/l;

    move-result-object v1

    invoke-static {v1}, Lcom/digits/sdk/android/at;->a(Ld/l;)Lcom/digits/sdk/android/models/AuthConfigResponse;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->b()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/digits/sdk/android/at;->a(ILjava/lang/String;Lcom/digits/sdk/android/models/AuthConfigResponse;)Lcom/digits/sdk/android/at;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/p;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/digits/sdk/android/at;

    invoke-interface {p0}, Lcom/digits/sdk/android/bd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/digits/sdk/android/at;

    invoke-interface {p0}, Lcom/digits/sdk/android/bd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/at;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ld/l;)Lcom/digits/sdk/android/models/AuthConfigResponse;
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

    invoke-static {v0}, Lcom/digits/sdk/android/at;->a(Ljava/lang/String;)Lcom/digits/sdk/android/models/AuthConfigResponse;
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

    const-string v3, "Unexpected response"

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/AuthConfigResponse;-><init>()V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/digits/sdk/android/models/AuthConfigResponse;
    .locals 5

    new-instance v0, Lcom/google/a/f;

    invoke-direct {v0}, Lcom/google/a/f;-><init>()V

    :try_start_0
    const-class v1, Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/AuthConfigResponse;
    :try_end_0
    .catch Lcom/google/a/t; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Digits"

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

    new-instance v0, Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/AuthConfigResponse;-><init>()V

    goto :goto_0
.end method

.method private static a(Lcom/digits/sdk/android/bd;Lcom/twitter/sdk/android/core/m;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->b()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/digits/sdk/android/bd;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x10d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xeb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xed

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/digits/sdk/android/at;->a:I

    return v0
.end method

.method public b()Lcom/digits/sdk/android/models/AuthConfigResponse;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/at;->b:Lcom/digits/sdk/android/models/AuthConfigResponse;

    return-object v0
.end method
