.class public abstract Lcom/digits/sdk/android/ak;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/sdk/android/core/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/digits/sdk/android/an;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/digits/sdk/android/an;)V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ak;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/digits/sdk/android/ak;->c:Lcom/digits/sdk/android/an;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 5

    iget-object v0, p0, Lcom/digits/sdk/android/ak;->c:Lcom/digits/sdk/android/an;

    invoke-interface {v0}, Lcom/digits/sdk/android/an;->d()Lcom/digits/sdk/android/bd;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/digits/sdk/android/at;->a(Lcom/digits/sdk/android/bd;Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;

    move-result-object v1

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v2, "Digits"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/p;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", API Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/digits/sdk/android/at;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", User Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/digits/sdk/android/at;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/digits/sdk/android/ak;->c:Lcom/digits/sdk/android/an;

    iget-object v0, p0, Lcom/digits/sdk/android/ak;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v2, v0, v1}, Lcom/digits/sdk/android/an;->a(Landroid/content/Context;Lcom/digits/sdk/android/at;)V

    return-void
.end method
