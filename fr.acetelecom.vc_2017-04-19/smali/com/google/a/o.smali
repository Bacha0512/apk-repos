.class public final Lcom/google/a/o;
.super Lcom/google/a/l;


# instance fields
.field private final a:Lcom/google/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    new-instance v0, Lcom/google/a/b/g;

    invoke-direct {v0}, Lcom/google/a/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/google/a/l;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/a/n;->a:Lcom/google/a/n;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/q;

    invoke-direct {v0, p1}, Lcom/google/a/q;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/a/l;
    .locals 1

    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    invoke-virtual {v0, p1}, Lcom/google/a/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/a/l;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/a/n;->a:Lcom/google/a/n;

    :cond_0
    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/a/o;->a(Ljava/lang/Object;)Lcom/google/a/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/o;->a(Ljava/lang/String;Lcom/google/a/l;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/a/q;
    .locals 1

    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    invoke-virtual {v0, p1}, Lcom/google/a/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/q;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/a/o;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/a/o;

    iget-object v0, p1, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    iget-object v1, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    invoke-virtual {v0, v1}, Lcom/google/a/b/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    invoke-virtual {v0}, Lcom/google/a/b/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/l;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/o;->a:Lcom/google/a/b/g;

    invoke-virtual {v0}, Lcom/google/a/b/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
