.class Lcom/digits/sdk/android/ax$a;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digits/sdk/android/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/digits/sdk/android/models/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/digits/sdk/android/ce;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/digits/sdk/android/ce;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/ax$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lcom/digits/sdk/android/ax$a;->b:Lcom/twitter/sdk/android/core/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/digits/sdk/android/models/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/digits/sdk/android/models/k;

    invoke-static {v0}, Lcom/digits/sdk/android/aw;->a(Lcom/digits/sdk/android/models/k;)Lcom/digits/sdk/android/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/ax$a;->b:Lcom/twitter/sdk/android/core/k;

    invoke-virtual {v1}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/k;->c(J)Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/aw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/digits/sdk/android/ax$a;->b:Lcom/twitter/sdk/android/core/k;

    invoke-virtual {v1}, Lcom/digits/sdk/android/aw;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v1}, Lcom/twitter/sdk/android/core/k;->a(JLcom/twitter/sdk/android/core/j;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ax$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/ce;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/digits/sdk/android/ce;->a(Lcom/digits/sdk/android/aw;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 0

    return-void
.end method
