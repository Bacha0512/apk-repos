.class public final Lcom/tapjoy/internal/gr;
.super Lcom/tapjoy/internal/gp;


# instance fields
.field public final c:Lcom/tapjoy/internal/gd$d$a;

.field private d:Lcom/tapjoy/internal/gd$i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gp;-><init>()V

    invoke-static {}, Lcom/tapjoy/internal/gd$d;->e()Lcom/tapjoy/internal/gd$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->c:Lcom/tapjoy/internal/gd$d$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/gd$i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/gd$c;)Z
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/gd$i;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/tapjoy/internal/gd$c;->c:Lcom/tapjoy/internal/gd$i;

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/gd$i;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gr;->c:Lcom/tapjoy/internal/gd$d$a;

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p1, Lcom/tapjoy/internal/gd$c;->c:Lcom/tapjoy/internal/gd$i;

    iget-object v1, p0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/gd$i;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$d$a;->e()V

    iget-object v0, v0, Lcom/tapjoy/internal/gd$d$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "api/v1/cevs"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    invoke-super {p0}, Lcom/tapjoy/internal/gp;->e()Ljava/util/Map;

    move-result-object v0

    const-string v1, "events"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gr;->c:Lcom/tapjoy/internal/gd$d$a;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gd$d$a;->d()Lcom/tapjoy/internal/gd$d;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$d;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
