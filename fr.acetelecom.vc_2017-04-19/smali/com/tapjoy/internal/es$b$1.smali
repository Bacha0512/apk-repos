.class final Lcom/tapjoy/internal/es$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/es$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/tapjoy/internal/es$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/es$b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/es$b$1;->b:Lcom/tapjoy/internal/es$b;

    iput-object p2, p0, Lcom/tapjoy/internal/es$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/tapjoy/internal/es$b$1;->b:Lcom/tapjoy/internal/es$b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/es$b;->a(Lcom/tapjoy/internal/es$b;Z)Z

    iget-object v0, p0, Lcom/tapjoy/internal/es$b$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
