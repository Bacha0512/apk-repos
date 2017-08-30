.class Lcom/digits/sdk/android/au;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;


# instance fields
.field private b:Lcom/twitter/sdk/android/core/internal/scribe/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;-><init>()V

    const-string v1, "tfw"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    const-string v1, "digits"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sput-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V
    .locals 3

    iget-object v0, p0, Lcom/digits/sdk/android/au;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/au;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/sdk/android/core/internal/scribe/c;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a([Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/au;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/au;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    sget-object v1, Lcom/digits/sdk/android/av$b;->l:Lcom/digits/sdk/android/av$b;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$c;->j:Lcom/digits/sdk/android/av$c;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    const-string v1, "logged_in"

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/av$b;)V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$c;->j:Lcom/digits/sdk/android/av$c;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$a;->a:Lcom/digits/sdk/android/av$a;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/av$b;Lcom/digits/sdk/android/at;)V
    .locals 3

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$c;->j:Lcom/digits/sdk/android/av$c;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$a;->e:Lcom/digits/sdk/android/av$a;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/digits/sdk/android/at;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/av$b;Lcom/digits/sdk/android/av$a;)V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$c;->j:Lcom/digits/sdk/android/av$c;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/av$b;Lcom/digits/sdk/android/av$c;)V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$a;->d:Lcom/digits/sdk/android/av$a;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    return-void
.end method

.method a(Lcom/digits/sdk/android/av$b;Lcom/digits/sdk/android/av$c;Lcom/digits/sdk/android/av$a;Z)V
    .locals 3

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has_digits_session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/twitter/sdk/android/core/internal/scribe/a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "twitter scribe client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/digits/sdk/android/au;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    return-void
.end method

.method b(Lcom/digits/sdk/android/av$b;)V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$c;->j:Lcom/digits/sdk/android/av$c;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$a;->b:Lcom/digits/sdk/android/av$a;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    return-void
.end method

.method c(Lcom/digits/sdk/android/av$b;)V
    .locals 2

    sget-object v0, Lcom/digits/sdk/android/au;->a:Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    invoke-virtual {p1}, Lcom/digits/sdk/android/av$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$c;->j:Lcom/digits/sdk/android/av$c;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    sget-object v1, Lcom/digits/sdk/android/av$a;->c:Lcom/digits/sdk/android/av$a;

    invoke-virtual {v1}, Lcom/digits/sdk/android/av$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/c$a;->a()Lcom/twitter/sdk/android/core/internal/scribe/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;)V

    return-void
.end method
