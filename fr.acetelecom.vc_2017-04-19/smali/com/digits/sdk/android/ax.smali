.class Lcom/digits/sdk/android/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/ax$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/digits/sdk/android/ax$a;


# direct methods
.method constructor <init>()V
    .locals 3

    new-instance v0, Lcom/digits/sdk/android/ax$a;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/ax$a;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/k;)V

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/ax;-><init>(Lcom/digits/sdk/android/ax$a;)V

    return-void
.end method

.method constructor <init>(Lcom/digits/sdk/android/ax$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/ax;->a:Lcom/digits/sdk/android/ax$a;

    return-void
.end method


# virtual methods
.method a()Lcom/digits/sdk/android/UserAuthApiInterface;
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->k()Lcom/digits/sdk/android/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/aj;->a()Lcom/digits/sdk/android/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/UserAuthApiInterface;

    return-object v0
.end method

.method public a(Lcom/twitter/sdk/android/core/j;)V
    .locals 2

    instance-of v0, p1, Lcom/digits/sdk/android/aw;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/ax;->a()Lcom/digits/sdk/android/UserAuthApiInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/digits/sdk/android/UserAuthApiInterface;->verifyAccount()Ld/b;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/ax;->a:Lcom/digits/sdk/android/ax$a;

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    :cond_0
    return-void
.end method
