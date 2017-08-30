.class public final Ld/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ld/j;

.field private b:Lb/e$a;

.field private c:Lb/s;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/Executor;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ld/j;->a()Ld/j;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/m$a;-><init>(Ld/j;)V

    return-void
.end method

.method constructor <init>(Ld/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/m$a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/m$a;->e:Ljava/util/List;

    iput-object p1, p0, Ld/m$a;->a:Ld/j;

    iget-object v0, p0, Ld/m$a;->d:Ljava/util/List;

    new-instance v1, Ld/a;

    invoke-direct {v1}, Ld/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lb/e$a;)Ld/m$a;
    .locals 1

    const-string v0, "factory == null"

    invoke-static {p1, v0}, Ld/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e$a;

    iput-object v0, p0, Ld/m$a;->b:Lb/e$a;

    return-object p0
.end method

.method public a(Lb/s;)Ld/m$a;
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Ld/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lb/s;->j()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ld/m$a;->c:Lb/s;

    return-object p0
.end method

.method public a(Lb/w;)Ld/m$a;
    .locals 1

    const-string v0, "client == null"

    invoke-static {p1, v0}, Ld/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e$a;

    invoke-virtual {p0, v0}, Ld/m$a;->a(Lb/e$a;)Ld/m$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ld/e$a;)Ld/m$a;
    .locals 2

    iget-object v0, p0, Ld/m$a;->d:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Ld/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ld/m$a;
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Ld/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lb/s;->e(Ljava/lang/String;)Lb/s;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Ld/m$a;->a(Lb/s;)Ld/m$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Ld/m;
    .locals 7

    iget-object v0, p0, Ld/m$a;->c:Lb/s;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Ld/m$a;->b:Lb/e$a;

    if-nez v1, :cond_1

    new-instance v1, Lb/w;

    invoke-direct {v1}, Lb/w;-><init>()V

    :cond_1
    iget-object v5, p0, Ld/m$a;->f:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_2

    iget-object v0, p0, Ld/m$a;->a:Ld/j;

    invoke-virtual {v0}, Ld/j;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Ld/m$a;->e:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Ld/m$a;->a:Ld/j;

    invoke-virtual {v0, v5}, Ld/j;->a(Ljava/util/concurrent/Executor;)Ld/c$a;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Ld/m$a;->d:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ld/m;

    iget-object v2, p0, Ld/m$a;->c:Lb/s;

    iget-boolean v6, p0, Ld/m$a;->g:Z

    invoke-direct/range {v0 .. v6}, Ld/m;-><init>(Lb/e$a;Lb/s;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method
