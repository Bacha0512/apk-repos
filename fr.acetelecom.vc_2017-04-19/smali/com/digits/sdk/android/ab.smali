.class Lcom/digits/sdk/android/ab;
.super Lcom/digits/sdk/android/as;


# static fields
.field static final a:Lcom/digits/sdk/android/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/ab;

    invoke-direct {v0}, Lcom/digits/sdk/android/ab;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/ab;->a:Lcom/digits/sdk/android/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/as;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "DefaultStdOutLogger"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V
    .locals 4

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "DefaultStdOutLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/digits/sdk/android/a/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "loginBegin"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "phoneNumberSubmit"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public b(Lcom/digits/sdk/android/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "phoneNumberSuccess"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public d(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "confirmationCodeSubmit"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public e(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "loginSuccess"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public f(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "phoneNumberImpression"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public g(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "confirmationCodeImpression"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public h(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "confirmationCodeSuccess"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public i(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "twoFactorPinImpression"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public j(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "twoFactorPinSubmit"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public k(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "twoFactorPinSuccess"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public l(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "emailImpression"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public m(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "emailSubmit"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public n(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "emailSuccess"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public o(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "failureImpression"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public p(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "failureRetryClick"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public q(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "failureDismissClick"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method

.method public r(Lcom/digits/sdk/android/a/f;)V
    .locals 1

    const-string v0, "loginFailure"

    invoke-direct {p0, v0, p1}, Lcom/digits/sdk/android/ab;->a(Ljava/lang/String;Lcom/digits/sdk/android/a/f;)V

    return-void
.end method
