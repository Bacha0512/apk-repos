.class public Lcom/android/volley/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/volley/e$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/e$1;-><init>(Lcom/android/volley/e;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/l;Lcom/android/volley/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l",
            "<*>;",
            "Lcom/android/volley/n",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/e;->a(Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l",
            "<*>;",
            "Lcom/android/volley/n",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/volley/l;->u()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/volley/e$a;-><init>(Lcom/android/volley/e;Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/android/volley/l;Lcom/android/volley/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l",
            "<*>;",
            "Lcom/android/volley/s;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/volley/e$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/volley/e$a;-><init>(Lcom/android/volley/e;Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
