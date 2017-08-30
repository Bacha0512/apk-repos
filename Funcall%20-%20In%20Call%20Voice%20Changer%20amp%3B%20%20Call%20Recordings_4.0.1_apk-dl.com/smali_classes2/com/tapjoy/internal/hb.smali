.class public final Lcom/tapjoy/internal/hb;
.super Lcom/tapjoy/internal/gy;
.source "SourceFile"


# instance fields
.field private final c:Lcom/tapjoy/internal/gl$l;

.field private final d:Lcom/tapjoy/internal/gl$a;

.field private final e:Lcom/tapjoy/internal/gl$z;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tapjoy/internal/gy;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tapjoy/internal/hb;->c:Lcom/tapjoy/internal/gl$l;

    .line 22
    iput-object p2, p0, Lcom/tapjoy/internal/hb;->d:Lcom/tapjoy/internal/gl$a;

    .line 23
    iput-object p3, p0, Lcom/tapjoy/internal/hb;->e:Lcom/tapjoy/internal/gl$z;

    .line 24
    iput-object p4, p0, Lcom/tapjoy/internal/hb;->f:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/gl$n;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 32
    .line 10385
    iget-object v0, p1, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 10400
    iget-object v1, p1, Lcom/tapjoy/internal/gl$n;->d:Lcom/tapjoy/internal/gl$a;

    .line 10415
    iget-object v2, p1, Lcom/tapjoy/internal/gl$n;->e:Lcom/tapjoy/internal/gl$z;

    .line 32
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/tapjoy/internal/hb;-><init>(Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$z;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "api/v1/tokens"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Lcom/tapjoy/internal/gy;->e()Ljava/util/Map;

    move-result-object v1

    .line 43
    const-string v0, "info"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/hb;->c:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "app"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/hb;->d:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "user"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/hb;->e:Lcom/tapjoy/internal/gl$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$z;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/hb;->f:Ljava/lang/String;

    .line 11014
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 46
    :goto_0
    if-nez v0, :cond_1

    .line 47
    const-string v0, "push_token"

    iget-object v2, p0, Lcom/tapjoy/internal/hb;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    return-object v1

    .line 11014
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
