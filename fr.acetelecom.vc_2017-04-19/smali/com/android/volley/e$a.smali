.class Lcom/android/volley/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/e;

.field private final b:Lcom/android/volley/l;

.field private final c:Lcom/android/volley/n;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/e;Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/e$a;->a:Lcom/android/volley/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    iput-object p3, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iput-object p4, p0, Lcom/android/volley/e$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    invoke-virtual {v0}, Lcom/android/volley/l;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    invoke-virtual {v0}, Lcom/android/volley/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    iget-object v1, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-object v1, v1, Lcom/android/volley/n;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-boolean v0, v0, Lcom/android/volley/n;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/volley/e$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/e$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    iget-object v1, p0, Lcom/android/volley/e$a;->c:Lcom/android/volley/n;

    iget-object v1, v1, Lcom/android/volley/n;->c:Lcom/android/volley/s;

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->b(Lcom/android/volley/s;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/volley/e$a;->b:Lcom/android/volley/l;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/android/volley/l;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
