.class public final Lcom/tapjoy/internal/gs;
.super Lcom/tapjoy/internal/gp;


# instance fields
.field private final c:Lcom/tapjoy/internal/gd$l;

.field private final d:Lcom/tapjoy/internal/gd$a;

.field private final e:Lcom/tapjoy/internal/gd$z;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/gd$l;Lcom/tapjoy/internal/gd$a;Lcom/tapjoy/internal/gd$z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/gp;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gs;->c:Lcom/tapjoy/internal/gd$l;

    iput-object p2, p0, Lcom/tapjoy/internal/gs;->d:Lcom/tapjoy/internal/gd$a;

    iput-object p3, p0, Lcom/tapjoy/internal/gs;->e:Lcom/tapjoy/internal/gd$z;

    iput-object p4, p0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/gd$n;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    iget-object v1, p1, Lcom/tapjoy/internal/gd$n;->d:Lcom/tapjoy/internal/gd$a;

    iget-object v2, p1, Lcom/tapjoy/internal/gd$n;->e:Lcom/tapjoy/internal/gd$z;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/tapjoy/internal/gs;-><init>(Lcom/tapjoy/internal/gd$l;Lcom/tapjoy/internal/gd$a;Lcom/tapjoy/internal/gd$z;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "api/v1/tokens"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    invoke-super {p0}, Lcom/tapjoy/internal/gp;->e()Ljava/util/Map;

    move-result-object v1

    const-string v0, "info"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gs;->c:Lcom/tapjoy/internal/gd$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gs;->d:Lcom/tapjoy/internal/gd$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gs;->e:Lcom/tapjoy/internal/gd$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$z;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "push_token"

    iget-object v2, p0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
