.class public final Lcom/tapjoy/internal/ha;
.super Lcom/tapjoy/internal/gy;
.source "SourceFile"


# instance fields
.field public final c:Lcom/tapjoy/internal/gl$d$a;

.field private d:Lcom/tapjoy/internal/gl$i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tapjoy/internal/gy;-><init>()V

    .line 13
    invoke-static {}, Lcom/tapjoy/internal/gl$d;->e()Lcom/tapjoy/internal/gl$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ha;->c:Lcom/tapjoy/internal/gl$d$a;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/gl$i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/gl$c;)Z
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/gl$i;

    if-nez v0, :cond_1

    .line 18898
    iget-object v0, p1, Lcom/tapjoy/internal/gl$c;->c:Lcom/tapjoy/internal/gl$i;

    .line 23
    iput-object v0, p0, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/gl$i;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->c:Lcom/tapjoy/internal/gl$d$a;

    .line 20318
    if-nez p1, :cond_2

    .line 20319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19898
    :cond_1
    iget-object v0, p1, Lcom/tapjoy/internal/gl$c;->c:Lcom/tapjoy/internal/gl$i;

    .line 24
    iget-object v1, p0, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/gl$i;

    if-eq v0, v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 20321
    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$d$a;->e()V

    .line 20322
    iget-object v0, v0, Lcom/tapjoy/internal/gl$d$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/gl$i;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->d:Lcom/tapjoy/internal/gl$i;

    if-ne v0, v1, :cond_0

    const-string v0, "api/v1/usages"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "api/v1/cevs"

    goto :goto_0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/tapjoy/internal/gy;->e()Ljava/util/Map;

    move-result-object v0

    .line 38
    const-string v1, "events"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/ha;->c:Lcom/tapjoy/internal/gl$d$a;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gl$d$a;->d()Lcom/tapjoy/internal/gl$d;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$d;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method
