.class public abstract Lcom/tapjoy/internal/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/bo;
.implements Lcom/tapjoy/internal/bt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/br$1;,
        Lcom/tapjoy/internal/br$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/tapjoy/internal/br;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/br$a;->a()Lcom/tapjoy/internal/br$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/br$a;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/br;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->f()V

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/internal/br;->u()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->g()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/br;
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/br$a;->a()Lcom/tapjoy/internal/br$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/br$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/br;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tapjoy/internal/bz;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/bz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private t()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bw;->i:Lcom/tapjoy/internal/bw;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->o()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/br$1;->a:[I

    invoke-virtual {v0}, Lcom/tapjoy/internal/bw;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a value but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->c()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->d()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->o()V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/tapjoy/internal/cm;

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/cm;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/br;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/br;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/tapjoy/internal/bm;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->f()V

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->g()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->h()V

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tapjoy/internal/br;->u()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->i()V

    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bw;->c:Lcom/tapjoy/internal/bw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/br;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/br;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/br;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/br;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method public final e()Ljava/net/URL;
    .locals 2

    const-string v0, "BASE_URI"

    invoke-interface {p0, v0}, Lcom/tapjoy/internal/bo;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/br;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/tapjoy/internal/br;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
