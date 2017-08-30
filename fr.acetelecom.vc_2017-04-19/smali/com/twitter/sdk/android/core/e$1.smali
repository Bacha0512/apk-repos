.class Lcom/twitter/sdk/android/core/e$1;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/twitter/sdk/android/core/e;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/e$1;->b:Lcom/twitter/sdk/android/core/e;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/e$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e$1;->b:Lcom/twitter/sdk/android/core/e;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/e;->a(Lcom/twitter/sdk/android/core/e;)Lcom/twitter/sdk/android/core/k;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/d;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/d;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    invoke-interface {v1, v2}, Lcom/twitter/sdk/android/core/k;->a(Lcom/twitter/sdk/android/core/j;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e$1;->b:Lcom/twitter/sdk/android/core/e;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/e;->a(Lcom/twitter/sdk/android/core/e;)Lcom/twitter/sdk/android/core/k;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/k;->b(J)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
