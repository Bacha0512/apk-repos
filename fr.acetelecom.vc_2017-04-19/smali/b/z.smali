.class public final Lb/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/z$a;
    }
.end annotation


# instance fields
.field private final a:Lb/s;

.field private final b:Ljava/lang/String;

.field private final c:Lb/r;

.field private final d:Lb/aa;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lb/d;


# direct methods
.method private constructor <init>(Lb/z$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/z$a;->a(Lb/z$a;)Lb/s;

    move-result-object v0

    iput-object v0, p0, Lb/z;->a:Lb/s;

    invoke-static {p1}, Lb/z$a;->b(Lb/z$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/z;->b:Ljava/lang/String;

    invoke-static {p1}, Lb/z$a;->c(Lb/z$a;)Lb/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/r$a;->a()Lb/r;

    move-result-object v0

    iput-object v0, p0, Lb/z;->c:Lb/r;

    invoke-static {p1}, Lb/z$a;->d(Lb/z$a;)Lb/aa;

    move-result-object v0

    iput-object v0, p0, Lb/z;->d:Lb/aa;

    invoke-static {p1}, Lb/z$a;->e(Lb/z$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lb/z$a;->e(Lb/z$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lb/z;->e:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lb/z$a;Lb/z$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/z;-><init>(Lb/z$a;)V

    return-void
.end method

.method static synthetic a(Lb/z;)Lb/s;
    .locals 1

    iget-object v0, p0, Lb/z;->a:Lb/s;

    return-object v0
.end method

.method static synthetic b(Lb/z;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lb/z;)Lb/aa;
    .locals 1

    iget-object v0, p0, Lb/z;->d:Lb/aa;

    return-object v0
.end method

.method static synthetic d(Lb/z;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/z;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lb/z;)Lb/r;
    .locals 1

    iget-object v0, p0, Lb/z;->c:Lb/r;

    return-object v0
.end method


# virtual methods
.method public a()Lb/s;
    .locals 1

    iget-object v0, p0, Lb/z;->a:Lb/s;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/z;->c:Lb/r;

    invoke-virtual {v0, p1}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lb/r;
    .locals 1

    iget-object v0, p0, Lb/z;->c:Lb/r;

    return-object v0
.end method

.method public d()Lb/aa;
    .locals 1

    iget-object v0, p0, Lb/z;->d:Lb/aa;

    return-object v0
.end method

.method public e()Lb/z$a;
    .locals 2

    new-instance v0, Lb/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/z$a;-><init>(Lb/z;Lb/z$1;)V

    return-object v0
.end method

.method public f()Lb/d;
    .locals 1

    iget-object v0, p0, Lb/z;->f:Lb/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/z;->c:Lb/r;

    invoke-static {v0}, Lb/d;->a(Lb/r;)Lb/d;

    move-result-object v0

    iput-object v0, p0, Lb/z;->f:Lb/d;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/z;->a:Lb/s;

    invoke-virtual {v0}, Lb/s;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/z;->a:Lb/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lb/z;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lb/z;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
