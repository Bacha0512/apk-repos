.class Lcom/digits/sdk/android/be;
.super Lcom/digits/sdk/android/as;


# static fields
.field static final a:Lcom/digits/sdk/android/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/be;

    invoke-direct {v0}, Lcom/digits/sdk/android/be;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/be;->a:Lcom/digits/sdk/android/be;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/as;-><init>()V

    return-void
.end method

.method private a(ZLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Incomplete DigitsEventDetails object %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/a/a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/b;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/c;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/d;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/e;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/digits/sdk/android/a/g;)V
    .locals 2

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->d:Lcom/digits/sdk/android/at;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DigitsException cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/i;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/j;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/k;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/digits/sdk/android/a/g;)V
    .locals 2

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->d:Lcom/digits/sdk/android/at;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DigitsException cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/digits/sdk/android/as;->c(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/digits/sdk/android/as;->h(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/be;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
