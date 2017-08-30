.class public Lcom/twitter/sdk/android/core/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/k;
.implements Lcom/google/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/k",
        "<",
        "Lcom/twitter/sdk/android/core/a;",
        ">;",
        "Lcom/google/a/s",
        "<",
        "Lcom/twitter/sdk/android/core/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/sdk/android/core/a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/b;->a:Ljava/util/Map;

    sget-object v0, Lcom/twitter/sdk/android/core/b;->a:Ljava/util/Map;

    const-string v1, "oauth1a"

    const-class v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/sdk/android/core/b;->a:Ljava/util/Map;

    const-string v1, "oauth2"

    const-class v2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/sdk/android/core/b;->a:Ljava/util/Map;

    const-string v1, "guest"

    const-class v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/f;

    invoke-direct {v0}, Lcom/google/a/f;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/b;->b:Lcom/google/a/f;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/sdk/android/core/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/twitter/sdk/android/core/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/a;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;
    .locals 3

    new-instance v0, Lcom/google/a/o;

    invoke-direct {v0}, Lcom/google/a/o;-><init>()V

    const-string v1, "auth_type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/sdk/android/core/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auth_token"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/b;->b:Lcom/google/a/f;

    invoke-virtual {v2, p1}, Lcom/google/a/f;->a(Ljava/lang/Object;)Lcom/google/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/o;->a(Ljava/lang/String;Lcom/google/a/l;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;
    .locals 1

    check-cast p1, Lcom/twitter/sdk/android/core/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/a;Ljava/lang/reflect/Type;Lcom/google/a/r;)Lcom/google/a/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Lcom/twitter/sdk/android/core/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/p;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/a/l;->k()Lcom/google/a/o;

    move-result-object v0

    const-string v1, "auth_type"

    invoke-virtual {v0, v1}, Lcom/google/a/o;->b(Ljava/lang/String;)Lcom/google/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/q;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v0, v2}, Lcom/google/a/o;->a(Ljava/lang/String;)Lcom/google/a/l;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/sdk/android/core/b;->b:Lcom/google/a/f;

    sget-object v0, Lcom/twitter/sdk/android/core/b;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v3, v2, v0}, Lcom/google/a/f;->a(Lcom/google/a/l;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a;

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/p;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/b;->a(Lcom/google/a/l;Ljava/lang/reflect/Type;Lcom/google/a/j;)Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    return-object v0
.end method
